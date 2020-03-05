<!-- cmp:hero-text { "title":"The Architecture Process","bgTitle":"Architecture", "subtitle":"Including UX Design, UI Design and Technical Design","body":"We have been successfully providing our clients digital solutions for over 10 years." } -->
<div class="{if (isset($bgTitle))}bgTextTitle{/if}" data-title="{$bgTitle|default:''}" >
	<div class="px-1/12 pt-28 pb-20 mb-12 text-center md:text-left">
		<div class="px-15">
            <h1 data-edit-prop="title">{$title}</h1>
			<h4 class="ni-italic text-2xl" >{$subtitle}</h4>
			{if isset($body)}<p class="text-xl text-gray-800">{$body}</p>{/if}
			{if isset($callBtn) && ($callBtn==true)}
				<div class="">
					<a href="#" class="btn btn-primary _shadow">Give us a call</a>
				</div>
			{/if}
		</div>
	</div>
</div>
{css}
	.bgTextTitle { position: relative; }
	.bgTextTitle:before { content: attr(data-title); position: absolute; top: 250px; left: 0; z-index: -5; font-weight: 800; font-size: 331px; line-height: 1; white-space: nowrap; pointer-events: none; opacity: .5; transform: translateY(-50%); }
{/css}
