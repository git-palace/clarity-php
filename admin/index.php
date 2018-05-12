<?php
require_once( "templates/header.php" );

if ( isLoggedIn() ) : ?>

	<div class="row h-100">
		<?php require_once( "templates/sidebar.php" ); ?>

		<div class="main col-10 p-5">
			<form method="post" enctype="multipart/form-data">

				<?php
					$pageConfg = PageConfig::getInstance();
				?>
				<div class="form-group">
					<label for="logo">Logo : </label>
					<input type="file" name="logo" />
				</div>
			</form>
		</div>
	</div>

	<?php require_once( "templates/footer.php" ); ?>

<?php 
else :
	require_once( "templates/login-form.php" );
endif;