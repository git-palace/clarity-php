<?php
$company_name = urldecode($_POST["company"]);
$sender_email = urldecode($_POST["email"]);
$interest = urldecode($_POST["interest"]);
$message = urldecode($_POST["message"]);
$name = urldecode($_POST["name"]);

$comment_content = "Interest Type : ".$interest."\nCompany Name : ".$company_name."\n\nMessage Content : \n".$message;