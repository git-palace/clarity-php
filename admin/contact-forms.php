<?php
require_once( "templates/header.php" );

if ( isLoggedIn() ) : ?>

	<div class="row">
		<?php require_once( "templates/sidebar.php" ); ?>
    <style type="text/css">
      .main {
        margin-left: 25rem;
      }
    </style>
		<div class="main col-9 p-5">
		  <table class="table">
		    <tr><thead>
		      <th scope="col">#</th>
		      <th scope="col">Name</th>
		      <th scope="col">Email</th>
		      <th scope="col">Company</th>
		      <th scope="col">Interested In</th>
		      <th scope="col">Message</th>
		    </thead></tr>
		    
		    <tbody>
  		  <?php
  				$pageConfg = PageConfig::getInstance();
  		    $contactForms = $pageConfg->getContactForms();

  		    foreach( $contactForms as $idx => $item ):
  		  ?>
  		    <tr>
  		      <td><?php echo $idx + 1; ?></td>
  		      <td><?php echo $item->name; ?></td>
  		      <td><?php echo $item->sender_email; ?></td>
  		      <td><?php echo $item->company_name; ?></td>
  		      <td><?php echo $item->interest; ?></td>
  		      <td><?php echo $item->message; ?></td>
  		    </tr>
  		  <?php
  		    endforeach;
  		    
  		    if( count( $contactForms ) == 0 ):
  		  ?>
  		    <tr>
  		      <td colspan="6" class="text-center">
  		        No Query
  		      </td>
  		    </tr>
  		  <?php
  		    endif;
  		  ?>
		    </tbody>
		  </table>
		</div>
	</div>

	<?php require_once( "templates/footer.php" ); ?>

<?php 
else :
	require_once( "templates/login-form.php" );
endif;