<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta charset="utf-8" />
<title>{$page.title}</title>
<meta name="keywords" content="{$page.keywords}" />
<meta name="description" content="{$page.description}" />
{if !empty($site.languages)}
	<meta http-equiv="content-language" content="{$site.languages}" />
{/if}
<meta name="viewport" content="width=device-width, initial-scale=1.0">


<link href="https://fonts.googleapis.com/css?family=Nunito+Sans:200,300,400,600,700,800,900%7CVolkhov:400,400i" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="{asset path='/vendor/font-awesome-4.7.0/css/font-awesome.min.css'}">
<link rel="stylesheet" type="text/css" href="{asset path='/vendor/OwlCarousel2-2.3.4/dist/assets/owl.carousel.min.css'}">


<link rel="stylesheet" type="text/css" href="{asset path='/css/app.css'}">

{assign var="fav" value="blue"}
<link rel="shortcut icon" type="image/x-icon" href="{asset path="/images/$fav/favicon.ico"}">
<link rel="apple-touch-icon" sizes="57x57" href="{asset path="/images/fav/$fav/apple-icon-57x57.png"}">
<link rel="apple-touch-icon" sizes="60x60" href="{asset path="/images/fav/$fav/apple-icon-60x60.png"}">
<link rel="apple-touch-icon" sizes="72x72" href="{asset path="/images/fav/$fav/apple-icon-72x72.png"}">
<link rel="apple-touch-icon" sizes="76x76" href="{asset path="/images/fav/$fav/apple-icon-76x76.png"}">
<link rel="apple-touch-icon" sizes="114x114" href="{asset path="/images/fav/$fav/apple-icon-114x114.png"}">
<link rel="apple-touch-icon" sizes="120x120" href="{asset path="/images/fav/$fav/apple-icon-120x120.png"}">
<link rel="apple-touch-icon" sizes="144x144" href="{asset path="/images/fav/$fav/apple-icon-144x144.png"}">
<link rel="apple-touch-icon" sizes="152x152" href="{asset path="/images/fav/$fav/apple-icon-152x152.png"}">
<link rel="apple-touch-icon" sizes="180x180" href="{asset path="/images/fav/$fav/apple-icon-180x180.png"}">
<link rel="icon" type="image/png" sizes="192x192"  href="{asset path="/images/fav/$fav/android-icon-192x192.png"}">
<link rel="icon" type="image/png" sizes="32x32" href="{asset path="/images/fav/$fav/favicon-32x32.png"}">
<link rel="icon" type="image/png" sizes="96x96" href="{asset path="/images/fav/$fav/favicon-96x96.png"}">
<link rel="icon" type="image/png" sizes="16x16" href="{asset path="/images/fav/$fav/favicon-16x16.png"}">
<link rel="manifest" href="{asset path="/images/fav/$fav/manifest.json"}">
<meta name="msapplication-TileColor" content="#ffffff">
<meta name="msapplication-TileImage" content="{asset path="/images/fav/$fav/ms-icon-144x144.png"}">
<meta name="theme-color" content="#ffffff">


{* ADD ANY CSS FILES REQUIRED *}
{* <script type="text/javascript" src="{asset path='js/app.head.min.js'}"></script> *}
{* Google Analytics script *}
{googleAnalytics}

{* keep this to include head scripts *}

{neon_head}
<script src="https://www.google.com/recaptcha/api.js" async defer></script>