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
<a class="shadow-lg rounded block no-underline group hover:bg-blue-900 relative transform transition duration-150  hover:scale-105" href="{page_url id=$link}" >
	<div class="p-14 pt-20 pb-48">
		<h3 class="text-3xl text-blue-900 group-hover:text-white pb-4">{$title}</h3>
		<div class="text-lg text-gray-700 group-hover:text-white pb-16">{$body}</div>
		<b class="text-lg text-blue-500 font-bold group-hover:text-white">
			Learn more
			<svg class="fill-current group-hover:text-white inline" width="24" height="24">
				<path d="M12.185 4.852a.917.917 0 011.297 0l5.5 5.5a.922.922 0 01.262.755l-.001.01a.92.92 0 01-.261.531l.075-.085a.922.922 0 01-.008.01l-.067.075-5.5 5.5a.917.917 0 11-1.297-1.296l3.934-3.936H3.667a.917.917 0 01-.91-.81L2.75 11c0-.506.41-.917.917-.917H16.12l-3.935-3.935a.917.917 0 01-.082-1.202z" id="a"/>
			</svg>
		</b>
		<div class="absolute right-0 pr-16">
			<img height="137" width="202" class="block group-hover:hidden" src="{asset path=$image}" alt="{$title}">
			<img height="137" width="202" class="hidden group-hover:block" src="{asset path=$imageHover}" alt="{$title}">
		</div>
	</div>
</a>
