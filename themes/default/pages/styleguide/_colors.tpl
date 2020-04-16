<section class="container m-auto max-w-screen-lg px-10">
	<h2 id="colors">Colors</h2>
	<div class="flex">
		<div class="w-20 pt-8">white +</div>
		<div class="">
			<div class="flex mb-6">
                {foreach [[50, 95], [100,85], [200,70], [300, 50], [400,25], [500,''], [600,15], [700,30], [800, 45], [900,60], [950,77]] as $number}
					<div class="h-16 w-16 text-center ">
						<b class="block h-8 font-extrabold text-xl">{$number[0]}</b>
						<b class="block h-8">{$number[1]}%</b>
					</div>
                {/foreach}
			</div>
            {foreach ['lightGray', 'gray', 'blue', 'purple', 'pink', 'red', 'orange', 'yellow', 'green', 'teal'] as $color}
                {if isset($styles.colors.$color)}
					<div class="flex">
                        {foreach $styles.colors.$color as $name => $hex}
							<div class="h-16 w-16 bg-{$color}-{$name}"></div>
                        {/foreach}
					</div>
                {/if}
            {/foreach}
		</div>
		<div class="w-20 pt-8 text-right">+ black</div>
	</div>


	<div class="flex flex-wrap -mx-2 mt-0">
		<div class="px-2 w-full relative">
			<h3 class="markdown no-toc mb-4 mt-8" id="black-white">
				<a class="anchorjs-link text-gray-500 no-underline" aria-label="Anchor" data-anchorjs-icon="#" href="#black-white" style="position: absolute; margin-left: -1em; padding-right: 0.5em;"></a>
				Black &amp; White
			</h3>
			<div class="grid grid-rows-3 grid-flow-col gap-1">
                {include file="./_color.tpl" class="bg-black" hex=$styles.colors.black}
                {include file="./_color.tpl" class="bg-white" hex=$styles.colors.white}
                {include file="./_color.tpl" class="bg-primary" hex=$styles.colors.primary}
                {include file="./_color.tpl" class="bg-transparent" hex=$styles.colors.transparent}
			</div>
		</div>


        {foreach ['gray', 'gun-gray', 'blue', 'purple', 'pink', 'red', 'orange', 'yellow', 'green', 'teal'] as $color}
            {if isset($styles.colors[$color])}
				<div class="w-1/2 px-2 md:w-full relative mt-4">
					<h3 class="markdown no-toc mb-4 mt-8" id="gray">
						<a class="anchorjs-link text-gray-500 no-underline" aria-label="Anchor" data-anchorjs-icon="#" href="#gray"></a>
                        {$color|capitalize}
					</h3>

					<div class="grid grid-rows-3 grid-flow-col gap-2">
                        {foreach $styles.colors.$color as $name => $hex}
                            {include file="./_color.tpl" class="bg-$color-$name" hex=$hex}
                        {/foreach}
					</div>
				</div>
            {/if}
        {/foreach}

	</div>
</section>