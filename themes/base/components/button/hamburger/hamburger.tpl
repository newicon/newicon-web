{* default values *}
{$class=((!empty($class))?$class:'')}
{$lineCount=((!empty($lineCount))?$lineCount:4)}

{* Render the hamburger *}
{capture "hamburger"}
	<div class="{$class} hamburger">
		{for $lineNo=1 to $lineCount}
		    <span class="hamburger_line"></span>
		{/for}
	</div>
{/capture}

{button tag='div' colour='' modifier='noActiveState' classes='btn btn_hamburger' content=$smarty.capture.hamburger}

