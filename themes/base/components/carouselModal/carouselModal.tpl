{* default values*}
{$modifier=((isset($modifier)) ? $modifier : '')}

{capture "carousel"}
	{carousel container='modal' slides=$slides initOnEvent='modal'}
{/capture}

{* output the modal carousel *}
{modal id=$id body=$smarty.capture.carousel modifier=$modifier}
