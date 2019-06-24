{* default values *}
{$modifier=((!empty($modifier))?"wall_{$modifier}":null)}
{$columns = ((!empty($columns))?$columns: '')}

{$masonryOptions = ((!empty($masonryOptions))?['data' => $masonryOptions]:['data' => ['columnWidth' => $columns, 'percentPosition' => true]])}

{if !isset($masonryOptions.data.columnWidth)}
    {$masonryOptions.data.columnWidth = $columns}
{/if}
{if !isset($masonryOptions.data.percentPosition)}
    {$masonryOptions.data.percentPosition = true}
{/if}



{* draw the wall *}
<div class="wall" data-wall {flattenTagAttributes attributes=$masonryOptions}>
    {foreach from=$items item=$item}
        {block "wallItem"}
            <div class="wall_itemWrapper" style="">
                <div class="wall_item">
                    {$item}
                </div>
            </div>
        {/block}
    {/foreach}
</div>

{if isset($debugBorders)}
    <style>
        .wall_itemWrapper {literal}{{/literal}
            border: 2px solid red;
        {literal}}{/literal}
    </style>
{/if}