<?php 
// Note: this file should NOT be shared publically
$connection = mysqli_connect('localhost','root','mjcsen2245');
if (!$connection) {
  die('Could not connect: ' . mysqli_error($connection));
}

// Select a database to use
$db_select = mysqli_select_db($connection, "bitnami_limesurvey");
if (!$db_select) {
  die("Database selection failed: " . mysqli_error());
}
?>