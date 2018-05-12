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

	function __construct( $servername = "localhost", $dbname = "db_clarity", $username = "edeveloper", $password = "") {
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
		
		$result = $this->convert( $result );
		
		$result["add_btn_container_class"] = "";
		$result["add_btn_container_class_xs"] = "";
		$result["one_more_button_tpl"] = "";
		$result["one_more_button_xs_tpl"] = "";
		
		if ( $result["add_one_more_button"] == "yes" ) {
			$result["one_more_button_tpl"] = '<a href="'.$result["more_button_link"].'" target="_blank" class="c-link u-inline-block u-valign-middle  c-button--login u-marg-b-xs c-anim--slide-x c-anim--8 | u-marg-b-md@sm ">'.$result["more_button_text"].'</a>';

			$result["one_more_button_xs_tpl"] = '<a href="'.$result["more_button_link"].'" target="_blank" class="c-link u-inline-block u-valign-middle  c-button--login u-marg-r-sm">'.$result["more_button_text"].'</a>';

			$result["add_btn_container_class_xs"] = " px-xs-5 d-xs-flex flex-column text-center ";
		}
		
		return $result;
	}

	// get all config
	function getAllConfig() {
		return array(
			"global" => $this->getGlobalConfig()
		);
	}
}