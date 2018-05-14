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
			$result[$option->option_key] = utf8_encode($option->option_value);
		}

		return $result;
	}
	
	// get queries from table
	function getQueriesFromTable( $tablename ) {
		$result = $this->db->query( "SELECT * FROM `tbl_".$tablename."` ORDER BY `option_id`" )->fetchAll(PDO::FETCH_OBJ);
		return $result;
	}

	// get global config
	function getGlobalConfig() {
		$global = $this->convert( $this->getQueriesFromTable( "global" ) );
		
		$global["add_btn_container_class"] = "";
		$global["add_btn_container_class_xs"] = "";
		$global["one_more_button_tpl"] = "";
		$global["one_more_button_xs_tpl"] = "";
		
		if ( $global["add_one_more_button"] == "yes" ) {
			$global["one_more_button_tpl"] = '<a href="'.$global["more_button_link"].'" target="_blank" class="c-link u-inline-block u-valign-middle  c-button--login u-marg-b-xs c-anim--slide-x c-anim--8 | u-marg-b-md@sm ">'.$global["more_button_text"].'</a>';

			$global["one_more_button_xs_tpl"] = '<a href="'.$global["more_button_link"].'" target="_blank" class="c-link u-inline-block u-valign-middle  c-button--login u-marg-r-sm">'.$global["more_button_text"].'</a>';

			$global["add_btn_container_class_xs"] = " px-xs-5 d-xs-flex flex-column text-center ";
		}
		
		return $global;
	}
	
	// get home config
	function getHomeConfig() {
		$home = $this->convert( $this->getQueriesFromTable( "home" ) );
		
		$home["add_btn_container_class"] = "";
		$home["add_btn_container_class_xs"] = "";
		$home["one_more_button_tpl"] = "";
		$home["one_more_button_xs_tpl"] = "";
		
		if( $home["add_one_more_button"] == "yes" ) {
			$home["one_more_button_tpl"] = '<a href="'.$home["more_button_link"].'" class="u-pointer-auto c-link u-inline-block c-button--expand2 m-sm-t-2 {{currentIndex==3?\'is-active\':\'\'}}"><svg  class="c-button--expand2__left-block" viewbox="0 0 24 24"><circle  cx="12" cy="12" r="12" /></svg><span class="c-button--expand2__center-block"></span><svg  class="c-button--expand2__right-block" viewbox="0 0 24 24"><circle  cx="12" cy="12" r="12" /></svg><span class="c-button--expand2__text">'.$home["more_button_text"].'</span></a>';
			$home["add_btn_container_class"] = " d-flex flex-column ";

			$home["one_more_button_xs_tpl"] = '<a href="'.$home["more_button_link"].'" class="c-link u-inline-block c-button--expand2 m-sm-t-2 {{currentIndex==3?\'is-active\':\'\'}}"><svg  class="c-button--expand2__left-block" viewbox="0 0 24 24"><circle  cx="12" cy="12" r="12" /></svg><span class="c-button--expand2__center-block"></span><svg  class="c-button--expand2__right-block" viewbox="0 0 24 24"><circle  cx="12" cy="12" r="12" /></svg><span class="c-button--expand2__text">'.$home["more_button_text"].'</span></a>';
			$home["add_btn_container_class_xs"] = " px-xs-5 d-xs-flex flex-column text-center ";
		}
		
		return $home;
	}
	
	// get solution config
	function getSolutionConfig() {
		$solution = $this->convert( $this->getQueriesFromTable( "solution" ) );
		
		return $solution;
	}
	
	// get privacy config
	function getPrivacyConfig() {
		$privacy = $this->convert( $this->getQueriesFromTable( "privacy" ) );

		return $privacy;
	}
	
	// get about config
	function getAboutConfig() {
		$about = $this->convert( $this->getQueriesFromTable( "about" ) );

		$about["team_member_list"] = [];
		for($idx = 1; $idx <= 10; $idx++){
			array_push($about["team_member_list"], array(
				"img" => $about["team_member_".$idx."_img"],
				"name" => explode("|", $about["team_member_".$idx."_info"])[0],
				"role" => explode("|", $about["team_member_".$idx."_info"])[1]
			));
		}
		
		return $about;
	}
	
	// get contact config
	function getContactConfig() {
		$contact = $this->convert( $this->getQueriesFromTable( "contact" ) );

		$contact["interested_list_tpl"] = "";
		for( $idx = 1; $idx <= 6; $idx++ )
			$contact["interested_list_tpl"] .= "<light-ui-select-option value='".$contact["interested_item_".$idx]."'>".$contact["interested_item_".$idx]."</light-ui-select-option>";
		
		return $contact;
	}

	// get all config
	function getAllConfig() {			
		$allConfig = array (
			"global"	=> $this->getGlobalConfig(),
			"home"		=> $this->getHomeConfig(),
			"about"			=> 	$this->getAboutConfig(),
			"contact"		=>	$this->getContactConfig(),
			"privacy"		=>	$this->getPrivacyConfig(),
			"solution"		=>	$this->getSolutionConfig()
		);
		
		return $allConfig;
	}
	
	// print formatted
	function printFormatted( $data ) {
		echo "<pre>";
		print_r( $data );
		echo "</pre>";
	}
}