test3
<?php
$mytext = $_GET['name'];
// based on http://stackoverflow.com/questions/15637101/using-ajax-to-pass-variable-to-php-and-retrieve-those-using-ajax-again
 // $sql="SELECT * FROM <tablname> where color='".$userAnswer."'" ;
 

include 'connect_to_db.php';

  $sql="SELECT token FROM bitnami_limesurvey.lime_tokens_762974 where attribute_1='".$mytext."';";
  // $result=mysql_query($sql);
  $result = mysqli_query($connection,$sql);
  // $row=mysql_fetch_array($result);
  $row=mysqli_fetch_assoc($result);
  // for first row only and suppose table having data
//   echo json_encode($row);  // pass array in json_encode  
?>

The token: <?=$row['token']?><br />

<?php
echo ("From PHP: $row");
echo ($mytext);

// close mysql connection
mysqli_close();
?> 
 