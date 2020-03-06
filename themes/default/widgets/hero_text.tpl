<div class="{if (isset($bgTitle))}bgTextTitle{/if}" data-title="{$bgTitle|default:''}" >
	<div class="px-1/12 pt-28 pb-0 text-center md:text-left">
		<div class="px-15">
            <h1 class="text-3xl md:text-4xl">{$title}</h1>
			<h4 class="ni-italic text-xl md:text-2xl text-gray-500">{$subtitle}</h4>
			{if isset($body)}<p class="text-lg md:text-xl text-gray-800">{$body}</p>{/if}
			{if isset($callBtn) && ($callBtn==true)}
				<div class="mt-10">
					<button href="#" class="btn btn-primary btn-fx px-10 relative z-10">Give us a call</button>
				</div>
			{/if}
		</div>
	</div>
</div>
{css}
	.bgTextTitle { position: relative; }
	.bgTextTitle:before { content: attr(data-title); position: absolute; top: 250px; left: 0; z-index: -5; font-weight: 800; font-size: 331px; line-height: 1; white-space: nowrap; pointer-events: none; opacity: .5; transform: translateY(-50%); }
{/css}
