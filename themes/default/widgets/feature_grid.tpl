<div class="grid grid-cols-1 row-gap-6% lg:grid-cols-3 gap-1/12 mt-28">
	{foreach $features as $feature}
        {include file="./feature_grid_item.tpl"
            icon=$feature.icon
            title=$feature.title
            sub=$feature.sub
            body=$feature.body
        }
	{/foreach}
</div>
