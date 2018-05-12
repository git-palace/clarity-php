<div class="sidenav col-2 pt-5">
	<?php
		$menuItems = array(
			array("link" => "/admin", "text" => "Global"),
			array("link" => "/admin/home", "text" => "Home Page"),
			array("link" => "/admin/solution", "text" => "Solution Page"),
			array("link" => "/admin/contact", "text" => "Contact Page"),
			array("link" => "/admin/about", "text" => "About Page")
		);

		foreach ($menuItems as $item):
	?>
			<a class="py-3" href="<?php echo $item["link"]; ?>"><?php echo $item["text"]; ?></a>

	<?php
		endforeach;
	?>
</div>