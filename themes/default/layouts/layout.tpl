<!doctype html>
<!--[if IE 9]><html class="ie9 no-js"><![endif]-->
<html class="no-js">
	<head>
		{include "layouts/head.tpl"}
	</head>
	<body>
		{neon_body_begin}
		<div id="page">
			{navigation}
			<div class='page_header'>
				{block "header"}
					{header}
				{/block}
			</div>

			<div class='page_content'>
				{block "content"}
					CONTENT HERE
				{/block}
			</div>

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
