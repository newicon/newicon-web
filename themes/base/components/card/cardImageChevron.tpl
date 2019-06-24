{$card.label=((!empty($card.label))?$card.label:'')}
{$width=((!empty($card.width))?$card.width:({$width|default:600}))}
{$height=((!empty($card.height))?$card.height:({$width|default:600}))}
{$quality=((!empty($card.quality))?$card.quality:({$quality|default:90}))}
{capture "card_body"}
	{if isset($card.image)}
		<img class="img-responsive" src="{firefly_image id=$card.image w=$width h=$height q=$quality}" alt="{$card.label}"/>
	{/if}
	{if !empty($card.label)}
		<h4 class=" mtn mbm">{$card.label}</h4>
	{/if}
    <div class="serviceCircle"><div class="serviceCircleChevron"><i class="fa fa-chevron-down"></div></i></div>
{/capture}
{$card.body=$smarty.capture.card_body}
{card card=$card}