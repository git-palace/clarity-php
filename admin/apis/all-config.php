<?php
require_once( __DIR__ . "/../classes/page-config.php" );

$pageConfig = PageConfig::getInstance();
$allConfig =  $pageConfig->getAllConfig();

echo json_encode($allConfig);
