<?php
require_once( __DIR__ . "/../classes/page-config.php" );

$pageConfig = PageConfig::getInstance();

echo json_encode( $pageConfig->getAllConfig() );