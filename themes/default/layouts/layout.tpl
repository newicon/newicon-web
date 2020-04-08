<!doctype html>
<html lang="en">
	<head>
		{include "./head.tpl"}
	</head>
	<body>
		{neon_body_begin}
		{block "header"}
			{navigation}
		{/block}

		{block "content"}
			CONTENT HERE
		{/block}

{*		<div class="border-t">*}
			{block "footer"}
					{footer}
			{/block}
{*		</div>*}
        {* Compiled front end scripts *}
        {* -------------------------- *}
{*		<script async defer src="{asset path='/js/app.js'}"></script>*}

		{* Calendly link widget begin *}
        {* -------------------------- *}
{*		{cssFile src="https://assets.calendly.com/assets/external/widget.css"}*}
{*		{jsFile src="https://assets.calendly.com/assets/external/widget.js" attributes=['async'=>'', 'defer'=>'']}*}

        {* Aos: website scroll in animations *}
        {* --------------------------------- *}
{*		<link rel="stylesheet" href="https://unpkg.com/aos@2.3.1/dist/aos.css" >*}
{*		<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>*}
{*		<script> AOS.init({ easing: 'ease-out-quad', once: true, startEvent: 'load' }); </script>*}
{*		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.2/animate.min.css" >*}
{*		<script src="https://cdnjs.cloudflare.com/ajax/libs/wow/1.1.2/wow.min.js"></script>*}
{*		<script>new WOW().init();</script>*}

{*		<script>console.log("%cHello! 👋 😊\n%cWe are always looking for curious individuals who love to know how things work!\n%c👉 http://newicon.co/join 👈 👍", 'font-weight:bold;font-size:28px;transform: rotate3d(1, 1, 1, -10deg);', 'font-size:20px;color:#828EAA;font-family:"Volkhov, serif";font-style:italic;', 'padding:10px 0px;font-size:14px;')</script>*}
        {neon_body_end}
	</body>
</html>
