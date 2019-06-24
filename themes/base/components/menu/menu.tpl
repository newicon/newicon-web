{* needs modification to work with submenus *}
{* needs modification to work with submenus *}
{* needs modification to work with submenus *}
{* needs modification to work with submenus *}

{if isset($items)}
	{* default values *}
	{$modifier=((!empty($modifier)) ? "menu_{$modifier}" : '')}
	{$tag=((!empty($tag)) ? $tag : "li")}
	{$href=((!empty($action)) ? "href='{$action}'" : '')}
	{$activeOnChildUrl=((!empty($activeOnChildUrl)) ? $activeOnChildUrl : true)}

	{foreach from=$items key=$k item=$i}
		{$items[$k]['attributes']=((isset($i['attributes'])) ? $i['attributes'] : [])}
		{$items[$k]['label']=((!empty($i['label'])) ? $i['label'] : 'You need to supply a label for this item')}
		{$items[$k]['href']=((!empty($i['action'])) ? "href='{$i.action}'" : '')}
		{if (!empty($i['id']))}
			{$items[$k]['id']="menuId_{$i.id|ucwords}"}
		{else}
			{$items[$k]['id']="menuId_{$i.label|ucwords|regex_replace:'/[^\w+]/':''}"}
		{/if}
		{if ($activeOnChildUrl)}
			{$items[$k]['active']=((!empty($i.action) && ($page.url==$i['action'] || strpos($page.url,"{$i.action}/")===0))?'m_active':'')}
		{else}
			{$items[$k]['active']=((!empty($i.action) && $page.url==$i['action'])?'m_active':'')}
		{/if}
	{/foreach}

	{* output the menu *}
	{block "menu"}
		<div class="menu {$modifier}">
			{if ($tag=='li')}
				<ul>
					{foreach from=$items item=$i}
						<li class="menu_item {$i['active']}" id="{$i.id}">
							<a {flattenTagAttributes attributes=$i.attributes} {$i.href}>{$i.label}</a>
						</li>
					{/foreach}
				</ul>
			{else}
				{foreach from=$items item=$i}
					<{$tag} class="menu_item {$i['active']}" id="{$i.id}">
						<a {flattenTagAttributes attributes=$i.attributes} {$i.href}>{$i.label}</a>
					</{$tag}>
				{/foreach}
			{/if}
		</div>
	{/block}
{else}
	You need to supply some items for the menu
{/if}