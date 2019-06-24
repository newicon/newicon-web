{* Error Checking *}
{if empty($id)}
	ERROR - YOU MUST SUPPLY AN ID TO THE MODAL IN ORDER TO ACCESS IT
{else}
	{* Default Values *}
	{$modal.header=((isset($modal.header))?$modal.header:null)}
	{$modal.body=((isset($modal.body))?$modal.body:null)}
	{$modal.footer=((isset($modal.footer))?$modal.footer:null)}
	{$modal.close=((isset($modal.close))?$modal.close:null)}
	{$modal.container=((isset($modal.container))?$modal.container:null)}
	{$modal.size=((isset($modal.size))?"modal-{$modal.size}":null)}
	{$modal.modifier=((!empty($modal.modifier))?"modal_{$modal.modifier}":null)}
	{$modal.dataModifier=((!empty($modal.modifier))?"data-modal-modifier='{$modal.modifier}'":null)}
	{$modal.showTransition=((!empty($modal.showTransition))?$modal.showTransition:'fade')}
	{$modal.ariaLabelledBy=((!empty($modal.ariaLabelledBy))?$modal.ariaLabelledBy:'Modal Popup')}

	{* The Component *}
	{block "modalContainer"}
		<div class="{bemMix block='modal' container=$modal.container} {$modal.modifier} {$modal.showTransition}"  {$modal.dataModifier} id="{$id}" tabindex="-1" role="dialog" aria-labelledby="{$modal.ariaLabelledBy}" aria-hidden="true">
			<div class="modal_container {$modal.size} modal-dialog" role="document">
				{block "modalContent"}
					{block "modalClose"}
						{if !empty($modal.close)}
							<a class="modal_close" data-dismiss="modal" aria-label="Close">
								{$modal.close}
							</a>
						{/if}
					{/block}
					<div class="modal_content modal-content">
						{block "modalHeader"}
							{if !empty($modal.header)}
								<div class='modal_header'>
									{$modal.header}
								</div>
							{/if}
						{/block}
						{block "modalBody"}
							{if !empty($modal.body)}
								<div class='modal_body modal-body'>
									{$modal.body}
								</div>
							{/if}
						{/block}
						{block "modalFooter"}
							{if !empty($modal.footer)}
								<div class='modal_footer modal-footer'>
									{$modal.footer}
								</div>
							{/if}
						{/block}
					</div>
				{/block}
			</div>
		</div>
	{/block}
{/if}