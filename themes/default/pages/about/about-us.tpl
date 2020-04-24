{extends "layouts/layout.tpl"}
{block "header"}
    {navigation}
{/block}
{block "content"}
    {layout_section pt="pt-0" pb="pb-0" class="md:h-screen md:flex md:items-center "}
    {layout_container}
		<div class="flex flex-col md:flex-row md:-mt-20">
            {include file="../_cmps/hero/text.tpl"
            class="md:mr-10 lg:mr-20 md:w-1/2"
            title="About us"
            sub="Find out what makes us tick"
            body="We've been successfully providing our clients with digital solutions for over 10 years"
            }
			<div class="flex-shrink self-end">
				<img class="md:-mt-20 w-full" src="{asset path='images/illustrations/Culture Illustration.svg'}" alt="Newicon culture - juggling, guitar playing maniacs!" width="581" height="532">
			</div>
		</div>
    {/layout_container}
    {/layout_section}

    {layout_section pt='pt-0'}
    {layout_container}
		<header class="text-center w-10/12 lg:w-8/12 mx-auto mb-16">
			<h2 class="text-4xl mx-auto w-full text-blue-900">What we believee</h2>
			<p class="text-3xl leading-10 text-blue-900">
				We are optimists by nature.  We believe the future is inspiring and will be an amazing place to be.
				The future is always better and always has been.
				We are surrounded by luxary today, our lives are easier, we have free time and we get to pursue hobbies.</p>
				<hr>
			<h2>Solving challenges ad problems is fun and rewarding.</h2>
			<p>Access to information, the speed of that information powered by the internet is launching humanity into uncharted territory.</p>
			<h2>All companies are software companies.</h2>
			Software is the brain that control all modern machines.
			All experiences. And all interactions.
			Keeping systems human and making experiences enjoyable.
			Optimising and engaging with new mediums.

			At first people questioned why we had a relentless focus on building using the web technologies.
			No one questions that today.
		</header>
    {/layout_container}
    {/layout_section}

{/block}

