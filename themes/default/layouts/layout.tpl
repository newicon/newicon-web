<!doctype html>
<!--[if IE 9]><html class="ie9 no-js"><![endif]-->
<html class="">
	<head>
		{include "layouts/head.tpl"}
		{css}{literal}
			<style>
			[data-aos="fade-up"] { opacity:0 }
			</style>
        {/literal}{/css}
	</head>
	<body data-aos-easing="ease-out-quad" data-aos-duration="700" data-aos-delay="0">
		<div class="wrapper" id="wrapper">
			{neon_body_begin}
			{block "header"}
				{navigation}
			{/block}

			{block "content"}
				CONTENT HERE
			{/block}

			<div class='page_footer'>
				{block "footer"}
					{footer}
				{/block}
			</div>
		</div>
        {* foot includes additional scripts for the page *}
        {include "layouts/foot.tpl"}
	</body>
</html>
