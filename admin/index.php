<?php
require_once( "templates/header.php" );

if ( isLoggedIn() ) : ?>

	<?php
		$pageConfg = PageConfig::getInstance();
		
		if( !empty($_POST) || !empty( $_FILES ) ) {
			foreach ( $_FILES as $key => $file ) {
				if( $file["error"] !== 0 )
					unset( $_FILES[$key] );
			}

			if ( isset( $_POST["page_id"] ) ){
				$pageID = $_POST["page_id"];
				unset( $_POST["page_id"] );
				
				$pageConfg->updateConfig( $pageID );
			}
		}
	?>

	<div class="row">
		<?php require_once( "templates/sidebar.php" ); ?>

		<div class="main col-6 p-5">
			<form method="post" enctype="multipart/form-data">
				<input type="hidden" name="page_id" value="global" />

				<?php
					$conf = $pageConfg->getGlobalConfig( false );

					foreach ($conf as $option) {
						switch ($option->option_type) {
							case 'text':
								include("templates/text-field.php");
								break;

							case 'radio':
								include("templates/radio-field.php");
								break;

							case 'boolean':
								include("templates/boolean-field.php");
								break;

							case "image":
								include("templates/image-field.php");
								break;
						}
					}
				?>

				<button type="submit" class="btn-primary btn">Submit</button>
			</form>
		</div>
	</div>

	<?php require_once( "templates/footer.php" ); ?>

<?php 
else :
	require_once( "templates/login-form.php" );
endif;