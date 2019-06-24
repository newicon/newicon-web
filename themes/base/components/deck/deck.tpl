{* default values *}
{* set a decent default for the number of columns and then fill in missing column breakpoints *}
{* There is an issue here that this component knows the breakpoints available! *}
{$columns=((empty($columns))?['xxs'=>1,'sm'=>2,'lg'=>3,'xl'=>4]:$columns)}
{$columns.xxs=((empty($columns.xxs))?1:$columns.xxs)}
{$columns.xs=((empty($columns.xs))?$columns.xxs:$columns.xs)}
{$columns.sm=((empty($columns.sm))?$columns.xs:$columns.sm)}
{$columns.md=((empty($columns.md))?$columns.sm:$columns.md)}
{$columns.lg=((empty($columns.lg))?$columns.md:$columns.lg)}
{$columns.xl=((empty($columns.xl))?$columns.lg:$columns.xl)}
{gridResponsive columns=$columns assign=gridColumns}

{* get any overall card information *}
{$cardType=((!empty($cardType))?$cardType:'')}
{$cardReveal=((!empty($cardReveal))?$cardReveal:'')}
{$cardClass=((!empty($cardClass))?$cardClass:'')}
{$cardUnrevealText=((!empty($cardUnrevealText))?$cardUnrevealText:'')}

{* deal out the deck *}
{block "deck"}
	<div class='deck'>
		{if count($cards)}
			<div class="row deckRow"
				data-columns-xxs="{$columns.xxs}"
				data-columns-xs="{$columns.xs}"
				data-columns-sm="{$columns.sm}"
				data-columns-md="{$columns.md}"
				data-columns-lg="{$columns.lg}"
				data-columns-xl="{$columns.xl}"
			>
				{foreach from=$cards item=$card key=$k}
					{block name="deckCard"}
						<div data-col-num="{$k+1}" class="deckCard {$gridColumns}">
							{block name="deckCardContent"}
								<div class="deckCard_content">
									{$card.type=((isset($card.type))?$card.type:$cardType)}
									{$card.reveal=((isset($card.reveal))?$card.reveal:$cardReveal)}
									{$card.class=((isset($card.class))?$card.class:$cardClass)}
									{$card.unrevealText=((isset($card.unrevealText))?$card.unrevealText:$cardUnrevealText)}
									{$template="card{$card.type|ucfirst}"}
									{if {templateExists template=$template}}
										{widget type=$template card=$card}
									{else}
										{card card=$card}
									{/if}
								</div>
							{/block}
						</div>
					{/block}
				{/foreach}
			</div>
		{/if}
	</div>
{/block}