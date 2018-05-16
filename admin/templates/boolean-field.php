<div class="form-group row mx-auto">
	<label for="<?php echo $option->option_key; ?>" class="px-0 col-sm-4 col-form-label mr-3"><?php echo ucfirst( str_replace( "_", " ", $option->option_key ) ); ?></label>
	
	<div class="form-check form-check-inline">
		<input class="form-check-input" type="radio" name="<?php echo $option->option_key; ?>" id="inlineRadio1" value="yes" <?php echo $option->option_value == "yes" ? "checked" : ""; ?>>
		<label class="form-check-label" for="inlineRadio1">Yes</label>
	</div>
	
	<div class="form-check form-check-inline">
		<input class="form-check-input" type="radio" name="<?php echo $option->option_key; ?>" id="inlineRadio2" value="no" <?php echo $option->option_value == "no" ? "checked" : ""; ?>>
		<label class="form-check-label" for="inlineRadio2">No</label>
	</div>
</div>