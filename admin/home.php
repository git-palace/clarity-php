<?php require_once( "templates/header.php" ); ?>

<?php if ( isLoggedIn() ) :	?>
<div class="row h-100">
	<?php require_once( "templates/sidebar.php" ); ?>

	<div class="main col-10">
	</div>
</div>

<?php 
else :
	require_once( "templates/login-form.php" );
endif;
?>

<?php require_once( "templates/footer.php" ); ?>