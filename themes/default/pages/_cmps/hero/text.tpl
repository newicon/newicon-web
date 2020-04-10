<div class="{if (isset($bgTitle) and $bgTitle)}ni-bg-title{/if}" data-title="{$bgTitle|default:''}" >
	<div class="px-1/12 pt-28 pb-0 text-center md:text-left">
		<div class="px-0 md:px-15">
			<h1 class="text-3xl md:text-4xl lg:text-5xl text-{$titleColor|default:'gray-800'}">{$title}</h1>
			<h4 class="ni-italic text-xl md:text-2xl text-{$subColor|default:'gray-500'}">{$sub}</h4>
            {if isset($body)}<p class="text-lg md:text-xl text-{$bodyColor|default:'gray-800'}">{$body}</p>{/if}
            {if isset($callBtn) && ($callBtn==true)}
				<div class="mt-10" x-data="{ open: false }" x-cloak>
                    {include file="../buttons/call-us.tpl"}
				</div>
            {/if}
		</div>
	</div>
</div>
{css}
	.bgTextTitle { position: relative; }
	.bgTextTitle:before { content: attr(data-title); position: absolute; top: 250px; left: 0; z-index: -5; font-weight: 800; font-size: 331px; line-height: 1; white-space: nowrap; pointer-events: none; opacity: .5; transform: translateY(-50%); }
{/css}