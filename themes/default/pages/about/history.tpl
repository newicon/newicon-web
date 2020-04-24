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
            title="History (and future)"
            sub="Tech innovation for over 10 years"
            body="Discover the story of Newicon - looking back at our history and looking forward to the future."
            }
			<div class="flex-shrink self-end">
				<img class="md:-mt-20 w-full" src="{asset path='images/illustrations/Culture Illustration.svg'}" alt="Newicon culture - juggling, guitar playing maniacs!" width="581" height="532">
			</div>
		</div>
    {/layout_container}
    {/layout_section}


{/block}
