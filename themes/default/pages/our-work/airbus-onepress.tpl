{extends "layouts/layout.tpl"}
{block "header"}
    {navigation class="absolute top-0 inset-x-0 z-10" inverse=true}
{/block}
{block "content"}

	<div class="h-screen relative bg-blue-950">
        {image src={asset path='images/temp/section-review-background-2.png'} class="absolute object-cover w-full h-full" sizes="100vw"}
        {layout_container class="absolute inset-0 flex items-center"}
	        <div>
				<cite class="ni-italic text-white text-lg">Airbus & Meggitt</cite>
		        <h1 class="text-white text-5xl w-96">A world first aircraft maintenance app for aviation superpower </h1>
	        </div>
        {/layout_container}
	</div>

	{layout_casestudy_section}
		{capture name="left"}
			<dl>
				<dt class="ni-italic text-lg mb-4">Client</dt>
				<dd>Airbus & Meggitt</dd>
				<dt class="ni-italic text-lg mb-4 mt-8">What we did</dt>
				<dd>
					<span class="inline-flex items-center px-2 py-0.5 rounded text-xs font-medium leading-4 bg-gray-100 text-gray-800">Architecture</span>
					<span class="inline-flex items-center px-2 py-0.5 rounded text-xs font-medium leading-4 bg-gray-100 text-gray-800">UX</span>
					<span class="inline-flex items-center px-2 py-0.5 rounded text-xs font-medium leading-4 bg-gray-100 text-gray-800">designed</span>
					<span class="inline-flex items-center px-2 py-0.5 rounded text-xs font-medium leading-4 bg-gray-100 text-gray-800">Javascript</span>
					<span class="inline-flex items-center px-2 py-0.5 rounded text-xs font-medium leading-4 bg-gray-100 text-gray-800">VueJS</span>
					<span class="inline-flex items-center px-2 py-0.5 rounded text-xs font-medium leading-4 bg-gray-100 text-gray-800">Cordova</span>
					<span class="inline-flex items-center px-2 py-0.5 rounded text-xs font-medium leading-4 bg-gray-100 text-gray-800">Mobile App</span>
                    <span class="inline-flex items-center px-2 py-0.5 rounded text-xs font-medium leading-4 bg-gray-100 text-gray-800">Server</span>
                    <span class="inline-flex items-center px-2 py-0.5 rounded text-xs font-medium leading-4 bg-gray-100 text-gray-800">Geo Location</span>
                    <span class="inline-flex items-center px-2 py-0.5 rounded text-xs font-medium leading-4 bg-gray-100 text-gray-800">Bluetooth</span>
                    <span class="inline-flex items-center px-2 py-0.5 rounded text-xs font-medium leading-4 bg-gray-100 text-gray-800">QRCode reader</span>
				</dd>
                <dt class="ni-italic text-lg mb-4 mt-8">Visit their websites</dt>
                <dd>
                    <a class="text-blue-500" target="airbus" href="https://www.airbus.com/">www.airbus.com</a> <br/>
                    <a class="text-blue-500" target="airbus" href="https://www.meggitt.com/">www.meggitt.com</a>
                </dd>
			</dl>
		{/capture}
		{capture name="right"}
			<h2 class="mt-0 mt-0 mb-12 text-4xl text-blue-950">Rapid innovation for global areospace leader and international fleet of aircrafts </h2>
		{/capture}
		{capture name="image"}
			<div class="px-8 md:px-16 lg:px-28">
				{image src={asset path='images/work/bbsp/screenshot-1.png'} class="shadow-4xl w-full col-span-10 mx-auto" sizes="100vw"}
			</div>
		{/capture}
	{/layout_casestudy_section}

	{include file='../_cmps/section/slider/testimonials.tpl'}
	{include file='../_cmps/section/contact/footer.tpl' title="Start your future, today"}

{/block}
