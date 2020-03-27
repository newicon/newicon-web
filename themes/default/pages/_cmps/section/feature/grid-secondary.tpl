{layout_section}
{layout_container}
	<div class="min-h-screen flex">
		<div class="self-center">
            {header_center title=$title sub=$sub body=$body|default:'' hr=$hr|default:false}
			<div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 text-center gap-3 ">
                {foreach $features as $feature}
					<div class="shadow-xl hover:shadow-2xl transition duration-200 ease-out rounded-md p-10 transform hover:-translate-y-1">
						<img class="mx-auto my-8" src="{assets path=$feature.icon}" alt="{$feature.alt|default:$feature.title}">
						<h2 class="text-2xl font-light">{$feature.title}</h2>
						<p>{$feature.body}</p>
					</div>
                {/foreach}
			</div>
		</div>
	</div>
{/layout_container}
{/layout_section}