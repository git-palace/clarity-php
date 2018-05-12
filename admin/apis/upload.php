<?php
$response = array();

foreach ( $uploaded_files as $id => $file) {
	$target_dir = "../../assets/uploads/";
	$target_file = $target_dir . basename( $file["name"] );
	$uploadOk = 1;
	$imageFileType = strtolower( pathinfo( $target_file, PATHINFO_EXTENSION ) );

	// Check if file already exists
	if ( file_exists( $target_file ) ) {
		array_push( $response, array( 
			"id"	=> $id,
			"success"	=> false,
			"reason"	=> "File is existing."
		) );
	} // Allow certain file formats
	elseif ( $imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg"	&& $imageFileType != "gif" ) {
		array_push( $response, array( 
			"id"	=> $id,
			"success"	=> false,
			"reason"	=> "Only image file is acceptable."
		) );
	}	// Check if $uploadOk is set to 0 by an error
	elseif ( getimagesize($file["tmp_name"]) !== false && move_uploaded_file( $file["tmp_name"], $target_file ) ) {
		array_push( $response, array( 
			"id"	=> $id,
			"success"	=> true,
			"filename"	=> $file["name"]
		) );
	} else {
		array_push( $response, array( 
			"id"	=> $id,
			"success"	=> false,
			"reason"	=> "Unkown Error."
		) );
	}
}

return $response;