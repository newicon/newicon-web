<!-- cmp:hero-text { "title":"The Architecture Process","bgTitle":"Architecture", "subtitle":"Including UX Design, UI Design and Technical Design","body":"We have been successfully providing our clients digital solutions for over 10 years." } -->
<div class="introServiceTertiary {if (isset($bgTitle))}bgTextTitle{/if}" data-title="{$bgTitle|default:''}"  >
	<div class="shell">
		<div class="intro_inner">
			<div class="intro_content">
				<div class="intro_entry">
                    <h1 class="intro_title" data-edit-prop="title">{$title}</h1>
					<h4 class="intro_subtitle" >{$subtitle}</h4>
					{if isset($body)}<p class="intro_body textLead">{$body}</p>{/if}
					{if isset($callBtn) && ($callBtn==true)}
						<div class="intro_actions mtxl">
							<a href="#" class="btn btn-primary _shadow">Give us a call</a>
						</div>
					{/if}
				</div>
			</div>
		</div>
	</div>
</div>
