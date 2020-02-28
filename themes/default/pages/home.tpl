{extends "layouts/layout.tpl"}
{block "header"}
	{navigation white=['about','approach','contact'] style="position:absolute;"}
{/block}
{block "content"}
	<div class="main">
{*		{editor id=home123 }*}
			{home_hero}

			{section_services_grid}

			{* {section_come_talk_to_us}*}

	        {section_portfolio}

			{section_port_big}

			{section_trusted_by_brands}

			{section_testimonials}

			{section_contact_footer}
{*		{/editor}*}

        {jsFile src="https://cdn.jsdelivr.net/gh/alpinejs/alpine@v1.11.1/dist/alpine.js" attributes=['async', 'defer']}
		<div x-data="{ show: false }"
		     x-show="show"
		     x-init="localStorage.getItem('hideBanner') === null ? (setTimeout(() => show = true, 500)) : (show = false)"
		     x-transition:enter="ease-out duration-500"
		     x-transition:enter-start="opacity-0 scale-95 translate-y-2"
		     x-transition:enter-end="opacity-100 scale-100 translate-y-0"
		     x-transition:leave="ease-in duration-300"
		     x-transition:leave-start="opacity-100 scale-100 translate-y-0"
		     x-transition:leave-end="opacity-0 scale-95 translate-y-2"
		     class="transition transform fixed z-100 bottom-0 inset-x-0 pb-2 sm:pb-5 w-96 " style="display:none;" >
			<div class="max-w-screen-xl mx-auto px-2 sm:px-4">
				<div class="p-2 rounded-lg bg-gray-900 shadow-lg sm:p-3">
					<div class="flex items-center justify-between flex-wrap">
						<div class="w-0 flex-1 flex items-center">
							<p class="ml-3 font-medium text-white truncate mb-0">
								<span class="lg:hidden">
									<span class="sr-only">Tailwind UI</span> is coming next week!
								</span>
								<span class="hidden lg:inline text-gray-400">
									<strong class="text-white font-semibold mr-1">Coming next week!</strong>
									<span class="xl:hidden">Something awesome.</span>
									<span class="hidden xl:inline">Cookies message maybe</span>
								</span>
							</p>
						</div>
						<div class="order-3 mt-2 flex-shrink-0 w-full sm:order-2 sm:mt-0 sm:w-auto">
							<div class="rounded-md shadow-sm">
								<b class="flex items-center justify-center px-4 py-2 border border-transparent text-sm leading-5 font-medium rounded-md text-gray-900 bg-white hover:text-gray-800 focus:outline-none focus:underline">
									Learn more
								</b>
							</div>
						</div>
						<div class="order-2 flex-shrink-0 sm:order-3 sm:ml-2">
							<button role="button" aria-label="Close cookies popup"  @click="localStorage.setItem('hideBanner', true); show = false" type="button" class="-mr-1 flex p-2 rounded-md hover:bg-gray-800 focus:outline-none focus:bg-gray-800">
								<svg class="h-6 w-6 text-white" stroke="currentColor" fill="none" viewBox="0 0 24 24">
									<path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12"></path>
								</svg>
							</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
{/block}
