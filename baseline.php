<?php
include 'conn.php';//connection file
$selectedsystemid="0";//choosen system id
$selectedprojectId="0";//choosen project id
$selectedrequirementId="0";//choosen requirement id
$selectedfileid="0";//selected file id
?>
<!DOCTYPE HTML>
<html>
<head>
	<title>BASELINE </title>
	<style>//css file
     body {
    margin:0px;
}
   body {
    margin:0px;
}
header{
	padding:10px;
	color:darkblue;
	background-color: lightblue;
	position:fixed;
	width:100%;
	z-index:1000;
}
 
 
nav {
	float:left;
	padding:20px;
	padding-top:100px;
	color:white;
	background-color:#1fb2b2;
	width:15%;
	height:84.3%;
	position:fixed;
	z-index:999;
    }
form{
	position:absolute;
	top:25%;
	left:25%;
 
}
h2  {
	margin:10px;
	margin-left:300px;
	text-align:center;
	font-family:times; 
    }
a   { 
    margin:10px;
	line-height:60px;
	font-size:22px;
	text-decoration:none;
	color:white;
        background color:#1fb2b2;
transition: transform 0.3s, opacity 0.3s;
    }
 
#name{
	float:right;
	padding:5px 20px 0px 0px;
	width:200px; height:20px;
	font: bold 15px verdana;
	text-align:right;
    }
#time{
	float:left;
	left:1180px;
	margin-top:80px;	
	font: bold 14px verdana;
	text-align:right;
	position:fixed;
}
#logout{
	float:right;
	padding:5px;
	width:100px; height:30px;
	font: bold 15px verdana;
	border-radius:5px;
	margin-right:30px;
}
select {
  font-family: Cursive;
  position: relative; /* Enable absolute positioning for children and pseudo elements */
    width: 200px;
    padding: 10px;
    margin: 0 auto;
 
    /* Styles */
    background:#1fb2b2;
    color:white;
    outline: none;
    cursor: pointer;
 
    /* Font settings */
    font-weight: bold;
}
 
option
{
color: black;
font-family: Cursive;
 
}
 
 
 
 
    </style>
 
</head>
 
<body onload=display_ct();>
    	<header>
	        	<button id="logout" onclick="<?php //mysql_close($link);?>">Logout</button>
      		         <label id="name">Hi <?php echo $username;?></label>
             	<h2>DESIGN MANAGEMENT SYSTEM  </h2>
 
 
	    </header>
	<label id='time' ></label>
    	<nav>
	         	  <ul style="list-style:none;">
			          <li><a href="first.php">Home</a></li>
			    </br>
      			<li>
                <a href="baseline_filter.php">Filter</a></li>
 
     	     	</ul>
	    </nav>
 
 
<form method="POST" action="baseline.php">
 
    <br>
<select name="SM_SystemID" onchange="this.form.submit()" >
 
<option selected disabled value>Select System ID</option>//default view
 
<?php
 
    $sql="select SM_SystemID,SM_SysName from system";//choosing system id
$val1=$_POST['SM_SystemID'];
	$result=mysql_query($sql);
	while ($row = mysql_fetch_array($result)) {
 
		  echo "<option value=\"".$row["SM_SystemID"]."\"";
              if($val1 == $row['SM_SystemID'])
                   { 
				    echo 'selected';
 
					}
              echo ">".$row["SM_SysName"]."</option>";   }
	echo '</select>';
  if(isset($_POST['SM_SystemID']))
         {
     		$selectedsystemid=$_POST['SM_SystemID'];
        	}
   else
     {
 
             }
?>
<noscript><input type="submit" value="submit"></noscript>
 
 
<select name='Proj_Id' onchange="this.form.submit()"">
 
