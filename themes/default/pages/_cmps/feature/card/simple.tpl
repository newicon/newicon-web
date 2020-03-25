<div class="grid grid-cols-1 md:grid-cols-2 shadow-2xl max-w-screen-xl mx-auto rounded-md rounded-lg overflow-hidden bg-white group {$class|default:''}">
	<div class="{($flip == 'left') ? 'md:order-0' : 'md:order-1'}">
		<img class="w-full h-full z-0 object-cover group-hover:scale-110 transform duration-300 ease-out"
		     src="{asset path=$card.image}" alt="{$card.title} image" class="w-full">
	</div>
	<div class="flex bg-white z-10">
		<div class="px-1/12 py-1/12 md:px-2/12 md:py-20 bg-white self-center">
			<h2 class="text-3xl sm:text-4xl md:text-5xl text-blue-950 pr-10">{$card.title}</h2>
			<h6 class="pt-0 text-blue-500 uppercase text-xs font-bold md:pl-15 md:text-sm md:font-extrabold">{$card.label}</h6>
			<p class="md:pl-15 text-gray-700 text-justify">{$card.body}</p>
		</div>
	</div>
</div>