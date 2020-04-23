<div class="flex items-center {$class|default:''}">
	<div class="flex-shrink-0">
		<a href="#">
			<img class="h-20 w-20 rounded-full" src="{image_src src=$avatar}" alt="" />
		</a>
	</div>
	<div class="ml-3">
		<p href="#" class="hover:underline text-base font-bold leading-6 font-medium text-gray-900 mb-0 block">
            {$name}
		</p>
        {if !empty($role)}
			<b class="ni-italic text-sm mb-0 block leading-6">
                {$role}
			</b>
        {/if}
        {if !empty($sub)}
		<div class="flex text-sm leading-6 tracking-wide font-bold text-gray-500">
			{$sub}
		</div>
		{/if}
	</div>
</div>