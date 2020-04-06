{layout_section class="bg-gray-100 py-5"}
{layout_container}
	<div class="flex justify-between">
		<div class="w-full md:w-6/12 md:mr-10">
			<h2 class="text-3xl text-blue-950">{$title|default:'Need some advice?'}</h2>
			<p class="text-xl font-light text-blue-950">{$sub|default:'Looking to utilise digital technology to streamline your operations or launch new products and services, contact our digital strategy director Mark for afree consultation.'}</p>
			<button onclick="Calendly.initPopupWidget({ 'url': 'https://calendly.com/mark-probert/30-mins-call' });return false;" class="mt-5 btn btn-outline-primary px-12 py-4 btn-fx border-blue-950 text-blue-950">
				Book a call
			</button>
			<div class="absolute bottom-5 -mb-12 left-20">
			<svg class="-rotate-180 sm:hidden transform md:rotate-0 pl-5 ml-10" width="70" height="62" xmlns="http://www.w3.org/2000/svg"><g fill="#0067FF" stroke="#0067FF" fill-rule="evenodd"><path d="M67.772 1.299c.43-.61 1.314.142.886.75C52.422 25.155 34.273 50.069 5.61 57.896c-.716.196-1.124-.892-.403-1.089C33.69 49.028 51.645 24.25 67.772 1.3z"/><path d="M2.53 57.636a1441.56 1441.56 0 008.22 2.403c.712.204.517 1.35-.2 1.143l-9.291-2.675c-.476-.136-.66-.724-.233-1.047 1.739-1.306 2.443-3.386 1.823-5.48-.212-.713.876-1.12 1.089-.402.77 2.602.767 4.423-1.408 6.058z"/></g></svg>
			<b class="sm:hidden ni-freehand text-2xl md:text-3xl block -mt-5 whitespace-no-wrap" style="transform:rotate(5deg)">Speak to Mark</b>
			</div>
		</div>
		<div class="absolute md:static bottom-5 right-5 sm:bottom-8 sm:right-16 md:mt-0 md:mr-0">
			<img class="w-32 border-4 sm:w-36 md:w-64 md:border-8 border-white rounded-full " src="{asset path='/images/temp/callout-image-2.png'}" alt="" width="250" height="250">
		</div>
		<div class="ml-10 hidden sm:block">
			<b class="ni-freehand text-2xl md:text-3xl block whitespace-no-wrap" style="transform:rotate(5deg)">Speak to Mark</b>
			<svg width="70" height="62" xmlns="http://www.w3.org/2000/svg"><g fill="#0067FF" stroke="#0067FF" fill-rule="evenodd"><path d="M67.772 1.299c.43-.61 1.314.142.886.75C52.422 25.155 34.273 50.069 5.61 57.896c-.716.196-1.124-.892-.403-1.089C33.69 49.028 51.645 24.25 67.772 1.3z"/><path d="M2.53 57.636a1441.56 1441.56 0 008.22 2.403c.712.204.517 1.35-.2 1.143l-9.291-2.675c-.476-.136-.66-.724-.233-1.047 1.739-1.306 2.443-3.386 1.823-5.48-.212-.713.876-1.12 1.089-.402.77 2.602.767 4.423-1.408 6.058z"/></g></svg>
		</div>
	</div>
{/layout_container}
{/layout_section}