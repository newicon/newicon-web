{extends "layouts/layout.tpl"}
{block "header"}
    {navigation}
{/block}
{block "content"}

	{dds class='person' order=['order'=>'ASC'] assign=team}

	{include file="../_cmps/section/hero/text.tpl"
		class="pb-10 md:w-10/12 lg:w-8/12"
		title="The team"
		bgTitle="The team"
		sub="The people delivering the magic"
		body="We have essembled one heck of a team, made up of people who love solving problems."
		bodyClass=""
	}

	{layout_section}
		<div class="grid grid-col-1 grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-24 mx-24 row-gap-20">
			{foreach $team['data'] as $member }
				<figure>
					{image src=$member.profile_image  class="mb-14 w-full" sizes="(min-width: 639px) 50vw, (min-width: 1023px) 30vw, 100vw"}
					<figcaption class="text-center">
						<h3 class="mb-2 text-blue-950">{$member.display_name}</h3>
						<b class="ni-italic text-lg">{$member.role}</b>
					</figcaption>
				</figure>
			{/foreach}
		</div>
    {/layout_section}
{/block}
