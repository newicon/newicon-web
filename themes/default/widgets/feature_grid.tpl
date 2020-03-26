<div class="grid grid-cols-1 lg:grid-cols-3 gap-14 mt-28">
	{foreach $features as $feature}
        {feature_grid_item
            icon=$feature.icon
            title=$feature.title
            sub=$feature.sub
            body=$feature.body
        }
	{/foreach}
</div>
