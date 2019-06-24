{$card.label=((!empty($card.label))?$card.label:'')}
{$width=((!empty($card.width))?$card.width:({$width|default:600}))}
{$height=((!empty($card.height))?$card.height:({$width|default:600}))}
{$quality=((!empty($card.quality))?$card.quality:({$quality|default:90}))}
{* set the source to be either firefly or a direct url - former overrides latter if both set *}
{$source=''}
{if (isset($card.image))}
	{$source={firefly_image id=$card.image w=$width h=$height q=$quality}}
{elseif (isset($card.imagePath))}
	{$source=$card.imagePath}
{/if}
{capture "card_body"}
	{if (isset($card.aspectRatio))}
		<div class="card_image" style="background-image: url({$source}); height:{$height}px" alt="{$card.label}">&nbsp;</div>
	{else}
		<img class="img-responsive" src="{$source}" alt="{$card.label}"/>
	{/if}
	{if !empty($card.label)}
		<h4 class="card_label mtn mbm">{$card.label}</h4>
	{/if}
{/capture}
{$card.body=$smarty.capture.card_body}
{card card=$card}