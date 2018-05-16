<div class="form-check form-check-inline">
	<input class="form-check-input" type="radio" name="<?php echo $option->option_key; ?>" id="inlineRadio1" value="large" <?php echo $option->option_value == "yes" ? "checked" : ""; ?>>
	<label class="form-check-label" for="inlineRadio1">Yes</label>
</div>

<div class="form-check form-check-inline">
	<input class="form-check-input" type="radio" name="<?php echo $option->option_key; ?>" id="inlineRadio2" value="medium" <?php echo $option->option_value == "no" ? "checked" : ""; ?>>
	<label class="form-check-label" for="inlineRadio2">No</label>
</div>