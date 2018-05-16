<div class="form-group row mx-auto">
	<label for="<?php echo $option->option_key; ?>" class="px-0 col-sm-4 col-form-label"><?php echo ucfirst( str_replace( "_", " ", $option->option_key ) ); ?></label>
	<div class="col-sm-8">
		<?php if ( strlen( $option->option_value ) <= 150 ) : ?>
			<input type="text" class="form-control" id="<?php echo $option->option_key; ?>" name="<?php echo $option->option_key; ?>" value="<?php echo $option->option_value; ?>">
		<?php else : ?>
			<textarea rows="6" class="form-control" name="<?php echo $option->option_key; ?>" ><?php echo $option->option_value; ?></textarea>
		<?php endif; ?>
	</div>
</div>