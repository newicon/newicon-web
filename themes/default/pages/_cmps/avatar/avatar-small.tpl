<div class="flex items-center {$class|default:''}">
	<div class="flex-shrink-0">
		<p class="mb-0" href="#"><img class="h-10 w-10 rounded-full" src="{image_src src=$avatar}" alt="" /></p>
	</div>
	<div class="ml-3">
		<p class="text-sm leading-5 font-semibold text-gray-900 mb-0">
			<span href="#">{$name}</span>
		</p>
        {if !empty($sub)}
			<div class="flex text-sm leading-5 text-gray-500">
                {$sub}
			</div>
        {/if}
	</div>
</div>