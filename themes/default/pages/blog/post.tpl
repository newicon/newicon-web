{extends "layouts/layout.tpl"}
{block "header"}
    {navigation}
{/block}
{block "content"}

    {dds class='blog' filter=['slug','=',$page['url']] order=['_created'=>'ASC'] assign=post}

	{$post|dp}
{/block}
