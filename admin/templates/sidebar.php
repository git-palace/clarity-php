<div class="sidenav col-2 pt-5">
	<?php foreach ($menuItems as $item): ?>
		<a class="py-3" href="<?php echo $item["link"]; ?>"><?php echo $item["text"]; ?></a>
	<?php endforeach; ?>
</div>