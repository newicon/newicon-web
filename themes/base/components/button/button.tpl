{* default values *}
{$classes=$classes|default:'btn '}

{if !empty($modifier)}
    {$modifier = {prefixClasses classes="{$modifier}" prefix="m"}}
{else}
    {$modifier = ''}
{/if}
{if (isset($size))}
	{$size="font{$size|ucfirst}"}
{else}
	{$size='fontBase'}
{/if}
{$tag=((isset($tag)) ? $tag : "a")}
{$attributes=((isset($attributes)) ? $attributes : [])}
{$href=((isset($action)) ? "href='{$action}'" : '')}
{$content=((isset($content)) ? $content : 'Please supply some content for the button')}
{$id=((isset($id)) ? $id : '')}

{* output the button *}
<{$tag} class="{$classes} {$modifier} {$size}" {flattenTagAttributes attributes=$attributes} {$href} id="{$id}">{$content}</{$tag}>
