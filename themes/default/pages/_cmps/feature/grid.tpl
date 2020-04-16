<div class="grid grid-cols-1 lg:grid-cols-3 gap-14 mt-28">
    {foreach $features as $feature}
	    {include file="./grid/icon.tpl"
	        icon=$feature.icon
	        title=$feature.title
	        sub=$feature.sub
	        body=$feature.body
		    attrs=['data-aos-delay'=> 100 + ($feature@iteration * 100) ]
        }
    {/foreach}
</div>
