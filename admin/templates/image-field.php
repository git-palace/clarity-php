<div class="form-group">
	<label><?php echo ucfirst( str_replace( "_", " ", $option->option_key ) ); ?></label>
	<input type="file" class="form-control-file" id="<?php echo $option->option_key; ?>" name="<?php echo $option->option_key; ?>" value="<?php echo $option->option_value; ?>">
</div>

<div class="form-group">
	<label class="d-block">Preview <?php echo ucfirst( str_replace( "_", " ", $option->option_key ) ); ?></label>
	<img id="<?php echo $option->option_key; ?>-preview" src="<?php echo $option->option_value; ?>" />
</div>