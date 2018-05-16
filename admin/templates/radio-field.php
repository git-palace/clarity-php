<?php
switch ($option->option_key) {
	case 'logo_size':
?>
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
<?php
		break;
	
	default:
		# code...
		break;
}