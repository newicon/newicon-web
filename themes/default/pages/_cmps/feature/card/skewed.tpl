<div class="lg:min-h-screen flex my-16 sm:my-20">
	<div class="grid grid-cols-1 lg:grid-cols-2 max-w-screen-xl mx-auto self-center group">
		<div class="{($flip=='left') ? 'order-0 lg:-mr-14' : 'lg:order-1 lg:-ml-14'} lg:-mb-14 shadow-2xl rounded-t-lg lg:rounded-lg overflow-hidden">
			<img src="{asset path=$image|default:''}" alt="{$title} image" class="w-full h-full object-cover group-hover:scale-110 transform duration-1000 ease-out" >
		</div>
		<div class="flex z-10 ">
			<div class=" px-1/12 py-1/12 md:px-2/12 md:py-20 bg-white self-center bg-white self-center shadow-2xl rounded-b-lg lg:rounded-lg  lg:-mt-14 ">
				<h2 class="text-3xl sm:text-4xl md:text-5xl text-blue-900 pr-10">{$title}</h2>
				<h6 class="pt-0 md:pl-15 text-blue-500 uppercase text-xs md:text-sm font-bold md:font-extrabold">{$label|default:''}</h6>
				<p class="md:pl-15 text-gray-700 text-justify">{$body|default:''}</p>
			</div>
		</div>
	</div>
</div>