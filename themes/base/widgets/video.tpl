{$videoUrl = ((isset($videoUrl))?$videoUrl:'')}

{if $videoUrl}
    <div class="embed-responsive embed-responsive-16by9">
        <iframe class="embed-responsive-item" src="{$videoUrl}"></iframe>
    </div>
{else}
    <div class="embed-responsive embed-responsive-16by9">
        <div class="embed-responsive-item" style="background-image: url({firefly_image id='dummy.jpg' w=600 h=600});"></div>
    </div>
{/if}