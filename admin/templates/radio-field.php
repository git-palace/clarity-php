<?php
switch ($option->option_key) {
	case 'logo_size':
?>
		<div class="form-group row mx-auto">
			<label for="<?php echo $option->option_key; ?>" class="px-0 col-sm-4 col-form-label mr-3"><?php echo ucfirst( str_replace( "_", " ", $option->option_key ) ); ?></label>
			
			<div class="form-check form-check-inline">
				<input class="form-check-input" type="radio" name="<?php echo $option->option_key; ?>" id="inlineRadio1" value="large" <?php echo $option->option_value == "large" ? "checked" : ""; ?>>
				<label class="form-check-label" for="inlineRadio1">Large</label>
			</div>
	
			<div class="form-check form-check-inline">
				<input class="form-check-input" type="radio" name="<?php echo $option->option_key; ?>" id="inlineRadio2" value="medium" <?php echo $option->option_value == "medium" ? "checked" : ""; ?>>
				<label class="form-check-label" for="inlineRadio2">Medium</label>
			</div>
	
			<div class="form-check form-check-inline">
				<input class="form-check-input" type="radio" name="<?php echo $option->option_key; ?>" id="inlineRadio3" value="small" <?php echo $option->option_value == "small" ? "checked" : ""; ?>>
				<label class="form-check-label" for="inlineRadio3">Small</label>
			</div>
		</div>
<?php
		break;
	
	default:
		# code...
		break;
}