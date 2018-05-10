<?php require_once("inc/init.php"); ?>

<?php if ( isLoggedIn() ) : ?>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Admin Panel | Global</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  
  <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css" crossorigin="anonymous">
  <link rel="stylesheet" type="text/css" media="screen" href="assets/style.css" />
  
  <script src="assets/js/jquery-2.2.4.min.js" crossorigin="anonymous"></script>
  <script src="assets/js/popper.min.js" crossorigin="anonymous"></script>
  <script src="assets/bootstrap/js/bootstrap.min.js" crossorigin="anonymous"></script>
</head>
<body>


  <!-- <div class="sidenav">
    <?php foreach ($menuItems as $item): ?>
      <a href="<?php echo $item["link"]; ?>"><?php echo $item["text"]; ?></a>
    <?php endforeach; ?>
  </div> -->

  <div class="main">
  </div>
</body>
</html>
<?php else: ?>
<?php endif; ?>