<option selected disabled value>Select Project_id</option>
<?php
 
	$sql=" select Proj_Id,Proj_Name from project where Sys_Id='$selectedsystemid'";//selecting project id
        $val2=$_POST['Proj_Id'];
	$result=mysql_query($sql);
	while ($row = mysql_fetch_array($result)) 
	 {
		echo "<option value=\"".$row["Proj_Id"]."\"";
		 if($val2==$row['Proj_Id'])
		     echo 'selected';
	 	echo ">".$row["Proj_Name"]."</option>";
	 }
	echo '</select>';
	if(isset($_POST['Proj_Id']))
     {
 
		$selectedprojectId=$_POST['Proj_Id'];
	 }
?>
<noscript><input type="submit" value="submit"></noscript>
 
 
<select name='R_id' onchange="this.form.submit()"">
 
    <option selected disabled value>Select Requirement_Id </option>
<?php
 
   $sql="select R_id,Emp_id from baseline where Project_id='$selectedprojectId'";//selection of particular requirement
    $result=mysql_query($sql);
$val3=$_POST['R_id'];
while ($row = mysql_fetch_array($result))
   {
     echo "<option value=\"".$row['R_id']."\"";
     if($val3==$row['R_id'])
      echo 'selected';    
   echo ">".$row["Emp_id"]."</option>";
    }
   echo "</select>";
   if(isset($_POST['R_id']))  
   {
	$selectedrequirementId=$_POST['R_id'];
    }
?>
<noscript><input type="submit" value="submit"></noscript>
 
 
<select name='fileid' onchange="this.form.submit()"">
<option selected disabled value>Select File</option>
<?php
$sql="select fileid,filename from file where reqid='$selectedrequirementId'";//selecting file id for requirement
$result=mysql_query($sql);
$val4=$_POST['fileid'];
  while ($row = mysql_fetch_array($result))
  {
      echo "<option value=\"".$row['fileid']."\"";
      if($val4==$row['fileid']) 
	          echo 'selected'; 
                   echo">".$row['filename']."</option>";
 
   }
echo "</select>";
if(isset($_POST['fileid'])) 
   {
	  $selectedfileid=$_POST['fileid'];
 
     }
else
 {
  // echo " No such version exist or reselect file!";
    }
 
?>
<noscript><input type="submit" value="submit"></noscript><br>
 
<?php
$sql="SELECT image FROM file where fileid='$selectedfileid'";//finding path for file                                            
$result=mysql_query($sql);
while ($row = mysql_fetch_array ($result))
    {
       if($row['image']!=NULL)
             { 
             	   echo "<a href='".$row['image']."'></a>"; 
                     break;       
	          }
        else
            { 
               echo "No selectedfileid is found for selected file!";                     
              }
     }
       //echo "File Name:".$row['filename'] ."-----Hours: ".$row['hours']."-------Comment:".$row['comment']." ";
 
if(strpos($row['image'],'.mp3')!==false||strpos($row['image'],'.wav')!==false)//for image
 {
 
            echo "<br><br>";
            echo "<audio controls>";
            echo "<source src=\"".$row['image']."\" type=\"audio/mpeg\">";
		    echo "<source src=\"".$row['image']."\" type=\"audio/wav\">";
             echo "</audio>" ;
    }
 
if(strpos($row['image'],'.mp4')!==false||strpos($row['image'],'.oggv')!==false||strpos($row['image'],'.webm')!==false)//for video
  {
 
        echo"<br>";
        echo"<video width=\"820\" height=\"340\" controls>
           <source src=\"".$row['image']."\" type=\"video/mp4\">
		   <source src=\"".$row['image']."\" type=\"video/oggv\">
		   <source src=\"".$row['image']."\" type=\"video/webm\">
           Your browser does not support HTML5 video.
        </video>";
              }
 
 
 
else if(strpos($row['image'],'.pdf')!==false)//for pdf
 {
   header('Content-type: application/pdf');
      readfile($row['image']);
 
}
 
else  if(strpos($row['image'],'.jpg')||strpos($row['image'],'.png')!==false||strpos($row['image'],'.JPG')!==false||strpos($row['image'],'.PNG')!==false)//for image
      {
    	echo "<br>";
	  echo "<img src=\"".$row['image']."\" height=\"400\" width=\"810\">";
      }
?>                                 
</form>
</body>
</html>