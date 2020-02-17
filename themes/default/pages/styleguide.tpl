{extends "layouts/layout.tpl"}
{block "header"}
    {navigation}
{/block}
{block "content"}

<style>
	.caveat { font-family: caveat   color: #0067FF; }
	.trashhand { font-family: TrashHand, Arial ; color: #0067FF; }
	.trashhand { font-family: TrashHand, Arial ; color: #0067FF; font-size:24px; line-height: 32px; }
</style>


	<section class="container m-auto max-w-screen-lg px-10">
		<h1 class="text-6xl">Styleguide</h1>
		<h1>h1. Typography</h1>
		<h2>h2. Typography</h2>
		<h3>h3. Typography</h3>
		<h4>h4. Typography</h4>
		<h5>h5. Typography</h5>
		<h6>h6. Typography</h6>
	</section>


	<section class="container m-auto my-32 max-w-screen-lg px-10">
		<h1>Example h1 text</h1>
		<p>Here is an opening paragraph - some default styling is applied. </p>
		<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. </p>
		<blockquote>That's what she said... hmmm mmm.</blockquote>
		<p>An unorddered list</p>
		<ul class="list-disc ml-5">
			<li>Item one</li>
			<li>Item two</li>
			<li>Item three</li>
		</ul>
		<h2>A Second Heading</h2>
		<p>What shall we get at the shops?</p>
		<ol>
			<li>Milk</li>
			<li>Cheese</li>
			<li>Eggs</li>
			<li>Bread</li>
			<li>Booze</li>
		</ol>
	</section>


	<section class="container m-auto max-w-screen-lg px-10">
		<hr>
		<h2 id="colors">Colors</h2>
		<div class="flex flex-wrap -mx-2 mt-0">
			<div class="px-2 w-full relative">
				<h3 class="markdown no-toc mb-4 mt-8" id="black-white"><a
							class="anchorjs-link text-gray-500 no-underline" aria-label="Anchor" data-anchorjs-icon="#"
							href="#black-white"
							style="position: absolute; margin-left: -1em; padding-right: 0.5em;"></a>Black &amp; White
				</h3>


				<div class="-mx-2 -mt-5 flex flex-wrap">
					<div class="w-1/2 md:w-1/3 px-2">
						{include file="./_styleguide/_color.tpl" class="bg-black" hex="000000"}
					</div>
					<div class="w-1/2 md:w-1/3 px-2">
						{include file="./_styleguide/_color.tpl" class="bg-white" hex="FFFFFF"}
					</div>
				</div>
			</div>
			<div class="w-1/2 px-2 md:w-full relative mt-4">
				<h3 class="markdown no-toc mb-4 mt-8" id="gray">
					<a class="anchorjs-link text-gray-500 no-underline" aria-label="Anchor" data-anchorjs-icon="#" href="#gray" style="position: absolute; margin-left: -1em; padding-right: 0.5em;"></a>
					Gray
				</h3>
				<div class="md:-mx-2 md:-mt-5 md:flex md:flex-wrap">
					<div class="md:w-1/3 md:px-2">
                        {include file="./_styleguide/_color.tpl" class="bg-gray-100" hex="F7FAFC"}
                        {include file="./_styleguide/_color.tpl" class="bg-gray-200" hex="EDF2F7"}
                        {include file="./_styleguide/_color.tpl" class="bg-gray-300" hex="E2E8F0"}
					</div>
					<div class="md:w-1/3 md:px-2">
                        {include file="./_styleguide/_color.tpl" class="bg-gray-400" hex="CBD5E0"}
                        {include file="./_styleguide/_color.tpl" class="bg-gray-500" hex="A0AEC0"}
                        {include file="./_styleguide/_color.tpl" class="bg-gray-600" hex="718096"}
					</div>
					<div class="md:w-1/3 md:px-2">
                        {include file="./_styleguide/_color.tpl" class="bg-gray-700" hex="4A5568"}
                        {include file="./_styleguide/_color.tpl" class="bg-gray-800" hex="2D3748"}
                        {include file="./_styleguide/_color.tpl" class="bg-gray-900" hex="1A202C"}
					</div>
				</div>
			</div>

			<div class="w-1/2 px-2 md:w-full relative mt-4">
				<h3 class="markdown no-toc mb-4 mt-8" id="blue">
					<a class="anchorjs-link text-gray-500 no-underline" aria-label="Anchor" data-anchorjs-icon="#" href="#blue" style="position: absolute; margin-left: -1em; padding-right: 0.5em;"></a>Blue
				</h3>
				<div class="md:-mx-2 md:-mt-5 md:flex md:flex-wrap">
					<div class="md:w-1/3 md:px-2">
                        {include file="./_styleguide/_color.tpl" class="bg-blue-100" hex="EFF7FC"}
                        {include file="./_styleguide/_color.tpl" class="bg-blue-200" hex="dce3f3"}
                        {include file="./_styleguide/_color.tpl" class="bg-blue-300" hex="81cbff"}
					</div>
					<div class="md:w-1/3 md:px-2">
                        {include file="./_styleguide/_color.tpl" class="bg-blue-400" hex="0096ff"}
                        {include file="./_styleguide/_color.tpl" class="bg-blue-500" hex="0067FF"}
                        {include file="./_styleguide/_color.tpl" class="bg-blue-600" hex="1254cc"}
					</div>
					<div class="md:w-1/3 md:px-2">
                        {include file="./_styleguide/_color.tpl" class="bg-blue-700" hex="1c4ea7"}
                        {include file="./_styleguide/_color.tpl" class="bg-blue-800" hex="03296e"}
                        {include file="./_styleguide/_color.tpl" class="bg-blue-900" hex="072261"}
					</div>
				</div>
			</div>
			<div class="w-full mt-4">
				<h3 class="markdown no-toc mb-4 mt-8" id="indigo">The following colors are default tailwind and have not yet been Newiconised</h3>
				<hr>
			</div>


			<div class="w-1/2 px-2 md:w-full relative mt-4">
				<h3 class="markdown no-toc mb-4 mt-8" id="indigo"><a
							class="anchorjs-link text-gray-500 no-underline" aria-label="Anchor" data-anchorjs-icon="#"
							href="#indigo" style="position: absolute; margin-left: -1em; padding-right: 0.5em;"></a>Indigo</h3>
				<div class="md:-mx-2 md:-mt-5 md:flex md:flex-wrap">
					<div class="md:w-1/3 md:px-2">
						<div class="flex items-center mt-5">
							<div class="h-12 w-12 rounded-lg shadow-inner bg-indigo-100"></div>
							<div class="ml-2 text-gray-800 text-xs leading-none pl-1">
								<div class="font-semibold">100</div>
								<div class="mt-1 font-normal opacity-75">#EBF4FF</div>
							</div>
						</div>
						<div class="flex items-center mt-5">
							<div class="h-12 w-12 rounded-lg shadow-inner bg-indigo-200"></div>
							<div class="ml-2 text-gray-800 text-xs leading-none pl-1">
								<div class="font-semibold">200</div>
								<div class="mt-1 font-normal opacity-75">#C3DAFE</div>
							</div>
						</div>
						<div class="flex items-center mt-5">
							<div class="h-12 w-12 rounded-lg shadow-inner bg-indigo-300"></div>
							<div class="ml-2 text-gray-800 text-xs leading-none pl-1">
								<div class="font-semibold">300</div>
								<div class="mt-1 font-normal opacity-75">#A3BFFA</div>
							</div>
						</div>
					</div>
					<div class="md:w-1/3 md:px-2">
						<div class="flex items-center mt-5">
							<div class="h-12 w-12 rounded-lg shadow-inner bg-indigo-400"></div>
							<div class="ml-2 text-gray-800 text-xs leading-none pl-1">
								<div class="font-semibold">400</div>
								<div class="mt-1 font-normal opacity-75">#7F9CF5</div>
							</div>
						</div>
						<div class="flex items-center mt-5">
							<div class="h-12 w-12 rounded-lg shadow-inner bg-indigo-500"></div>
							<div class="ml-2 text-gray-800 text-xs leading-none pl-1">
								<div class="font-semibold">500</div>
								<div class="mt-1 font-normal opacity-75">#667EEA</div>
							</div>
						</div>
						<div class="flex items-center mt-5">
							<div class="h-12 w-12 rounded-lg shadow-inner bg-indigo-600"></div>
							<div class="ml-2 text-gray-800 text-xs leading-none pl-1">
								<div class="font-semibold">600</div>
								<div class="mt-1 font-normal opacity-75">#5A67D8</div>
							</div>
						</div>
					</div>
					<div class="md:w-1/3 md:px-2">
						<div class="flex items-center mt-5">
							<div class="h-12 w-12 rounded-lg shadow-inner bg-indigo-700"></div>
							<div class="ml-2 text-gray-800 text-xs leading-none pl-1">
								<div class="font-semibold">700</div>
								<div class="mt-1 font-normal opacity-75">#4C51BF</div>
							</div>
						</div>
						<div class="flex items-center mt-5">
							<div class="h-12 w-12 rounded-lg shadow-inner bg-indigo-800"></div>
							<div class="ml-2 text-gray-800 text-xs leading-none pl-1">
								<div class="font-semibold">800</div>
								<div class="mt-1 font-normal opacity-75">#434190</div>
							</div>
						</div>
						<div class="flex items-center mt-5">
							<div class="h-12 w-12 rounded-lg shadow-inner bg-indigo-900"></div>
							<div class="ml-2 text-gray-800 text-xs leading-none pl-1">
								<div class="font-semibold">900</div>
								<div class="mt-1 font-normal opacity-75">#3C366B</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="w-1/2 px-2 md:w-full relative mt-4"><h3 class="markdown no-toc mb-4 mt-8" id="purple"><a
							class="anchorjs-link text-gray-500 no-underline" aria-label="Anchor" data-anchorjs-icon="#"
							href="#purple" style="position: absolute; margin-left: -1em; padding-right: 0.5em;"></a>Purple
				</h3>
				<div class="md:-mx-2 md:-mt-5 md:flex md:flex-wrap">
					<div class="md:w-1/3 md:px-2">
						<div class="flex items-center mt-5">
							<div class="h-12 w-12 rounded-lg shadow-inner bg-purple-100"></div>
							<div class="ml-2 text-gray-800 text-xs leading-none pl-1">
								<div class="font-semibold">100</div>
								<div class="mt-1 font-normal opacity-75">#FAF5FF</div>
							</div>
						</div>
						<div class="flex items-center mt-5">
							<div class="h-12 w-12 rounded-lg shadow-inner bg-purple-200"></div>
							<div class="ml-2 text-gray-800 text-xs leading-none pl-1">
								<div class="font-semibold">200</div>
								<div class="mt-1 font-normal opacity-75">#E9D8FD</div>
							</div>
						</div>
						<div class="flex items-center mt-5">
							<div class="h-12 w-12 rounded-lg shadow-inner bg-purple-300"></div>
							<div class="ml-2 text-gray-800 text-xs leading-none pl-1">
								<div class="font-semibold">300</div>
								<div class="mt-1 font-normal opacity-75">#D6BCFA</div>
							</div>
						</div>
					</div>
					<div class="md:w-1/3 md:px-2">
						<div class="flex items-center mt-5">
							<div class="h-12 w-12 rounded-lg shadow-inner bg-purple-400"></div>
							<div class="ml-2 text-gray-800 text-xs leading-none pl-1">
								<div class="font-semibold">400</div>
								<div class="mt-1 font-normal opacity-75">#B794F4</div>
							</div>
						</div>
						<div class="flex items-center mt-5">
							<div class="h-12 w-12 rounded-lg shadow-inner bg-purple-500"></div>
							<div class="ml-2 text-gray-800 text-xs leading-none pl-1">
								<div class="font-semibold">500</div>
								<div class="mt-1 font-normal opacity-75">#9F7AEA</div>
							</div>
						</div>
						<div class="flex items-center mt-5">
							<div class="h-12 w-12 rounded-lg shadow-inner bg-purple-600"></div>
							<div class="ml-2 text-gray-800 text-xs leading-none pl-1">
								<div class="font-semibold">600</div>
								<div class="mt-1 font-normal opacity-75">#805AD5</div>
							</div>
						</div>
					</div>
					<div class="md:w-1/3 md:px-2">
						<div class="flex items-center mt-5">
							<div class="h-12 w-12 rounded-lg shadow-inner bg-purple-700"></div>
							<div class="ml-2 text-gray-800 text-xs leading-none pl-1">
								<div class="font-semibold">700</div>
								<div class="mt-1 font-normal opacity-75">#6B46C1</div>
							</div>
						</div>
						<div class="flex items-center mt-5">
							<div class="h-12 w-12 rounded-lg shadow-inner bg-purple-800"></div>
							<div class="ml-2 text-gray-800 text-xs leading-none pl-1">
								<div class="font-semibold">800</div>
								<div class="mt-1 font-normal opacity-75">#553C9A</div>
							</div>
						</div>
						<div class="flex items-center mt-5">
							<div class="h-12 w-12 rounded-lg shadow-inner bg-purple-900"></div>
							<div class="ml-2 text-gray-800 text-xs leading-none pl-1">
								<div class="font-semibold">900</div>
								<div class="mt-1 font-normal opacity-75">#44337A</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="w-1/2 px-2 md:w-full relative mt-4">
				<h3 class="markdown no-toc mb-4 mt-8" id="pink"><a class="anchorjs-link text-gray-500 no-underline" aria-label="Anchor" data-anchorjs-icon="#" href="#pink" style="position: absolute; margin-left: -1em; padding-right: 0.5em;"></a>Pink</h3>
				<div class="md:-mx-2 md:-mt-5 md:flex md:flex-wrap">
					<div class="md:w-1/3 md:px-2">
						<div class="flex items-center mt-5">
							<div class="h-12 w-12 rounded-lg shadow-inner bg-pink-100"></div>
							<div class="ml-2 text-gray-800 text-xs leading-none pl-1">
								<div class="font-semibold">100</div>
								<div class="mt-1 font-normal opacity-75">#FFF5F7</div>
							</div>
						</div>
						<div class="flex items-center mt-5">
							<div class="h-12 w-12 rounded-lg shadow-inner bg-pink-200"></div>
							<div class="ml-2 text-gray-800 text-xs leading-none pl-1">
								<div class="font-semibold">200</div>
								<div class="mt-1 font-normal opacity-75">#FED7E2</div>
							</div>
						</div>
						<div class="flex items-center mt-5">
							<div class="h-12 w-12 rounded-lg shadow-inner bg-pink-300"></div>
							<div class="ml-2 text-gray-800 text-xs leading-none pl-1">
								<div class="font-semibold">300</div>
								<div class="mt-1 font-normal opacity-75">#FBB6CE</div>
							</div>
						</div>
					</div>
					<div class="md:w-1/3 md:px-2">
						<div class="flex items-center mt-5">
							<div class="h-12 w-12 rounded-lg shadow-inner bg-pink-400"></div>
							<div class="ml-2 text-gray-800 text-xs leading-none pl-1">
								<div class="font-semibold">400</div>
								<div class="mt-1 font-normal opacity-75">#F687B3</div>
							</div>
						</div>
						<div class="flex items-center mt-5">
							<div class="h-12 w-12 rounded-lg shadow-inner bg-pink-500"></div>
							<div class="ml-2 text-gray-800 text-xs leading-none pl-1">
								<div class="font-semibold">500</div>
								<div class="mt-1 font-normal opacity-75">#ED64A6</div>
							</div>
						</div>
						<div class="flex items-center mt-5">
							<div class="h-12 w-12 rounded-lg shadow-inner bg-pink-600"></div>
							<div class="ml-2 text-gray-800 text-xs leading-none pl-1">
								<div class="font-semibold">600</div>
								<div class="mt-1 font-normal opacity-75">#D53F8C</div>
							</div>
						</div>
					</div>
					<div class="md:w-1/3 md:px-2">
						<div class="flex items-center mt-5">
							<div class="h-12 w-12 rounded-lg shadow-inner bg-pink-700"></div>
							<div class="ml-2 text-gray-800 text-xs leading-none pl-1">
								<div class="font-semibold">700</div>
								<div class="mt-1 font-normal opacity-75">#B83280</div>
							</div>
						</div>
						<div class="flex items-center mt-5">
							<div class="h-12 w-12 rounded-lg shadow-inner bg-pink-800"></div>
							<div class="ml-2 text-gray-800 text-xs leading-none pl-1">
								<div class="font-semibold">800</div>
								<div class="mt-1 font-normal opacity-75">#97266D</div>
							</div>
						</div>
						<div class="flex items-center mt-5">
							<div class="h-12 w-12 rounded-lg shadow-inner bg-pink-900"></div>
							<div class="ml-2 text-gray-800 text-xs leading-none pl-1">
								<div class="font-semibold">900</div>
								<div class="mt-1 font-normal opacity-75">#702459</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="w-1/2 px-2 md:w-full relative mt-4"><h3 class="markdown no-toc mb-4 mt-8" id="red"><a
							class="anchorjs-link text-gray-500 no-underline" aria-label="Anchor" data-anchorjs-icon="#"
							href="#red" style="position: absolute; margin-left: -1em; padding-right: 0.5em;"></a>Red
				</h3>
				<div class="md:-mx-2 md:-mt-5 md:flex md:flex-wrap">
					<div class="md:w-1/3 md:px-2">
						<div class="flex items-center mt-5">
							<div class="h-12 w-12 rounded-lg shadow-inner bg-red-100"></div>
							<div class="ml-2 text-gray-800 text-xs leading-none pl-1">
								<div class="font-semibold">100</div>
								<div class="mt-1 font-normal opacity-75">#FFF5F5</div>
							</div>
						</div>
						<div class="flex items-center mt-5">
							<div class="h-12 w-12 rounded-lg shadow-inner bg-red-200"></div>
							<div class="ml-2 text-gray-800 text-xs leading-none pl-1">
								<div class="font-semibold">200</div>
								<div class="mt-1 font-normal opacity-75">#FED7D7</div>
							</div>
						</div>
						<div class="flex items-center mt-5">
							<div class="h-12 w-12 rounded-lg shadow-inner bg-red-300"></div>
							<div class="ml-2 text-gray-800 text-xs leading-none pl-1">
								<div class="font-semibold">300</div>
								<div class="mt-1 font-normal opacity-75">#FEB2B2</div>
							</div>
						</div>
					</div>
					<div class="md:w-1/3 md:px-2">
						<div class="flex items-center mt-5">
							<div class="h-12 w-12 rounded-lg shadow-inner bg-red-400"></div>
							<div class="ml-2 text-gray-800 text-xs leading-none pl-1">
								<div class="font-semibold">400</div>
								<div class="mt-1 font-normal opacity-75">#FC8181</div>
							</div>
						</div>
						<div class="flex items-center mt-5">
							<div class="h-12 w-12 rounded-lg shadow-inner bg-red-500"></div>
							<div class="ml-2 text-gray-800 text-xs leading-none pl-1">
								<div class="font-semibold">500</div>
								<div class="mt-1 font-normal opacity-75">#F56565</div>
							</div>
						</div>
						<div class="flex items-center mt-5">
							<div class="h-12 w-12 rounded-lg shadow-inner bg-red-600"></div>
							<div class="ml-2 text-gray-800 text-xs leading-none pl-1">
								<div class="font-semibold">600</div>
								<div class="mt-1 font-normal opacity-75">#E53E3E</div>
							</div>
						</div>
					</div>
					<div class="md:w-1/3 md:px-2">
						<div class="flex items-center mt-5">
							<div class="h-12 w-12 rounded-lg shadow-inner bg-red-700"></div>
							<div class="ml-2 text-gray-800 text-xs leading-none pl-1">
								<div class="font-semibold">700</div>
								<div class="mt-1 font-normal opacity-75">#C53030</div>
							</div>
						</div>
						<div class="flex items-center mt-5">
							<div class="h-12 w-12 rounded-lg shadow-inner bg-red-800"></div>
							<div class="ml-2 text-gray-800 text-xs leading-none pl-1">
								<div class="font-semibold">800</div>
								<div class="mt-1 font-normal opacity-75">#9B2C2C</div>
							</div>
						</div>
						<div class="flex items-center mt-5">
							<div class="h-12 w-12 rounded-lg shadow-inner bg-red-900"></div>
							<div class="ml-2 text-gray-800 text-xs leading-none pl-1">
								<div class="font-semibold">900</div>
								<div class="mt-1 font-normal opacity-75">#742A2A</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="w-1/2 px-2 md:w-full relative mt-4"><h3 class="markdown no-toc mb-4 mt-8" id="orange"><a
							class="anchorjs-link text-gray-500 no-underline" aria-label="Anchor" data-anchorjs-icon="#"
							href="#orange" style="position: absolute; margin-left: -1em; padding-right: 0.5em;"></a>Orange
				</h3>
				<div class="md:-mx-2 md:-mt-5 md:flex md:flex-wrap">
					<div class="md:w-1/3 md:px-2">
						<div class="flex items-center mt-5">
							<div class="h-12 w-12 rounded-lg shadow-inner bg-orange-100"></div>
							<div class="ml-2 text-gray-800 text-xs leading-none pl-1">
								<div class="font-semibold">100</div>
								<div class="mt-1 font-normal opacity-75">#FFFAF0</div>
							</div>
						</div>
						<div class="flex items-center mt-5">
							<div class="h-12 w-12 rounded-lg shadow-inner bg-orange-200"></div>
							<div class="ml-2 text-gray-800 text-xs leading-none pl-1">
								<div class="font-semibold">200</div>
								<div class="mt-1 font-normal opacity-75">#FEEBC8</div>
							</div>
						</div>
						<div class="flex items-center mt-5">
							<div class="h-12 w-12 rounded-lg shadow-inner bg-orange-300"></div>
							<div class="ml-2 text-gray-800 text-xs leading-none pl-1">
								<div class="font-semibold">300</div>
								<div class="mt-1 font-normal opacity-75">#FBD38D</div>
							</div>
						</div>
					</div>
					<div class="md:w-1/3 md:px-2">
						<div class="flex items-center mt-5">
							<div class="h-12 w-12 rounded-lg shadow-inner bg-orange-400"></div>
							<div class="ml-2 text-gray-800 text-xs leading-none pl-1">
								<div class="font-semibold">400</div>
								<div class="mt-1 font-normal opacity-75">#F6AD55</div>
							</div>
						</div>
						<div class="flex items-center mt-5">
							<div class="h-12 w-12 rounded-lg shadow-inner bg-orange-500"></div>
							<div class="ml-2 text-gray-800 text-xs leading-none pl-1">
								<div class="font-semibold">500</div>
								<div class="mt-1 font-normal opacity-75">#ED8936</div>
							</div>
						</div>
						<div class="flex items-center mt-5">
							<div class="h-12 w-12 rounded-lg shadow-inner bg-orange-600"></div>
							<div class="ml-2 text-gray-800 text-xs leading-none pl-1">
								<div class="font-semibold">600</div>
								<div class="mt-1 font-normal opacity-75">#DD6B20</div>
							</div>
						</div>
					</div>
					<div class="md:w-1/3 md:px-2">
						<div class="flex items-center mt-5">
							<div class="h-12 w-12 rounded-lg shadow-inner bg-orange-700"></div>
							<div class="ml-2 text-gray-800 text-xs leading-none pl-1">
								<div class="font-semibold">700</div>
								<div class="mt-1 font-normal opacity-75">#C05621</div>
							</div>
						</div>
						<div class="flex items-center mt-5">
							<div class="h-12 w-12 rounded-lg shadow-inner bg-orange-800"></div>
							<div class="ml-2 text-gray-800 text-xs leading-none pl-1">
								<div class="font-semibold">800</div>
								<div class="mt-1 font-normal opacity-75">#9C4221</div>
							</div>
						</div>
						<div class="flex items-center mt-5">
							<div class="h-12 w-12 rounded-lg shadow-inner bg-orange-900"></div>
							<div class="ml-2 text-gray-800 text-xs leading-none pl-1">
								<div class="font-semibold">900</div>
								<div class="mt-1 font-normal opacity-75">#7B341E</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="w-1/2 px-2 md:w-full relative mt-4"><h3 class="markdown no-toc mb-4 mt-8" id="yellow"><a
							class="anchorjs-link text-gray-500 no-underline" aria-label="Anchor" data-anchorjs-icon="#"
							href="#yellow" style="position: absolute; margin-left: -1em; padding-right: 0.5em;"></a>Yellow
				</h3>
				<div class="md:-mx-2 md:-mt-5 md:flex md:flex-wrap">
					<div class="md:w-1/3 md:px-2">
						<div class="flex items-center mt-5">
							<div class="h-12 w-12 rounded-lg shadow-inner bg-yellow-100"></div>
							<div class="ml-2 text-gray-800 text-xs leading-none pl-1">
								<div class="font-semibold">100</div>
								<div class="mt-1 font-normal opacity-75">#FFFFF0</div>
							</div>
						</div>
						<div class="flex items-center mt-5">
							<div class="h-12 w-12 rounded-lg shadow-inner bg-yellow-200"></div>
							<div class="ml-2 text-gray-800 text-xs leading-none pl-1">
								<div class="font-semibold">200</div>
								<div class="mt-1 font-normal opacity-75">#FEFCBF</div>
							</div>
						</div>
						<div class="flex items-center mt-5">
							<div class="h-12 w-12 rounded-lg shadow-inner bg-yellow-300"></div>
							<div class="ml-2 text-gray-800 text-xs leading-none pl-1">
								<div class="font-semibold">300</div>
								<div class="mt-1 font-normal opacity-75">#FAF089</div>
							</div>
						</div>
					</div>
					<div class="md:w-1/3 md:px-2">
						<div class="flex items-center mt-5">
							<div class="h-12 w-12 rounded-lg shadow-inner bg-yellow-400"></div>
							<div class="ml-2 text-gray-800 text-xs leading-none pl-1">
								<div class="font-semibold">400</div>
								<div class="mt-1 font-normal opacity-75">#F6E05E</div>
							</div>
						</div>
						<div class="flex items-center mt-5">
							<div class="h-12 w-12 rounded-lg shadow-inner bg-yellow-500"></div>
							<div class="ml-2 text-gray-800 text-xs leading-none pl-1">
								<div class="font-semibold">500</div>
								<div class="mt-1 font-normal opacity-75">#ECC94B</div>
							</div>
						</div>
						<div class="flex items-center mt-5">
							<div class="h-12 w-12 rounded-lg shadow-inner bg-yellow-600"></div>
							<div class="ml-2 text-gray-800 text-xs leading-none pl-1">
								<div class="font-semibold">600</div>
								<div class="mt-1 font-normal opacity-75">#D69E2E</div>
							</div>
						</div>
					</div>
					<div class="md:w-1/3 md:px-2">
						<div class="flex items-center mt-5">
							<div class="h-12 w-12 rounded-lg shadow-inner bg-yellow-700"></div>
							<div class="ml-2 text-gray-800 text-xs leading-none pl-1">
								<div class="font-semibold">700</div>
								<div class="mt-1 font-normal opacity-75">#B7791F</div>
							</div>
						</div>
						<div class="flex items-center mt-5">
							<div class="h-12 w-12 rounded-lg shadow-inner bg-yellow-800"></div>
							<div class="ml-2 text-gray-800 text-xs leading-none pl-1">
								<div class="font-semibold">800</div>
								<div class="mt-1 font-normal opacity-75">#975A16</div>
							</div>
						</div>
						<div class="flex items-center mt-5">
							<div class="h-12 w-12 rounded-lg shadow-inner bg-yellow-900"></div>
							<div class="ml-2 text-gray-800 text-xs leading-none pl-1">
								<div class="font-semibold">900</div>
								<div class="mt-1 font-normal opacity-75">#744210</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="w-1/2 px-2 md:w-full relative mt-4"><h3 class="markdown no-toc mb-4 mt-8" id="green"><a
							class="anchorjs-link text-gray-500 no-underline" aria-label="Anchor" data-anchorjs-icon="#"
							href="#green" style="position: absolute; margin-left: -1em; padding-right: 0.5em;"></a>Green
				</h3>
				<div class="md:-mx-2 md:-mt-5 md:flex md:flex-wrap">
					<div class="md:w-1/3 md:px-2">
						<div class="flex items-center mt-5">
							<div class="h-12 w-12 rounded-lg shadow-inner bg-green-100"></div>
							<div class="ml-2 text-gray-800 text-xs leading-none pl-1">
								<div class="font-semibold">100</div>
								<div class="mt-1 font-normal opacity-75">#F0FFF4</div>
							</div>
						</div>
						<div class="flex items-center mt-5">
							<div class="h-12 w-12 rounded-lg shadow-inner bg-green-200"></div>
							<div class="ml-2 text-gray-800 text-xs leading-none pl-1">
								<div class="font-semibold">200</div>
								<div class="mt-1 font-normal opacity-75">#C6F6D5</div>
							</div>
						</div>
						<div class="flex items-center mt-5">
							<div class="h-12 w-12 rounded-lg shadow-inner bg-green-300"></div>
							<div class="ml-2 text-gray-800 text-xs leading-none pl-1">
								<div class="font-semibold">300</div>
								<div class="mt-1 font-normal opacity-75">#9AE6B4</div>
							</div>
						</div>
					</div>
					<div class="md:w-1/3 md:px-2">
						<div class="flex items-center mt-5">
							<div class="h-12 w-12 rounded-lg shadow-inner bg-green-400"></div>
							<div class="ml-2 text-gray-800 text-xs leading-none pl-1">
								<div class="font-semibold">400</div>
								<div class="mt-1 font-normal opacity-75">#68D391</div>
							</div>
						</div>
						<div class="flex items-center mt-5">
							<div class="h-12 w-12 rounded-lg shadow-inner bg-green-500"></div>
							<div class="ml-2 text-gray-800 text-xs leading-none pl-1">
								<div class="font-semibold">500</div>
								<div class="mt-1 font-normal opacity-75">#48BB78</div>
							</div>
						</div>
						<div class="flex items-center mt-5">
							<div class="h-12 w-12 rounded-lg shadow-inner bg-green-600"></div>
							<div class="ml-2 text-gray-800 text-xs leading-none pl-1">
								<div class="font-semibold">600</div>
								<div class="mt-1 font-normal opacity-75">#38A169</div>
							</div>
						</div>
					</div>
					<div class="md:w-1/3 md:px-2">
						<div class="flex items-center mt-5">
							<div class="h-12 w-12 rounded-lg shadow-inner bg-green-700"></div>
							<div class="ml-2 text-gray-800 text-xs leading-none pl-1">
								<div class="font-semibold">700</div>
								<div class="mt-1 font-normal opacity-75">#2F855A</div>
							</div>
						</div>
						<div class="flex items-center mt-5">
							<div class="h-12 w-12 rounded-lg shadow-inner bg-green-800"></div>
							<div class="ml-2 text-gray-800 text-xs leading-none pl-1">
								<div class="font-semibold">800</div>
								<div class="mt-1 font-normal opacity-75">#276749</div>
							</div>
						</div>
						<div class="flex items-center mt-5">
							<div class="h-12 w-12 rounded-lg shadow-inner bg-green-900"></div>
							<div class="ml-2 text-gray-800 text-xs leading-none pl-1">
								<div class="font-semibold">900</div>
								<div class="mt-1 font-normal opacity-75">#22543D</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="w-1/2 px-2 md:w-full relative mt-4"><h3 class="markdown no-toc mb-4 mt-8" id="teal"><a
							class="anchorjs-link text-gray-500 no-underline" aria-label="Anchor" data-anchorjs-icon="#"
							href="#teal" style="position: absolute; margin-left: -1em; padding-right: 0.5em;"></a>Teal
				</h3>
				<div class="md:-mx-2 md:-mt-5 md:flex md:flex-wrap">
					<div class="md:w-1/3 md:px-2">
						<div class="flex items-center mt-5">
							<div class="h-12 w-12 rounded-lg shadow-inner bg-teal-100"></div>
							<div class="ml-2 text-gray-800 text-xs leading-none pl-1">
								<div class="font-semibold">100</div>
								<div class="mt-1 font-normal opacity-75">#E6FFFA</div>
							</div>
						</div>
						<div class="flex items-center mt-5">
							<div class="h-12 w-12 rounded-lg shadow-inner bg-teal-200"></div>
							<div class="ml-2 text-gray-800 text-xs leading-none pl-1">
								<div class="font-semibold">200</div>
								<div class="mt-1 font-normal opacity-75">#B2F5EA</div>
							</div>
						</div>
						<div class="flex items-center mt-5">
							<div class="h-12 w-12 rounded-lg shadow-inner bg-teal-300"></div>
							<div class="ml-2 text-gray-800 text-xs leading-none pl-1">
								<div class="font-semibold">300</div>
								<div class="mt-1 font-normal opacity-75">#81E6D9</div>
							</div>
						</div>
					</div>
					<div class="md:w-1/3 md:px-2">
						<div class="flex items-center mt-5">
							<div class="h-12 w-12 rounded-lg shadow-inner bg-teal-400"></div>
							<div class="ml-2 text-gray-800 text-xs leading-none pl-1">
								<div class="font-semibold">400</div>
								<div class="mt-1 font-normal opacity-75">#4FD1C5</div>
							</div>
						</div>
						<div class="flex items-center mt-5">
							<div class="h-12 w-12 rounded-lg shadow-inner bg-teal-500"></div>
							<div class="ml-2 text-gray-800 text-xs leading-none pl-1">
								<div class="font-semibold">500</div>
								<div class="mt-1 font-normal opacity-75">#38B2AC</div>
							</div>
						</div>
						<div class="flex items-center mt-5">
							<div class="h-12 w-12 rounded-lg shadow-inner bg-teal-600"></div>
							<div class="ml-2 text-gray-800 text-xs leading-none pl-1">
								<div class="font-semibold">600</div>
								<div class="mt-1 font-normal opacity-75">#319795</div>
							</div>
						</div>
					</div>
					<div class="md:w-1/3 md:px-2">
						<div class="flex items-center mt-5">
							<div class="h-12 w-12 rounded-lg shadow-inner bg-teal-700"></div>
							<div class="ml-2 text-gray-800 text-xs leading-none pl-1">
								<div class="font-semibold">700</div>
								<div class="mt-1 font-normal opacity-75">#2C7A7B</div>
							</div>
						</div>
						<div class="flex items-center mt-5">
							<div class="h-12 w-12 rounded-lg shadow-inner bg-teal-800"></div>
							<div class="ml-2 text-gray-800 text-xs leading-none pl-1">
								<div class="font-semibold">800</div>
								<div class="mt-1 font-normal opacity-75">#285E61</div>
							</div>
						</div>
						<div class="flex items-center mt-5">
							<div class="h-12 w-12 rounded-lg shadow-inner bg-teal-900"></div>
							<div class="ml-2 text-gray-800 text-xs leading-none pl-1">
								<div class="font-semibold">900</div>
								<div class="mt-1 font-normal opacity-75">#234E52</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section class="container m-auto max-w-screen-lg px-10">
		<hr>
		<h2 id="colors">Text</h2>
		<div class="relative overflow-hidden mb-8"><div class="bg-white rounded-t-lg overflow-hidden border-t border-l border-r border-gray-400 p-4 "><div class="mb-6"><p class="text-sm text-gray-600">.text-xs</p> <p class="text-xs truncate text-gray-800">The quick brown fox jumped over the lazy dog.</p></div> <div class="mb-6"><p class="text-sm text-gray-600">.text-sm</p> <p class="text-sm truncate text-gray-800">The quick brown fox jumped over the lazy dog.</p></div> <div class="mb-6"><p class="text-sm text-gray-600">.text-base</p> <p class="text-base truncate text-gray-800">The quick brown fox jumped over the lazy dog.</p></div> <div class="mb-6"><p class="text-sm text-gray-600">.text-lg</p> <p class="text-lg truncate text-gray-800">The quick brown fox jumped over the lazy dog.</p></div> <div class="mb-6"><p class="text-sm text-gray-600">.text-xl</p> <p class="text-xl truncate text-gray-800">The quick brown fox jumped over the lazy dog.</p></div> <div class="mb-6"><p class="text-sm text-gray-600">.text-2xl</p> <p class="text-2xl truncate text-gray-800">The quick brown fox jumped over the lazy dog.</p></div> <div class="mb-6"><p class="text-sm text-gray-600">.text-3xl</p> <p class="text-3xl truncate text-gray-800">The quick brown fox jumped over the lazy dog.</p></div> <div class="mb-6"><p class="text-sm text-gray-600">.text-4xl</p> <p class="text-4xl truncate text-gray-800">The quick brown fox jumped over the lazy dog.</p></div> <div><p class="text-sm text-gray-600">.text-5xl</p> <p class="text-5xl truncate text-gray-800">The quick brown fox jumped over the lazy dog.</p></div> <div><p class="text-sm text-gray-600">.text-6xl</p> <p class="text-6xl truncate text-gray-800">The quick brown fox jumped over the lazy dog.</p></div></div> <div class="rounded-b-lg bg-gray-800"><pre class="scrollbar-none m-0 p-0  language-html"><code class="inline-block p-4 scrolling-touch  language-html"><span class="token tag"><span class="token tag"><span class="token punctuation">&lt;</span>p</span> <span class="token attr-name">class</span><span class="token attr-value"><span class="token punctuation">=</span><span class="token punctuation">"</span>text-xs ...<span class="token punctuation">"</span></span><span class="token punctuation">&gt;</span></span>The quick brown fox ...<span class="token tag"><span class="token tag"><span class="token punctuation">&lt;/</span>p</span><span class="token punctuation">&gt;</span></span>
		<span class="token tag"><span class="token tag"><span class="token punctuation">&lt;</span>p</span> <span class="token attr-name">class</span><span class="token attr-value"><span class="token punctuation">=</span><span class="token punctuation">"</span>text-sm ...<span class="token punctuation">"</span></span><span class="token punctuation">&gt;</span></span>The quick brown fox ...<span class="token tag"><span class="token tag"><span class="token punctuation">&lt;/</span>p</span><span class="token punctuation">&gt;</span></span>
		<span class="token tag"><span class="token tag"><span class="token punctuation">&lt;</span>p</span> <span class="token attr-name">class</span><span class="token attr-value"><span class="token punctuation">=</span><span class="token punctuation">"</span>text-base ...<span class="token punctuation">"</span></span><span class="token punctuation">&gt;</span></span>The quick brown fox ...<span class="token tag"><span class="token tag"><span class="token punctuation">&lt;/</span>p</span><span class="token punctuation">&gt;</span></span>
		<span class="token tag"><span class="token tag"><span class="token punctuation">&lt;</span>p</span> <span class="token attr-name">class</span><span class="token attr-value"><span class="token punctuation">=</span><span class="token punctuation">"</span>text-lg ...<span class="token punctuation">"</span></span><span class="token punctuation">&gt;</span></span>The quick brown fox ...<span class="token tag"><span class="token tag"><span class="token punctuation">&lt;/</span>p</span><span class="token punctuation">&gt;</span></span>
		<span class="token tag"><span class="token tag"><span class="token punctuation">&lt;</span>p</span> <span class="token attr-name">class</span><span class="token attr-value"><span class="token punctuation">=</span><span class="token punctuation">"</span>text-xl ...<span class="token punctuation">"</span></span><span class="token punctuation">&gt;</span></span>The quick brown fox ...<span class="token tag"><span class="token tag"><span class="token punctuation">&lt;/</span>p</span><span class="token punctuation">&gt;</span></span>
		<span class="token tag"><span class="token tag"><span class="token punctuation">&lt;</span>p</span> <span class="token attr-name">class</span><span class="token attr-value"><span class="token punctuation">=</span><span class="token punctuation">"</span>text-2xl ...<span class="token punctuation">"</span></span><span class="token punctuation">&gt;</span></span>The quick brown fox ...<span class="token tag"><span class="token tag"><span class="token punctuation">&lt;/</span>p</span><span class="token punctuation">&gt;</span></span>
		<span class="token tag"><span class="token tag"><span class="token punctuation">&lt;</span>p</span> <span class="token attr-name">class</span><span class="token attr-value"><span class="token punctuation">=</span><span class="token punctuation">"</span>text-3xl ...<span class="token punctuation">"</span></span><span class="token punctuation">&gt;</span></span>The quick brown fox ...<span class="token tag"><span class="token tag"><span class="token punctuation">&lt;/</span>p</span><span class="token punctuation">&gt;</span></span>
		<span class="token tag"><span class="token tag"><span class="token punctuation">&lt;</span>p</span> <span class="token attr-name">class</span><span class="token attr-value"><span class="token punctuation">=</span><span class="token punctuation">"</span>text-4xl ...<span class="token punctuation">"</span></span><span class="token punctuation">&gt;</span></span>The quick brown fox ...<span class="token tag"><span class="token tag"><span class="token punctuation">&lt;/</span>p</span><span class="token punctuation">&gt;</span></span>
		<span class="token tag"><span class="token tag"><span class="token punctuation">&lt;</span>p</span> <span class="token attr-name">class</span><span class="token attr-value"><span class="token punctuation">=</span><span class="token punctuation">"</span>text-5xl ...<span class="token punctuation">"</span></span><span class="token punctuation">&gt;</span></span>The quick brown fox ...<span class="token tag"><span class="token tag"><span class="token punctuation">&lt;/</span>p</span><span class="token punctuation">&gt;</span></span>
		<span class="token tag"><span class="token tag"><span class="token punctuation">&lt;</span>p</span> <span class="token attr-name">class</span><span class="token attr-value"><span class="token punctuation">=</span><span class="token punctuation">"</span>text-6xl ...<span class="token punctuation">"</span></span><span class="token punctuation">&gt;</span></span>The quick brown fox ...<span class="token tag"><span class="token tag"><span class="token punctuation">&lt;/</span>p</span><span class="token punctuation">&gt;</span></span></code></pre></div></div>

	</section>





{*        {hero_text*}
{*			title="Styleguide"*}
{*			bgTitle="Styleguide"*}
{*			subtitle="Newicon website styles"*}
{*			body="A summary of the main building blocks of the newicon site"*}
{*        }*}

{*		{static_block key="homepage_callout" wys=true}*}
{*			<p>We use design and software engineering to transform your future. Newicon. New tomorrow.</p>*}
{*          {/static_block}*}

{literal}
		<style>
			.card {margin-bottom: 30px;box-shadow: 0 15px 35px rgba(50,50,93,.1), 0 5px 15px rgba(0,0,0,.07);border: 0;}
			.cardBackground[data-animation=zooming] {transition: all .3s cubic-bezier(.2, 1, .22, 1);-webkit-transition: all .3s cubic-bezier(.2, 1, .22, 1);}
			.cardBackground {overflow: hidden;height: 530px;background-position: 50%;background-size: cover;text-align: center;}
			.card { position: relative; display: flex;flex-direction: column;min-width: 0;word-wrap: break-word;background-color: #fff;background-clip: border-box;border: .0625rem solid rgba(0,0,0,.05);border-radius: .5rem;}
			.cardBackground .card_background { background-position: 50%; background-size: cover;text-align: center;margin-bottom: 30px;width: 100%;height: 100%;position: absolute;border-radius: .5rem;backface-visibility: hidden;-webkit-backface-visibility: hidden;transition: all 1s cubic-bezier(.2,1,.22,1);-webkit-transition: all 1s cubic-bezier(.2,1,.22,1);}
			.cardBackground[data-animation=zooming]:hover { transform: scale(1.07);-webkit-transform: scale(1.07);z-index: 2;}
			.cardBackground[data-animation=true]:hover .card_background,
			.cardBackground[data-animation=zooming]:hover .card_background {transform: scale(1.1 );-webkit-transform: scale(1.1);}
			.cardBackground:after {position: absolute;top: 0;bottom: 0;left: 0;height: 100%;z-index: 1;width: 100%;display: block;content: "";background: rgba(0,0,0,.6);}
			.cardBackground[data-animation=zooming] .card_body {padding-bottom: 30px;margin: initial;height: 100%;}
			.cardBackground .card_body {position: relative;z-index: 2;min-height: 330px;padding-top: 60px;padding-bottom: 60px;}
			.card_body {flex: 1 1 auto;padding: 1.5rem;}
			.cardBackground .card_body .content_foot {position: absolute;bottom: 10px;text-align: left;color:white;}
			.card .card_title { margin-bottom: .5rem; }
		</style>
{/literal}

{*		<button type="button" class="btn btn-primary">Primary</button>*}
{*		<button type="button" class="btn btn-secondary">Secondary</button>*}
{*		<button type="button" class="btn btn-success">Success</button>*}
{*		<button type="button" class="btn btn-danger">Danger</button>*}
{*		<button type="button" class="btn btn-warning">Warning</button>*}
{*		<button type="button" class="btn btn-info">Info</button>*}
{*		<button type="button" class="btn btn-light">Light</button>*}
{*		<button type="button" class="btn btn-dark">Dark</button>*}
{*		<button type="button" class="btn btn-link">Link</button>*}

{*		{cmp class="neon\dev\widgets\NeonJsFiddle" activeTab="result"}*}
{*		{/cmp}*}
{*		{oi}*}
{*        {htmlExample}*}
{*			<button type="button" class="btn btn-primary">Primary</button>*}
{*			<button type="button" class="btn btn-secondary">Secondary</button>*}
{*			<button type="button" class="btn btn-success">Success</button>*}
{*			<button type="button" class="btn btn-danger">Danger</button>*}
{*			<button type="button" class="btn btn-warning">Warning</button>*}
{*			<button type="button" class="btn btn-info">Info</button>*}
{*			<button type="button" class="btn btn-light">Light</button>*}
{*			<button type="button" class="btn btn-dark">Dark</button>*}
{*			<button type="button" class="btn btn-link">Link</button>*}
{*        {/htmlExample}*}

{*		<div class="row mbm">*}
{*			<div class="col">*}
{*				<button class="btn btn-primary _shadow">btn btn-primary _shadow mrs</button>*}
{*			</div>*}
{*			<div class="col">*}
{*				<button class="btn btn-primary">btn btn-primary</button>*}
{*			</div>*}
{*			<div class="col">*}
{*				<button class="btn btn-default">btn btn-default</button>*}
{*			</div>*}
{*			<div class="col">*}

{*				<button class="btn btn-default _shadow" >btn btn-default _shadow</button>*}
{*			</div>*}
{*			<div class="col">*}
{*				<button class="btn btn-secondary _shadow" >btn btn-secondary _shadow</button>*}
{*			</div>*}
{*			<div class="col">*}
{*				<button class="btn btn-secondary btn-outline" >Here is a button outline</button>*}
{*			</div>*}
{*			<div class="col">*}
{*				<button class="btn btn-primary btn-outline" >Here is a button outline</button>*}
{*			</div>*}
{*		</div>*}

{*		<div class="row">*}
{*			<div class="col ">*}
{*				<div class="card cardBackground" data-animation="zooming">*}
{*					<div class="card_background" style="background-image: url('https://images.unsplash.com/photo-1568576157197-72cd17d47eed?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1999&q=80"></div>*}
{*					<a href="javascript:;" class="card_body">*}
{*						<div class="content_foot">*}
{*							<h6 class="text-white opacity-8">Spectrum</h6>*}
{*							<h5 class="card_title">Data Virtualization</h5>*}
{*						</div>*}
{*					</a>*}
{*				</div>*}
{*			</div>*}
{*			<div class="col ">*}
{*				<div class="card cardBackground" data-animation="zooming">*}
{*					<div class="card_background" style="background-image: url('https://images.unsplash.com/photo-1568576157197-72cd17d47eed?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1999&q=80"></div>*}
{*					<a href="javascript:;" class="card_body">*}
{*						<div class="content_foot">*}
{*							<h6 class="text-white opacity-8">Spectrum</h6>*}
{*							<h5 class="card_title">Data Virtualization</h5>*}
{*						</div>*}
{*					</a>*}
{*				</div>*}
{*			</div>*}
{*			<div class="col ">*}
{*				<div class="card cardBackground" data-animation="zooming">*}
{*					<div class="card_background" style="background-image: url('https://images.unsplash.com/photo-1463438690606-f6778b8c1d10?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2468&q=80"></div>*}
{*					<a href="javascript:;" class="card_body">*}
{*						<div class="content_foot">*}
{*							<h6 class="text-white opacity-8">Spectrum</h6>*}
{*							<h5 class="card_title">Data Virtualization</h5>*}
{*						</div>*}
{*					</a>*}
{*				</div>*}
{*			</div>*}
{*			<div class="col ">*}
{*				<div class="card cardBackground" data-animation="zooming">*}
{*					<div class="card_background" style="background-image: url('https://images.unsplash.com/photo-1463438690606-f6778b8c1d10?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2468&q=80"></div>*}
{*					<a class="card_body" href="javascript:;" >*}
{*						<div class="content_foot">*}
{*							<h6 class="text-white opacity-8">Spectrum</h6>*}
{*							<h5 class="card_title">Data Virtualization</h5>*}
{*						</div>*}
{*					</a>*}
{*				</div>*}
{*			</div>*}
{*		</div>*}

{*		<h1 style="font-size:50px; letter-spacing: 1px;color: black;"><span style="font-weight:700">new</span><span style="font-weight:300;padding-left:3px;" class="text-success" data-toggle="typed" data-options='{ "strings": ["thinking", "ideas", "tomorrow", "icon^5000"] }'></span></h1>*}

{*        {cmpy} THINGS {/cmpy}*}

{*	{c cmp="NeonColumns" }*}
{*		{c cmp="NeonColumn"}*}
{*			{c cmp='p'}hello{/c}*}
{*		{/c}*}
{*	{/c}*}

{*		{NeonColumns}*}
{*			{NeonCol}*}
{*	            {NeonColumns}*}
{*		            {NeonCol}*}
{*						<p>Hello!! col 1</p>*}
{*		            {/NeonCol}*}
{*		            {NeonCol}*}
{*						<p>Hello!! col 2</p>*}
{*		            {/NeonCol}*}
{*	            {/NeonColumns}*}
{*				<p>Hello!! col 1</p>*}
{*			{/NeonCol}*}
{*	        {NeonCol}*}
{*				<p>Hello!! col 2</p>*}
{*	        {/NeonCol}*}
{*		{/NeonColumns}*}
{*{NeonColumns}HELLO{NeonColumns}*}

{*        {editor id="dropzone1"}{/editor}*}
{*        {editor id="dropzone2"}*}
{*	        <!-- cmp:NeonColumns -->*}
{*	        <div class="row" style="padding:10px;">*}
{*		        <!-- cmp:NeonColumn -->*}
{*		        <div class="col" style="padding:10px;">*}
{*			        <!-- cmp:NeonThing -->*}
{*			        <div>HERE IS A THING</div>*}
{*			        *}
{*		        </div>*}
{*		        *}
{*		        <!-- cmp:NeonColumn -->*}
{*		        <div class="col" style="padding:10px;">*}
{*			        <!-- cmp:NeonThing -->*}
{*			        <div>HERE IS A THING</div>*}
{*			        *}
{*			        <!-- cmp:NeonThing -->*}
{*			        <div>HERE IS A THING</div>*}
{*			        *}
{*		        </div>*}
{*		        *}
{*	        </div>*}
{*	        *}
{*        {/editor}*}

{*		<div>*}
{*			<h1>Trash hand</h1>*}

{*			<div class="caveat">*}
{*				Working hard since 2008*}
{*			</div>*}

{*			<div class="trashhand">*}
{*				Working hard since 2008*}
{*			</div>*}
{*		</div>*}

{/block}
