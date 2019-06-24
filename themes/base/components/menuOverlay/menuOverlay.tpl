{* default values *}
{$open = $open|default:''}
{$body = $body|default:''}
{$close = $close|default:''}
{$tag = $tag|default:'li'}
{$openModifier = $openModifier|default:''|cat:" menuOverlay_trigger"}
{$closeModifier = $closeModifier|default:''|cat:" menuOverlay_trigger"}
{$overlayModifier = $overlayModifier|default:''|cat:" m_orderLower"}
{$animationType = $animationType|default:''}
{$preMenuItems = $preMenuItems|default:''}
{$postMenuItems = $postMenuItems|default:''}

{capture overlayBody}
	{if isset($items)}
		{$menuItems=[]}
		<div class="menuOverlay_items">
			{foreach from=$items item=$i key=$k}
				{$menuItems[$k]['label']=((isset($i.label))?$i.label:((isset($i.niceId))?$i.niceId:''))}
				{$menuItems[$k]['action']=((isset($i.url))?$i.url:({page_url nice=((isset($i.niceId))?$i.niceId:'')}))}
			{/foreach}
			{* Call the menu component *}
			{$preMenuItems} {* add any preItems code first *}
			{menu tag=$tag items=$menuItems}
			{$postMenuItems} {* add any postItems code here *}
		</div>
	{/if}
{/capture}
{overlay open=$open close=$close body=$smarty.capture.overlayBody bodyModifier='menuOverlay' openModifier=$openModifier closeModifier=$closeModifier overlayModifier=$overlayModifier animationType=$animationType}

