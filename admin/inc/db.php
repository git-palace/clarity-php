<?php
// connect mysql database
function isConnectedDB( $servername = "localhost", $dbname = "db_clarity", $username = "root", $password = "" ) {
	global $mysqlDB;

	try{
		$mysqlDB = new PDO( "mysql:host=$servername;dbname=$dbname", $username, $password );
		$mysqlDB->setAttribute( PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION );
	} catch( PDOException $err ) {
		// $mysqlDB = new PDO( "mysql:host=$servername", $username, $password );

		if ( $mysqlDB === NULL )	// check credentials works to connect mysql and it's failed.
			die( "Connection failed: " . $err->getMessage() );

		initDB( $servername, $dbname, $username, $password );

		try {
			$mysqlDB = new PDO( "mysql:host=$servername;dbname=$dbname", $username, $password );
			$mysqlDB->setAttribute( PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION );

		} catch ( PDOException $e ) {
			die( "Connection failed: " . $e->getMessage() );
		}
	}
}

// create Database, Populate Init Configurations
function initDB($servername, $dbname, $username, $password) {
	global $mysqlDB;

	$query = "CREATE DATABASE $dbname";
	
	if ( $mysqlDB->exec( $query ) !== 1 )	// create db and check if it's failed
		die( "Can't create database : $dbname" );
}