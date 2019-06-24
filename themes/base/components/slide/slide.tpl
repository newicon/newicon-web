{* default settings *}

{$slideType=((!empty($slide.type))?"slide{$slide.type|default|ucfirst}":'')}
{$slideClass=((!empty($slide.class))?"slide{$slide.class|default|ucfirst}":'')}
{$slideModifier={$slide.modifier|default:''}}
{$imageWidth = (isset($slide.imageWidth))?$slide.imageWidth:600}
{$imageHeight = (isset($slide.imageHeight))?$slide.imageHeight:600}

{* output the slide *}
{block "slide"}
	<div class="slide {$slideType} {$slideClass} {$slideModifier}" style="{if (!empty($slide.image))}background-image: url({firefly_image id=$slide.image w=$imageWidth h=$slide.imageHeight});{/if} {if (!empty($slide.colour))}background-color: {$slide.colour};{/if}">
		{block "slideHeader"}{if !empty($slide.header)}<div class='slide_header'>{$slide.header}</div>{/if}{/block}
		{block "slideBody"}{if !empty($slide.body)}<div class='slide_body'>{$slide.body}</div>{/if}{/block}
		{block "slideFooter"}{if !empty($slide.footer)}<div class='slide_footer'>{$slide.footer}</div>{/if}{/block}
	</div>
{/block}