<!-- cmp:hero-text { "title":"The Architecture Process","bgTitle":"Architecture", "subtitle":"Including UX Design, UI Design and Technical Design","body":"We have been successfully providing our clients digital solutions for over 10 years." } -->
<div class="introServiceTertiary {if (isset($bgTitle))}bgTextTitle{/if}" data-title="{$bgTitle|default:''}"  >
	<div class="shell">
		<div class="intro_inner">
			<div class="intro_content">
				<div class="intro_entry">
                    <h1 class="intro_title" data-edit-prop="title">{$title}</h1>
					<h4 class="intro_subtitle ni-italic" >{$subtitle}</h4>
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
{css}
	.shell { max-width: calc(1200px + 50px * 2); padding-left: $shell-gutter; padding-right: 50px; margin: auto; }
	.introServiceTertiary .intro_inner { padding: 110px 0 78px; }
	/* tablet */
	.introServiceTertiary .intro_content { margin-bottom: 50px; }
	.introServiceTertiary .intro_entry { padding: 0 62px; }
	.intro_body { font-size:22px; }

	.introServiceTertiary .intro_subtitle { font-weight: 400; font-size: 25px; }

	.bgTextTitle { position: relative; }
	.bgTextTitle:before { content: attr(data-title); position: absolute; top: 250px; left: 0; z-index: -5; font-weight: 800; font-size: 331px; line-height: 1; white-space: nowrap; pointer-events: none; opacity: .5; transform: translateY(-50%); }
{/css}