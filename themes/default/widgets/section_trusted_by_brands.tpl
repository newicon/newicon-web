{layout_section class="bg-blue-950"}
	{layout_container}
        {include file="../pages/_cmps/headers/center.tpl" title="Trusted by great brands" inverse=true}
		{$brands = [
			['company' => 'Palladium', 'logo' => 'images/temp/brand-logo-1.png'],
			['company' => 'TEDx Bristol','logo' => 'images/temp/brand-logo-2.png'],
			['company' => 'SYMEC','logo' => 'images/temp/brand-logo-3.png'],
			['company' => 'Palladium','logo' => 'images/temp/brand-logo-4.png'],
			['company' => 'TEDx Bristol','logo' => 'images/temp/brand-logo-5.png'],
			['company' => 'SYMEC','logo' => 'images/temp/brand-logo-6.png'],
			['company' => 'SYMEC','logo' => 'images/temp/brand-logo-7.png'],
			['company' => 'SYMEC','logo' => 'images/temp/brand-logo-8.png'],
			['company' => 'SYMEC','logo' => 'images/temp/brand-logo-9.png'],
	        ['company' => 'SYMEC','logo' => 'images/temp/brand-logo-7.png'],
	        ['company' => 'SYMEC','logo' => 'images/temp/brand-logo-8.png'],
	        ['company' => 'SYMEC','logo' => 'images/temp/brand-logo-9.png']
		]}

		<div class="">
			<ul class="grid grid-cols-2 md:grid-cols-3 block pb-20" style="justify-items: center;">
				{foreach $brands as $brand}
				<li class="h-32 w-32 md:h-40 md:w-48 relative block">
					<img class="absolute w-full h-full object-contain" src="{assets path=$brand.logo}" alt="{$brand.company}" >
				</li>
	            {/foreach}
			</ul>
		</div>
	{/layout_container}
{/layout_section}