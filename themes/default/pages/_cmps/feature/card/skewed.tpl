<div class="grid grid-cols-1 lg:grid-cols-2 group {$class|default:''} wow fadeIn">
	<div class="{($flip=='left') ? 'order-0 lg:-mr-14' : 'lg:order-1 lg:-ml-14'} lg:-mb-14 shadow-2xl rounded-t-lg lg:rounded-lg overflow-hidden">
{*		<img src="{asset path=$image}" alt="{$alt|default:"$title image"}" class="w-full h-full object-cover group-hover:scale-110 transform duration-1000 ease-out" >*}
        {image src={asset path=$image} alt=$alt|default:"$title image" sizes="(min-width: 728px) 728px, 100vw" class="w-full h-full object-cover group-hover:scale-110 transform duration-1000 ease-out" }
	</div>
	<div class="flex z-10 ">
		<div class=" px-1/12 py-1/12 md:px-2/12 md:py-20 bg-white self-center bg-white self-center shadow-2xl rounded-b-lg lg:rounded-lg  lg:-mt-14 ">
			<h2 class="text-3xl sm:text-4xl lg:text-5xl text-blue-900 lg:pr-10">{$title}</h2>
			<h6 class="pt-0 lg:pl-15 text-blue-500 uppercase text-xs md:text-sm font-bold md:font-extrabold">{$label|default:''}</h6>
			<p class="lg:pl-15 text-gray-700 text-justify">{$body|default:''}</p>
		</div>
	</div>
</div>