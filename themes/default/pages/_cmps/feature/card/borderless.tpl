<div class="grid grid-cols-1 grid-rows-2 md:grid-rows-1 md:grid-cols-2 group {$class|default:''}">
	<img class="w-full h-full object-cover {($flip|default:'left' == 'left') ? 'md:order-0' : 'md:order-1'}"
		 src="{asset path=$image}" alt="{$alt|default:"$title image"}">
	<div class="flex">
		<div class="px-1/12 py-1/12 md:px-2/12 md:py-20 bg-white self-center">
			<h2 class="text-3xl sm:text-4xl lg:text-5xl text-blue-950 lg:pr-10">{$title}</h2>
			<h6 class="pt-0 lg:pl-15 text-blue-500 uppercase text-xs md:text-sm font-bold md:font-extrabold">{$label}</h6>
			<p class="lg:pl-15 text-gray-700 text-justify">{$body}</p>
		</div>
	</div>
</div>