<!doctype html>
<!--[if IE 9]><html class="ie9 no-js"><![endif]-->
<html class="no-js">
	<head>
		{include "layouts/head.tpl"}
	</head>
	<body>
		<div class="wrapper">
			{neon_body_begin}
				{navigation}
					{block "header"}
						{header}
					{/block}

					{block "content"}
						CONTENT HERE
					{/block}

				<div class='page_footer'>
					{block "footer"}
						{footer}
					{/block}
				</div>
			{* foot includes additional scripts for the page *}
			{include "layouts/foot.tpl"}
		</div>
	</body>
</html>
