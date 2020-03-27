{layout_section style="background: #F3F5F9;"}
	{layout_container class="grid gap-16 sm:gap-20 lg:gap-96 my-16 sm:my-20 lg:my-32"}
		{$cardType = $type|default:'skewed'}
		{foreach $cards as $card}
		    {include file="../../feature/card/$cardType.tpl"
		        flip={cycle values="left,right"}
		        title=$card.title
				body=$card.body
				label=$card.label
				image=$card.image
				alt=$card.alt|default:''
			}
		{/foreach}
	{/layout_container}
{/layout_section}