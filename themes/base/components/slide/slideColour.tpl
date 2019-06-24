{* default values *}
{$slide.colour = ((isset($slide.colour)) ? $slide.colour : 'black')}

{* output the slide *}
{capture "slideBody"}
	<div style="background-color:{$slide.colour};"></div>
{/capture}
{slide body=$smarty.capture.slideBody}