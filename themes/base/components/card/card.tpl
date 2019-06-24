{* set the defaults *}
{$card.reveal=((!empty($card.reveal))?$card.reveal:'below')}
{$card.unrevealText=((!empty($card.unrevealText))?$card.unrevealText:'X')}
{$card.unrevealActive=((!empty($card.unrevealActive))?'m_activeOnStart':'')}
{$revealBaseLink=((!empty($card.baseLink))?"{$card.baseLink}":'')}
{$revealLink=(($card.reveal=='link')?"href='{$revealBaseLink}{$card.link}'":'')}
{if !empty($card.attributes)}
	{$attributes = {flattenTagAttributes dataPrefix='card' attributes=$card.attributes}}
{else}
	{$attributes = ''}
{/if}
{if !empty($card.revealAttributes)}
	{$revealAttributes = {flattenTagAttributes attributes=$card.revealAttributes}}
{else}
	{$revealAttributes = ''}
{/if}


{if !empty($card.type)}
	{$cardType="card{$card.type|ucfirst}"}
{else}
	{$cardType=''}
{/if}
{if !empty($card.class)}
	{$cardClass="card{$card.class|ucfirst}"}
{else}
	{$cardClass=''}
{/if}

{$primaryClass=$card.primaryClass|default:''}
{$secondaryClass=$card.secondaryClass|default:''}

{* output the card *}
{block "card"}
	{$id={uuid}}
	<div class="card {$cardType} {$cardClass}" data-card-reveal="{$card.reveal}" {$attributes}>
		{if in_array($card.reveal, ['link','below'])}
			<a class="card_reveal {$card.unrevealActive}" {$revealLink} {$revealAttributes}>
		{/if}
			{block "cardPrimary {$primaryClass}"}
				<div class="card_primary">
					{block "cardHeader"}{if !empty($card.header)}<div class='card_header'>{$card.header}</div>{/if}{/block}
					{block "cardBody"}{if !empty($card.body)}<div class='card_body'>{$card.body}</div>{/if}{/block}
					{block "cardFooter"}{if !empty($card.footer)}<div class='card_footer'>{$card.footer}</div>{/if}{/block}
				</div>
			{/block}
		{if in_array($card.reveal, ['link','below'])}
			</a>
		{/if}
		{if !empty($card.details)}
			{block "cardSecondary"}
				<div class="card_secondary {$secondaryClass}" id="{$id}">
					{block "cardUnreveal"}
						<a class="card_unreveal">{$card.unrevealText}</a>
					{/block}
					{block "cardDetails"}
						<div class='card_details'>
							{$card.details}
						</div>
					{/block}
				</div>
			{/block}
		{/if}
	</div>
{/block}
