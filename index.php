<?php
$ch = curl_init( $_SERVER['SERVER_NAME']."/admin/apis/all-config" );

curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
curl_setopt($ch, CURLOPT_HEADER, false);

$config = curl_exec($ch);

curl_close($ch);
?>

<!DOCTYPE html>

<html class="no-js" lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

	<base href="/">

	<title>Clarity Movement Co. - Leading the Clean Air Movement</title>
	<meta name="description" content="Transform your city using hundreds to thousands of IoT devices collecting actionable air quality data to create healthy communities.">
	<meta property="og:description" content="Transform your city using hundreds to thousands of IoT devices collecting actionable air quality data to create healthy communities.">
	<meta property="og:title" content="Clarity Movement Co. - Leading the Clean Air Movement">
	<meta property="og:image" content="/assets/init/global/init/global/share-1.jpg">
	<meta property="og:site_name" content="Clarity Movement Co.">
	<meta property="og:url" content="https://<?php echo $_SERVER['SERVER_NAME']; ?>/" >
	<meta property="og:type" content="website">

	<meta name="twitter:title" content="Clarity Movement Co. - Leading the Clean Air Movement">
	<meta name="twitter:description" content="Transform your city using hundreds to thousands of IoT devices collecting actionable air quality data to create healthy communities.">
	<meta name="twitter:image" content="/assets/init/global/init/global/share-1.jpg">
	<meta name="twitter:card" content="summary">
	<meta name="twitter:creator" content="@JoinClarity">
	<meta name="twitter:site" content="@JoinClarity">

	<meta name="viewport" content="width=device-width, initial-scale=1, minimal-ui">

	<meta name="apple-mobile-web-app-capable" content="yes" />
	<meta name="apple-mobile-web-app-status-bar-style" content="black-translucent">

	<meta name="theme-color" content="#37a5fb">
	<meta name="msapplication-TileColor" content="#ffffff">
	<meta name="msapplication-TileImage" content="ms-icon-144x144.png">

	<link rel="icon" type="image/x-icon" href="/favicon.ico" />
	<link rel="icon" type="image/png" sizes="32x32" href="/assets/init/global/favicon-32x32.png">
	<link rel="icon" type="image/png" sizes="16x16" href="/assets/init/global/favicon-16x16.png">
	<link rel="mask-icon" href="/assets/init/global/safari-pinned-tab.svg" color="#37a5fb">

	<link rel="apple-touch-icon" href="/assets/init/global/apple-touch-icon.png" />
	<link rel="apple-touch-icon" sizes="57x57" href="/assets/init/global/apple-touch-icon-57x57.png" />
	<link rel="apple-touch-icon" sizes="72x72" href="/assets/init/global/apple-touch-icon-72x72.png" />
	<link rel="apple-touch-icon" sizes="76x76" href="/assets/init/global/apple-touch-icon-76x76.png" />
	<link rel="apple-touch-icon" sizes="114x114" href="/assets/init/global/apple-touch-icon-114x114.png" />
	<link rel="apple-touch-icon" sizes="120x120" href="/assets/init/global/apple-touch-icon-120x120.png" />
	<link rel="apple-touch-icon" sizes="144x144" href="/assets/init/global/apple-touch-icon-144x144.png" />
	<link rel="apple-touch-icon" sizes="152x152" href="/assets/init/global/apple-touch-icon-152x152.png" />
	<link rel="apple-touch-icon" sizes="180x180" href="/assets/init/global/apple-touch-icon-180x180.png" />
	<link type="text/css" media="all" href="/assets/css/styles.css?v=5" rel="stylesheet" />
	<link rel="manifest" href="/assets/js/manifest.json">

	<script>
		//remove no-js class to make sure css animations are not bypassed
		document.getElementsByTagName( 'html' )[0].classList.remove('no-js');
		document.getElementsByTagName( 'html' )[0].classList.add('has-js');

		var config = <?php echo $config; ?>;
	</script>
</head>
<body>
	<x-application ws-root="/admin/apis/" class="u-block"></x-application>
	
	<script>
			document.querySelector('x-application').innerHTML = '';
	</script>

	<script src="/assets/js/bundle_s.js"></script>

</body>
</html>
