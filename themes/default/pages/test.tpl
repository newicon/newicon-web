{extends "layouts/layout.tpl"}
{block "header"}
    {navigation}
{/block}
{block "content"}
{editor id="test" parser=xml}
{/editor}

{/block}
