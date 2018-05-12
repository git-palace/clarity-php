<?php
require_once( __DIR__ . "/../classes/page-config.php" );

$pageConfig = PageConfig::getInstance();
$temp =  $pageConfig->getAllConfig();

echo json_encode($temp);
