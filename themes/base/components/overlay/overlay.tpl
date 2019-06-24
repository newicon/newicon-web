{* default values *}
{capture "defaultOpen"}
    {hamburger lineCount=4}
{/capture}

{$open = ((!empty($open))?$open:$smarty.capture.defaultOpen)}
{$body = ((!empty($body))?$body:'')}
{$close = ((!empty($close))?$close:'')}

{if $open == $close}
	{$close=''}
{/if}

{$openModifier = ((!empty($openModifier))?$openModifier:'')}
{$closeModifier = ((!empty($closeModifier))?$closeModifier:'')}
{$overlayModifier = ((!empty($overlayModifier))?$overlayModifier:'')}
{$bodyModifier = ((!empty($bodyModifier))?$bodyModifier:'')}
{$animationType = ((!empty($animationType))?$animationType:'revealTop')}
{$openClass=(empty($close))?'overlay_toggle':'overlay_open'}
{$toggleModifier=(($openClass=='overlay_toggle')?'m_fixed':'')}

{$id = {uuid}}

{* output the overlay open trigger *}
{block "overlayOpen"}
	<div class="overlay_trigger {$openClass} {$openModifier} {$toggleModifier}" data-overlay-trigger-id="{$id}">
		{$open}
	</div>
{/block}

{* output the overlay close trigger *}
{block "overlayClose"}
	<div class="overlay_trigger overlay_close {$closeModifier}" data-overlay-trigger-id="{$id}">
		{$close}
	</div>
{/block}

{* output the overlay content *}
<div class="overlay overlay_{$animationType} {$overlayModifier}" data-overlay-id="{$id}">
	{block "overlayBody"}
		<div class='overlay_body {$bodyModifier}'>
			{$body}
		</div>
	{/block}
</div>

