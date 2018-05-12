<?php
require_once( __DIR__ . "/../config/config.php" );
require_once( __DIR__ . "/../classes/page-config.php" );

function isLoggedIn() {
	global $username;
	global $password;

	if ( 
		isset( $_POST["username"], $_POST["password"] ) && 
		$username == $_POST["username"] && 
		$password == $_POST["password"] 
	) {
			setcookie( "username", $_POST["username"], time() + (86400 * 30), "/" );
			setcookie( "password", hash( "md5", $_POST["password"] ), time() + (86400 * 30), "/" );

			return true;
	} elseif ( isset( $_COOKIE["username"], $_COOKIE["password"] ) )
		return $username == $_COOKIE["username"] && hash( "md5", $password ) == $_COOKIE["password"];

	return false;
}