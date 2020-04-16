{extends "layouts/layout.tpl"}
{* get colour *}

{block "header"}
    {navigation inverse=true class="bg-black" }
{/block}
{block "content"}

		{include file="./_cmps/section/hero/text.tpl"
			style="background: linear-gradient(black, #080e26);"
			title="Our work"
			titleClass="text-white"
			sub="Client stories to whet your appetite."
			subClass="text-white"
			body="Every client challenge is unique. And so is our approach. <br/>Here’s a selection of our most favourate work."
			bodyClass="text-white"
		}

		{$caseStudies = [
			[
				'bg' => 'images/temp/section-review-background-5.png',
				'company' => 'Bristol &amp; Bath Science Park',
				'title' => 'A striking online presence for the innovation hub of Bristol',
				'link' => 'case-study-bbsp'
			],
			[
				'bg' => 'images/temp/section-review-background-6.png',
				'company' => 'Airbus',
				'title' => 'A maintenance mobile app for a global aviation superpower',
				'link' => 'case-study-airbus-app'
			],
			[
				'bg' => 'images/temp/section-review-background-7.png',
				'company' => 'TEDxBristol',
				'title' => 'A face-lift for one of Europe’s biggest TEDx Events',
				'link' => ''
			],
			[
				'bg' => 'images/temp/section-review-background-8.png',
				'company' => 'Lovell Stone Group',
				'title' => 'Working with the south west’s finest marble product suppliers',
				'link' => ''
			]
		]}

		{foreach $caseStudies as $work}

			{layout_section class="bg-cover bg-center" style="background-image: url({asset path=$work.bg})"}
				{layout_container class="h-screen relative flex"}
					<div class="self-end relative w-full md:w-4/12 bottom-28 text-white" data-aos="fade-up">
						<cite class="ni-italic text-white">{$work.company}</cite>
						<h2 class="mt-3 mb-8">{$work.title}</h2>
						<a href="{page_url nice=$work.link}" title="Read about the work Newicon did for {$work.company}" class="btn btn-primary btn-fx py-4 px-14">Read more</a>
					</div>
				{/layout_container}
            {/layout_section}

        {/foreach}

{/block}
