<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no" />
<meta charset="utf-8" />
<title>{$page.title}</title>
<meta name="keywords" content="{$page.keywords}" />
<meta name="description" content="{$page.description}" />
{if !empty($site.languages)}
	<meta http-equiv="content-language" content="{$site.languages}" />
{/if}

<link rel="apple-touch-icon" sizes="180x180" href="/apple-touch-icon.png">
<link rel="icon" type="image/png" sizes="32x32" href="/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="16x16" href="/favicon-16x16.png">
<link rel="manifest" href="/manifest.json">
<link rel="mask-icon" href="/safari-pinned-tab.svg" color="#5bbad5">
<link rel="shortcut icon" href="/favicons/favicon.ico">
<meta name="msapplication-config" content="/favicons/browserconfig.xml">
<meta name="theme-color" content="#ffffff">

{* ADD ANY CSS FILES REQUIRED *}
<link rel="stylesheet" href="{asset path='css/app.css'}" type="text/css" media="all">
<script type="text/javascript" src="{asset path='js/app.head.min.js'}"></script>
{* Google Analytics script *}
{googleAnalytics}

{* keep this to include head scripts *}
{neon_head}
