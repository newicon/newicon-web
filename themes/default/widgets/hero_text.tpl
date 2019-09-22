<div class="introServiceTertiary {if (isset($bgTitle))}bgTextTitle{/if}" data-title="{$bgTitle|default:''}" >
	<div class="shell">
		<div class="intro_inner">
			<div class="intro_content">
				<div class="intro_entry">
                    <h1 class="intro_title">{$title}</h1><!-- /.intro_title -->
					<h4 class="intro_subtitle">{$subtitle}</h4><!-- /.intro_subtitle -->
					{if isset($body)}<p class="intro_body">{$body}</p>{/if}
					{if isset($callBtn)}
						<div class="intro_actions mtxl">
							<a href="#" class="btn btn-primary _shadow">Give us a call</a>
						</div>
					{/if}
				</div><!-- /.intro_entry -->
			</div><!-- /.intro_content -->
		</div><!-- /.intro_inner -->
	</div><!-- /.shell -->
</div><!-- /.introQuaternary -->