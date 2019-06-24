
{$href = ((isset($href))?$href:'')}
{$icon = ((isset($icon))?$icon:'')}
{$target = ((isset($target))?"target='$target'":'')}

<a class="socialIcon" href="{$href}" {$target}>
    <div class="socialCircle">
        <i class="fa {$icon}" aria-hidden="true"></i>
    </div>
</a>