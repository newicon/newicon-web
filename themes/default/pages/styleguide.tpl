{extends "layouts/layout.tpl"}
{block "header"}
    {navigation}
{/block}
{block "content"}
	<div class="main">
        {hero_text
	        title="Styleguide"
	        bgTitle="Styleguide"
	        subtitle="Newicon website styles"
	        body="A summary of the main building blocks of the newicon site"
        }


		<section class="section section-secondary">
			<div class="shell">
				<h1>h1. Typography</h1>
				<h2>h1. Typography</h2>
				<h3>h1. Typography</h3>
				<h4>h1. Typography</h4>
				<h5>h1. Typography</h5>
				<h6>h1. Typography</h6>
			</div>
		</section>



	</div><!-- /.main -->
{/block}