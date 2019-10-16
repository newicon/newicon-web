{extends "layouts/layout.tpl"}
{block "header"}
    {navigation}
{/block}
{block "content"}
	<style>
		.caveat { font-family: caveat   color: #0067FF; }
		.trashhand { font-family: TrashHand, Arial ; color: #0067FF; }
		.trashhand { font-family: TrashHand, Arial ; color: #0067FF; font-size:24px; line-height: 32px; }
	</style>
	<div class="main">
        {hero_text
	        title="Styleguide"
	        bgTitle="Styleguide"
	        subtitle="Newicon website styles"
	        body="A summary of the main building blocks of the newicon site"
        }

        {static_block key="homepage_callout" wys=true}
			<p>We use design and software engineering to transform your future. Newicon. New tomorrow.</p>
	        <!-- nc:p --> Here is is <!-- /nc:p -->
        {/static_block}

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

{*		<h1 style="font-size:50px; letter-spacing: 1px;color: black;"><span style="font-weight:700">new</span><span style="font-weight:300;padding-left:3px;" class="text-success" data-toggle="typed" data-options='{ "strings": ["thinking", "ideas", "tomorrow", "icon^5000"] }'></span></h1>*}

		{drop_zone id="dropzone1"}

		{/drop_zone}

		<div>
			<h1>Trash hand</h1>

			<div class="caveat">
				Working hard since 2008
			</div>


			<div class="trashhand">
				Working hard since 2008
			</div>

		</div>

	</div><!-- /.main -->
{/block}