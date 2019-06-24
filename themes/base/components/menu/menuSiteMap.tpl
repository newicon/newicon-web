{* configures a menu using the sitemap data in config/common.php *}
{if isset($menuKey)}
	{$items = $site[$menuKey].items}
{elseif !isset($items)}
	{$items = $site.menu.items}
{/if}
{$modifier=((isset($modifier)) ? "{$modifier}" : '')}
{$tag=((isset($tag)) ? $tag : "li")}
{$href=((isset($action)) ? "href='{$action}'" : '')}

{if isset($items)}
    {foreach from=$items item=$i key=$k}
        {$items[$k]['label']=((isset($i.label))?$i.label:((isset($i.niceId))?$i.niceId:''))}
        {$items[$k]['action']=((isset($i.url))?$i.url:({page_url nice=((isset($i.niceId))?$i.niceId:'')}))}
    {/foreach}
    {menu items=$items modifier=$modifier tag=$tag href=$href}
{/if}