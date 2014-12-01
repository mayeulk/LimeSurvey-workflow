<?php
//    print_r($_POST);
$country = $_POST['country'];
$role = $_POST['role'];
$token = $_POST['token'];
$surveyid =  $_POST['surveyid'];
$groupid =  $_POST['groupid'];
// $questionid =  $_POST['questionid'];

echo "From checks_contributor_rights_for_group.PHP file: the survey is $surveyid";
echo "</pre>";

 
 $connection = mysqli_connect(localhost,'root','mjcsen2245');
if (!$connection) {
  die('Could not connect: ' . mysqli_error($connection));
}

// Select a database to use
$db_select = mysqli_select_db($connection, "bitnami_limesurvey");
if (!$db_select) {
die("Database selection failed: " . mysqli_error());
}

  $sql="
SELECT CONCAT(
CAST(sid AS CHAR(7)), 'X',
CAST(gid AS CHAR(4)), 'X',
CAST(qid AS CHAR(4)),
title -- could be e.g. rightsresearcher. This is the title of a subquestion of a multiple checkbox question, eg '662654X14X57'
) AS SGQ  -- eg '662654X14X57rightsresearcher'

FROM bitnami_limesurvey.lime_questions
-- lime_survey_662654
WHERE
sid= ".$surveyid." -- current surveyid
AND gid = ".$groupid."   -- CURRENT GROUPID to set based on answer from AJAX call
AND title like 'rights".$role."' -- this requires to add rightsresearcher at the name of the question code which contains the rights 

;';";
  // $result=mysql_query($sql);
  $result = mysqli_query($connection,$sql);
  // $row=mysql_fetch_array($result);
  $questionid_with_rights=mysqli_fetch_assoc($result);
  // for first row only and suppose table having data
//   echo json_encode($row);  // pass array in json_encode  

echo "questionid_with_rights".$questionid_with_rights
 
 
// we need another query looking for the value of the checkbox itself in the  lime_survey_662654 table, for the current user (token is needed here this time)
 
 


?> 