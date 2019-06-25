<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta charset="utf-8" />
<title>{$page.title}</title>
<meta name="keywords" content="{$page.keywords}" />
<meta name="description" content="{$page.description}" />
{if !empty($site.languages)}
	<meta http-equiv="content-language" content="{$site.languages}" />
{/if}
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="shortcut icon" type="image/x-icon" href="{asset path='/images/favicon.ico'}">
<link href="https://fonts.googleapis.com/css?family=Nunito+Sans:200,300,400,600,700,800,900%7CVolkhov:400,400i" rel="stylesheet">
<link rel="stylesheet" href="{asset path='/vendor/font-awesome-4.7.0/css/font-awesome.min.css'}">
<link rel="stylesheet" href="{asset path='/vendor/OwlCarousel2-2.3.4/dist/assets/owl.carousel.min.css'}">

<link rel="stylesheet" type="text/css" href="{asset path='/css/bundle.css'}">

{* ADD ANY CSS FILES REQUIRED *}
{* <script type="text/javascript" src="{asset path='js/app.head.min.js'}"></script> *}
{* Google Analytics script *}
{googleAnalytics}

{* keep this to include head scripts *}
{neon_head}
