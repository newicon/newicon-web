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
<a class="shadow-xl bg-white hover:shadow-2xl rounded block no-underline group hover:bg-blue-950 relative transform transition duration-150  hover:scale-105" href="{page_url id=$link}" >
	<div class="p-14 pt-20">
		<h3 class="text-3xl text-blue-950 group-hover:text-white pb-4">{$title}</h3>
		<div class="text-lg text-gray-700 group-hover:text-white pb-56">{$body}</div>
		<b class="block absolute bottom-0 pb-6 mb-48 text-lg text-blue-500 font-bold group-hover:text-white">
			Learn more
			<svg class="fill-current group-hover:text-white transform transition duration-150 group-hover:translate-x-3 inline" width="24" height="24">
				<path d="M12.185 4.852a.917.917 0 011.297 0l5.5 5.5a.922.922 0 01.262.755l-.001.01a.92.92 0 01-.261.531l.075-.085a.922.922 0 01-.008.01l-.067.075-5.5 5.5a.917.917 0 11-1.297-1.296l3.934-3.936H3.667a.917.917 0 01-.91-.81L2.75 11c0-.506.41-.917.917-.917H16.12l-3.935-3.935a.917.917 0 01-.082-1.202z"/>
			</svg>
		</b>
		<div class="absolute bottom-16 right-16">
			<img height="137" width="202" class="inline-block group-hover:hidden" src="{asset path=$image}" alt="{$title}">
			<img height="137" width="202" class="hidden group-hover:inline-block" src="{asset path=$imageHover}" alt="{$title}">
		</div>
	</div>
</a>
