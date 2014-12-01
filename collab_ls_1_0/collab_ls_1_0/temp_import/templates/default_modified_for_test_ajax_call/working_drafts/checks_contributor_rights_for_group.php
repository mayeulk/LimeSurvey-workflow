<?php
    // print_r($_POST);
    // echo "test from PHP";
$country = $_POST['country'];
$resource = $_POST['resource'];
$role = $_POST['role'];
$token = $_POST['token'];
$surveyid =  $_POST['surveyid'];
$groupid =  $_POST['groupid'];
$questionid =  $_POST['questionid'];

// echo "From checks_contributor_rights_for_group.PHP file: the survey is $surveyid";


 
include 'connect_to_db.php';

  $sql_questionid="
SELECT CONCAT(
CAST(sid AS CHAR(7)), 'X',
CAST(gid AS CHAR(4)), 'X',
-- CAST(qid AS CHAR(4)),
CAST(parent_qid AS CHAR(4)),
title -- TEST2 could be e.g. rightsresearcher. This is the title of a subquestion of a multiple checkbox question, eg '662654X14X57'
) AS SGQ  -- eg '662654X14X57rightsresearcher'

FROM bitnami_limesurvey.lime_questions
-- lime_survey_662654
WHERE
sid= ".$surveyid." -- current surveyid
AND gid = ".$groupid."   -- CURRENT GROUPID to set based on answer from AJAX call
AND title like 'rights".$role."' -- this requires to add rightsresearcher at the name of the question code which contains the rights
;";
  // $result=mysql_query($sql);
  $result = mysqli_query($connection,$sql_questionid);
   if (!$result) { // the query failed
    die('Invalid query: ' . mysql_error());
    }
  //$questionid_with_rights=mysql_fetch_array($result);
  // print_r($result);
  $row=mysqli_fetch_assoc($result);
  $questionid_with_rights= $row['SGQ'];
  
// echo "questionid_with_rights: ".$questionid_with_rights;
 /////////////////////////
 // the answer to the 3rd question is in the survey of the supervisor, so before we need her token to identify the record
$sql_token_supervisor="
SELECT token
FROM bitnami_limesurvey.lime_tokens_".$surveyid." 
WHERE attribute_8 = '".$country."'
AND attribute_9 = '".$resource."'
AND attribute_1 = 'supervisor' 
;";

// echo "   $sql_token_supervisor";

 $result = mysqli_query($connection, $sql_token_supervisor);
   if (!$result) { // the query failed
    die('Invalid query: ' . mysql_error());
    }
  //$questionid_with_rights=mysql_fetch_array($result);
  // print_r($result);
  $row=mysqli_fetch_assoc($result);
  $token_supervisor= $row['token'];
  // echo "token_supervisor=".$token_supervisor;

 
 
// we need another query looking for the value of the checkbox itself in the  lime_survey_662654 table,
// for the current user (selected thanks to the value of $questionid_with_rights); but using the token of the supervisor

  $sql_rights="
SELECT ".$questionid_with_rights."
FROM bitnami_limesurvey.lime_survey_".$surveyid." 
WHERE token = 'ef'; -- '".$token_supervisor."' ;";

//echo $sql_rights;

  // $result=mysql_query($sql);
  $result = mysqli_query($connection,$sql_rights);
   if (!$result) { // the query failed
    die('Invalid query: ' . mysql_error());
    }
  //$questionid_with_rights=mysql_fetch_array($result);
  // print_r($result);
  $row=mysqli_fetch_assoc($result);
  $rights= $row[$questionid_with_rights];
  
 echo "rights: ".$rights;
 
 


?> 