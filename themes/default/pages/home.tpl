{extends "layouts/layout.tpl"}
{block "header"}
	{navigation white=['about','approach','contact'] style="position:absolute;"}
{/block}
{block "content"}
	<div class="main" data-file="pages/home.tpl">
{*		{editor id=home123 }*}
			{home_hero}

			{section_services_grid}

			{* {section_come_talk_to_us}*}

	        {section_portfolio}
{*	        {section_portfolio_bak}*}

			{section_port_big}

			{section_trusted_by_brands}

			{section_testimonials}

			{section_contact_footer}
{*		{/editor}*}
	</div>
{/block}
