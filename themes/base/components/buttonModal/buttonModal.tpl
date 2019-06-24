{* default values *}
{$modifier=((isset($modifier)) ? $modifier : '')}
{$content=((isset($content)) ? $content : '')}
{$size=((isset($size)) ? $size : '')}
{$colour=((isset($colour)) ? $colour : '')}
{$id=((isset($id)) ? $id : '')}
{if (!isset($target))}
	{$target={uuid}}
	{$content="You must supply the id of the modal dialog this button opens"}
{/if}
{$attributes=((isset($attributes)) ? $attributes : [])}
{$attributes['data']['toggle']='modal'}
{$attributes['data']['backdrop']=((isset($attributes['data']['backdrop'])) ? $attributes['data']['backdrop'] : 'static')}
{$attributes['data']['target']="#{$target}"}

{* output the button linked to modal *}
{button attributes=$attributes content=$content modifier=$modifier size=$size colour=$colour id=$id}

