<?php
/**
 * configuration
 */

class PageConfig {
	static $instance = NULL;
	private $db = NULL;
	private $global = array();
	private $about = array();
	private $solution = array();
	private $contact = array();
	private $privacy = array();

	function __construct( $servername = "localhost", $dbname = "db_clarity", $username = "root", $password = "") {
		try{
			$this->db = new PDO( "mysql:host=$servername;dbname=$dbname", $username, $password );
			$this->db->setAttribute( PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION );

		} catch( PDOException $err ) {
			$this->db = new PDO( "mysql:host=$servername", $username, $password );

			if ( $this->db === NULL )	// check credentials works to connect mysql and it's failed.
				die( "Connection failed: " . $err->getMessage() );

			$query = "create database if not exists $dbname";			
			if ( $this->db->exec( $query ) !== 1 )	// create db and check if it's failed
				die( "Can't create database : $dbname" );

			try{
				$this->db = new PDO( "mysql:host=$servername;dbname=$dbname", $username, $password );
				$this->db->setAttribute( PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION );

				$queries = file_get_contents( __DIR__ . "/db-init.sql" );
				if ( $queries )
					$this->db->exec( $queries );
			} catch( PDOException $err ) {
				die( "Connection failed:" . $err->getMessage() );
			}
		}

	}

	// create instance for singleton
	static function getInstance() {
		if ( is_null( self::$instance ) )
			self::$instance = new PageConfig;

		return self::$instance;
	}

	function convert( $p_result ) {
		$result = array();
		foreach ( $p_result as $option ) {
			if( !$option->disabled )
				$result[$option->option_key] = $option->option_value;
		}

		return $result;
	}

	// get global config
	function getGlobalConfig() {
		if ( !$this->db )
			return array();

		$result = $this->db->query( "SELECT * FROM `tbl_global` ORDER BY `option_id`" )->fetchAll(PDO::FETCH_OBJ);

		return $this->convert( $result );
	}

	// get all config
	function getAllConfig() {
		return array(
			"global" => $this->getGlobalConfig()
		);
	}
}