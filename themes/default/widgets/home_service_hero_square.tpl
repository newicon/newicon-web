{*
{
	"tag": "home_service_hero_square",
	"title": "home_service_hero_square",
	"description": '',
	"props": {
		link: {type: String},
		attrs: {type: Object},
		title: {type: String},
		body: {type: html},
		image: {type: string},
	}
}
*}
<a class="service" href="{page_url id=$link}" {attrs attrs=$attrs|default:[]}>
	<div class="service_inner">
		<div class="service_content">
			<h3 class="service_title">{$title}</h3><!-- /.service_title -->
			{$body}
			<span href="#" class="link"><span class="link_inner"><span>Learn more</span><i class="ico ico-arrow-right-blue"></i></span></span>
		</div><!-- /.service_content -->
		<div class="service_image">
			<img src="{asset path=$image}" alt="{$title}">
		</div><!-- /.service_image -->
		<div class="service_actions"><span><i class="ico-angle-arrow-right-blue"></i></span></div><!-- mobile arrow -->
	</div><!-- /.service_inner -->
</a><!-- /.service -->