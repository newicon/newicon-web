<section class="section section-brands">
	<div class="shell">
		<header class="section_head">
			<h2 class="section_title">Trusted by great brands</h2>
{*			<h4 class="section_subtitle">Organisations using Neon</h4>*}
		</header>

		{$brands = [
			['company' => 'Palladium', 'logo' => 'images/temp/brand-logo-1.png'],
			['company' => 'TEDx Bristol','logo' => 'images/temp/brand-logo-2.png'],
			['company' => 'SYMEC','logo' => 'images/temp/brand-logo-3.png'],
			['company' => 'Palladium','logo' => 'images/temp/brand-logo-4.png'],
			['company' => 'TEDx Bristol','logo' => 'images/temp/brand-logo-5.png'],
			['company' => 'SYMEC','logo' => 'images/temp/brand-logo-6.png'],
			['company' => 'SYMEC','logo' => 'images/temp/brand-logo-7.png'],
			['company' => 'SYMEC','logo' => 'images/temp/brand-logo-8.png'],
			['company' => 'SYMEC','logo' => 'images/temp/brand-logo-9.png']
		]}

		<div class="section_body">
			<ul class="list-brands">
				{foreach $brands as $brand}
				<li>
					<img src="{assets path=$brand.logo}" alt="{$brand.company}" width="202" height="35">
				</li>
                {/foreach}
			</ul>
		</div>
	</div>
</section>
