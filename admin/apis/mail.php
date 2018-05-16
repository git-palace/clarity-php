<?php
$company_name = urldecode($_POST["company"]);
$sender_email = urldecode($_POST["email"]);
$interest = urldecode($_POST["interest"]);
$message = urldecode($_POST["message"]);
$name = urldecode($_POST["name"]);

require_once( __DIR__ . "/../classes/page-config.php" );

$pageConfig = PageConfig::getInstance();
$pageConfig->addContactForm( $sender_email, $name, $company_name, $interest, $message );

echo json_encode(
  array(
    "success" => true,
    "queryData" => array(
      "interest" => $interest,
      "company"  => $company_name,
      "name"     => $name,
      "email"    => $sender_email,
      "message"  => $message,
      "time"     => date("h:i:sa")
    )
  )
);