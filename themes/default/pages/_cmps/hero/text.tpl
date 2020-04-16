<div class="pt-10 pb-0 text-center md:text-left {$class|default:''}">
	<div class="px-0 {(!empty($bgTitle)) ? 'ni-bg-title' : ''}" data-title="{$bgTitle|default:''}">
		<h1 class="text-3xl md:text-4xl lg:text-5xl {$titleClass|default:'text-gray-800'}">{$title}</h1>
		<h4 class="ni-italic mb-10 text-xl md:text-2xl md:font-normal {$subClass|default:'text-gray-400'}">{$sub}</h4>
        {if isset($body)}<p class="text-lg md:text-2xl md:font-normal {$bodyClass|default:'text-gray-600'}">{$body}</p>{/if}
        {if isset($callBtn) && ($callBtn==true)}
			<div class="mt-10" x-data="{ open: false }" x-cloak>
                {include file="../buttons/call-us.tpl"}
			</div>
        {/if}
	</div>
</div>