{extends "layouts/layout.tpl"}
{block "header"}
	{navigation}
{/block}
{block "content"}
	<div class="main">
{*		<div class="introServiceTertiary">*}

        {hero_text
	        title="Architecture &amp; UX Design"
	        bgTitle=false
	       sub="In a perfect world, how would it work?"
	        callBtn=true
        }

		<div class="mt-4 lg:-mt-5 xl:-mt-15 mx-4%" data-aos="fade-up" data-aos-delay="0">
			<img src="{asset path='/images/illustrations/Architecture UX Illustration.svg'}" alt="Architecture user experience design illustration">
		</div>

        {layout_section}
		<div class="min-h-screen flex" data-aos="fade" data-aos-duration="900" data-aos-delay="200">
			<div class="self-center">
				{section_header_center
					title="Build a blueprint for your digital project"
					hr=true
					body="You wouldn’t build a house without having an architect sign off on the structure, features, design and cost. And when it comes to building software, apps and websites, neither would we. Our Architecture & Design process involves working closely with you to rapidly generate solutions to your challenges. The result? A visual and technical blueprint for your project, including an interactive, fully-functioning prototype. After all, wouldn't you like to experience what a house feels like to live in, before you buy the thing?"
				}
				{include file='../../widgets/feature_grid.tpl' features=[
					[
						'icon' => 'images/icons/mid/clickable-prototype.svg',
						'title' => 'Rapid prototyping',
						'sub' => 'Reducing your risk',
						'body' => 'Because we rapidly prototype your project, you quickly get a hands-on experience of your digital product.'
					],
					[
						'icon' => 'images/icons/mid/designed-for-your-user.svg',
						'title' => 'Designed for real People',
						'sub' => 'People over technology',
						'body' => 'Wihtout people technology is irrelevant. Our UX design team work hard to create products that stick in people’s minds. Easy to use, beautiful to look at.'
					],
					[
						'icon' => '/images/icons/mid/reliable-results.svg',
						'title' => 'Real, reliable results',
						'sub' => 'Instant stakeholder feedback',
						'body' => 'With our visual, usable prototypes, it’s easy to get everyone on the same page and ready to move forward.'
					]
				]}
{*				<img src="{asset path='/images/temp/service-image-text.png'}" alt="" width="266" height="157">*}
			</div>
		</div>
        {/layout_section}


		{layout_section style="background:#F3F5F9;"}
			{$featureCards = [
				[
					'image' => 'https://images.unsplash.com/photo-1583475969042-4cd769e2999b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1000&q=80',
					'title' => 'Turn your ideas into a reality',
					'label' => 'Workshops',
					'body' => 'Workshops are at the heart of our Architecture & Design process. We get up on a white board with you and think visually about what you\'re trying to achive. We scribble. We explore. We create. From there, we design and build your prototype.'
				],
				[
					'image' => 'https://images.unsplash.com/photo-1583475969042-4cd769e2999b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1000&q=80',
					'title' => 'Rapid progress & visual results',
					'label' => 'Prototypes',
					'body' => 'As digital engineers, we know that prototypes are invaluable to any software or web project. Prototypes are a quick way to get the product in your hands, offering you a true feel for how it\'ll function. Not only does this mean quicker sign-off from important stakeholders, it also means we can iron out any issues before a single line of code is written.'
				],
				[
					'image' => 'https://images.unsplash.com/photo-1583475969042-4cd769e2999b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1000&q=80',
					'title' => 'A people-centric design process',
					'label' => 'User experience Design',
					'body' => 'Great UX design captures the attention, sticks in the memory, and compels users to take action. It results in products that are so intuitive that users don\'t give a second thought to the design. We create digital products that do all that, and more.'
				],
				[
					'image' => 'https://images.unsplash.com/photo-1583475969042-4cd769e2999b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1000&q=80',
					'title' => 'Beautiful visual design',
					'label' => 'User Interface Design',
					'body' => 'We design user interfaces that are as intuitive as they are beautiful. And we think both are equally important. Ease-of-use is integral to a smooth user experience, while carefully-crafted aesthetics make your project stand-out from the crowd and stick in the mind.'
				]
            ]}

			<h1>simple cards</h1>
			{foreach $featureCards as $card}
				<div class="min-h-screen my-10 ">
					<div class="grid grid-cols-1 md:grid-cols-2 shadow-2xl max-w-screen-xl mx-auto rounded-md rounded-lg overflow-hidden bg-white group">
						<div class="{cycle values="md:order-0,md:order-1"}">
							<img class="w-full h-full z-0 object-cover group-hover:scale-110 transform duration-300 ease-out" src="{asset path=$card.image}" alt="{$card.title} image" class="w-full">
						</div>
						<div class="flex bg-white z-10">
							<div class="px-1/12 py-1/12 md:px-2/12 md:py-20 bg-white self-center">
								<h2 class="text-3xl sm:text-4xl md:text-5xl text-blue-950 pr-10">{$card.title}</h2>
								<h6 class="pt-0 text-blue-500 uppercase text-xs font-bold md:pl-15 md:text-sm md:font-extrabold">{$card.label}</h6>
								<p class="md:pl-15 text-gray-700 text-justify">{$card.body}</p>
							</div>
						</div>
					</div>
				</div>
			{/foreach}

			<h1>grouped cards</h1>
			<div class=" shadow-2xl rounded-md rounded-lg overflow-hidden bg-white max-w-screen-xl mx-auto">
                {foreach $featureCards as $card}
                    <div class="grid grid-cols-1 grid-rows-2 md:grid-rows-1 md:grid-cols-2 ">
						<img class="w-full h-full object-cover {cycle values="md:order-0,md:order-1"}" src="{asset path=$card.image}" alt="{$card.title} image" class="w-full">
						<div class="flex">
							<div class="px-1/12 py-1/12 md:px-2/12 md:py-20 bg-white self-center">
								<h2 class="text-3xl sm:text-4xl md:text-5xl text-blue-950 pr-10">{$card.title}</h2>
								<h6 class="pt-0 md:pl-15 text-blue-500 uppercase text-xs md:text-sm font-bold md:font-extrabold">{$card.label}</h6>
								<p class="md:pl-15 text-gray-700 text-justify">{$card.body}</p>
							</div>
						</div>
                    </div>
                {/foreach}
			</div>

			<h1>Skewed cards</h1>
            {foreach $featureCards as $card}
	            {include file="../_cmps/cards/card_skewed.tpl" flip={cycle values="left,right"} title=$card.title }
            {/foreach}

		{/layout_section}


		{layout_section}

			<div class="min-h-screen flex">
				<div class="self-center">
					{section_header_center title="Design" sub="Cant see what you are looking for?"}
					<div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 text-center gap-3 ">
						<div class="shadow-xl hover:shadow-2xl transition duration-300 ease-out  p-10">
							<svg class="mx-auto my-8 " width="32" height="32" xmlns="http://www.w3.org/2000/svg"><g fill-rule="nonzero" fill="none"><path d="M29.41 32H2.59A2.59 2.59 0 010 29.41V2.59A2.59 2.59 0 012.59 0h26.82A2.59 2.59 0 0132 2.59v26.82A2.59 2.59 0 0129.41 32zM2.59 1.36c-.68 0-1.23.55-1.23 1.23v26.82c0 .68.55 1.23 1.23 1.23h26.82c.68 0 1.23-.55 1.23-1.23V2.59c0-.68-.55-1.23-1.23-1.23H2.59z" fill="#A8C5DD"/><path d="M23.62 25.41h-4.81V14.48c0-.1-.19-3.22-2.81-3.22a2.61 2.61 0 00-2 .74 5.47 5.47 0 00-1 3.5v9.88H8.37V6.59h5v1.23a8 8 0 014.06-1 5.68 5.68 0 014.31 1.68c2.08 2.21 1.89 5.74 1.88 5.89v11.02zm-3.47-1.34h2.13v-9.72c0-.07.16-3.15-1.52-4.94a4.37 4.37 0 00-3.33-1.28 5.77 5.77 0 00-4.23 1.48.67.67 0 01-.95.06A.65.65 0 0112 9a.59.59 0 010-.13v-1H9.72v16.2h1.94v-8.5A6.65 6.65 0 0113 11.12a3.91 3.91 0 013-1.2c3.12 0 4.08 3 4.15 4.53v9.62z" fill="#2969F6"/></g></svg>
							<h2 class="text-2xl font-light">Branding</h2>
							<p>
								Our designers work hard to create innovative branding that helps you stand out from the crowd.
							</p>
						</div>
						<div class="shadow-xl hover:shadow-2xl transition duration-300 ease-out  p-10">
							<svg class="mx-auto my-8" width="32" height="32" xmlns="http://www.w3.org/2000/svg"><g fill-rule="nonzero" fill="none"><path d="M22.982 5.663h-7.467a.65.65 0 110-1.3h7.467a.65.65 0 010 1.3zM22.982 9.387h-7.467a.66.66 0 010-1.31h7.467a.66.66 0 010 1.31zM22.982 13.081h-7.467a.65.65 0 110-1.3h7.467a.65.65 0 110 1.3zM22.982 16.795h-7.467a.65.65 0 010-1.28h7.467a.65.65 0 010 1.3v-.02z" fill="#2969F6"/><path d="M29.73 9.348V7.195a2.521 2.521 0 00-2.375-2.502V2.55A2.512 2.512 0 0024.844 0H3.51A2.512 2.512 0 00.97 2.55v16.718a2.522 2.522 0 002.375 2.502v2.191a2.502 2.502 0 002.27 2.483v2.114a2.512 2.512 0 002.511 2.472H29.46A2.512 2.512 0 0032 28.558V11.84a2.512 2.512 0 00-2.27-2.492zm-27.442 9.92V2.55c0-.658.534-1.192 1.193-1.192h21.334c.658 0 1.192.534 1.192 1.192v16.718c0 .66-.532 1.197-1.192 1.202H3.48a1.202 1.202 0 01-1.193-1.202zm2.376 4.693V21.78h20.18a2.512 2.512 0 002.511-2.511V6.022a1.193 1.193 0 011.057 1.173v16.766c0 .659-.534 1.193-1.193 1.193H5.82a1.193 1.193 0 01-1.155-1.193zm26.017 4.597c0 .658-.534 1.192-1.193 1.192H8.155a1.193 1.193 0 01-1.193-1.192v-2.085H27.22a2.512 2.512 0 002.512-2.512V10.667c.556.105.961.588.97 1.154l-.02 16.737z" fill="#A8C5DD"/><path d="M13.13 13.78H4.684V4.353h8.446v9.425zm-7.128-1.32h5.819V5.674H6.002v6.788z" fill="#032663"/></g></svg>
							<h2 class="text-2xl font-light">Pitch Decks</h2>
							<p>
								Need help pitching your project? Our compelling pitch decks to take you to the next level.
							</p>
						</div>
						<div class="shadow-xl hover:shadow-2xl transition duration-300 ease-out p-10">
							<svg class="mx-auto my-8" width="32" height="32" xmlns="http://www.w3.org/2000/svg"><g fill-rule="nonzero" fill="none"><path d="M16.57 6.555l-.1-.087v-.049h-.56a.299.299 0 00-.13 0v.049l-.1.087-8.81 12.218.26.369c0 .048 3.21 4.713 3.21 9.377v2.822c0 .364.304.659.68.659a.67.67 0 00.68-.66V28.52v-.272h8.62V31.341c0 .364.304.659.68.659a.67.67 0 00.68-.66V28.52c0-4.664 3.18-9.329 3.21-9.377l.26-.369-8.58-12.218zM20.4 26.92h-8.8a21.324 21.324 0 00-3.1-8.136l6.82-9.697v6.07c0 .365.304.66.68.66a.67.67 0 00.68-.66V9.047l6.82 9.697a21.322 21.322 0 00-3.1 8.184v-.01z" fill="#A8C5DD"/><path d="M16 19.52c-1.254 0-2.27-.986-2.27-2.201 0-1.216 1.016-2.201 2.27-2.201s2.27.985 2.27 2.2c0 1.216-1.016 2.202-2.27 2.202zm0-3.093c-.508 0-.92.4-.92.892s.412.892.92.892.92-.4.92-.892c0-.493-.412-.892-.92-.892z" fill="#032663"/><path d="M27.47.97v1.542h-9.32a2.092 2.092 0 00-.55-.902c-.424-.412-1-.644-1.6-.644-.6 0-1.176.232-1.6.644a2.064 2.064 0 00-.55.892H4.53V.97H0v4.392h4.53V3.821h9.32c.102.34.291.65.55.901.555.551 1.37.776 2.141.59a2.211 2.211 0 001.609-1.491h9.32v1.541H32V.97h-4.53zM3.19 4.063H1.34V2.269h1.85v1.794zm13.46-.262a.94.94 0 01-1.3 0 .882.882 0 01-.195-.973.925.925 0 011.495-.297c.36.352.36.919 0 1.27zm14 .262h-1.84V2.269h1.85l-.01 1.794z" fill="#2969F6"/></g></svg>
							<h2 class="text-2xl font-light">Icons &amp; Illustration</h2>
							<p>
								Is your project visually stunning? Our beautiful, bespoke icons and illustrations enhance your aesthetics.
							</p>
						</div>
						<div class="shadow-xl hover:shadow-2xl transition duration-300 ease-out p-10">
							<svg class="mx-auto my-8" width="32" height="32" xmlns="http://www.w3.org/2000/svg"><g fill-rule="nonzero" fill="none"><path d="M5.818 13.42a6.255 6.255 0 01-2.996-1.018 5.818 5.818 0 01-.97-.795 6.233 6.233 0 119.503-8 6.196 6.196 0 011.115 2.977.663.663 0 11-1.318.136 4.848 4.848 0 00-.873-2.356 4.752 4.752 0 00-.582-.64 4.916 4.916 0 10-6.167 7.583 4.965 4.965 0 002.356.805.66.66 0 010 1.309h-.068z" fill="#032663"/><path d="M11.016 22.38a.737.737 0 01-.204 0 8.32 8.32 0 01-3.336-2.036 8.393 8.393 0 1111.84-11.898c.358.333.683.7.97 1.096a8.398 8.398 0 011.154 2.346.66.66 0 11-1.26.388 6.953 6.953 0 00-.97-1.939 8.67 8.67 0 00-.776-.921 7.07 7.07 0 10-7.176 11.723.66.66 0 01-.203 1.28l-.04-.038z" fill="#A8C5DD"/><path d="M20.732 32a10.241 10.241 0 01-5.644-1.687 10.987 10.987 0 01-1.61-1.32c-4.016-4.016-4.016-10.528 0-14.545 4.017-4.016 10.53-4.016 14.546 0A10.27 10.27 0 0120.732 32zm0-19.258a8.98 8.98 0 00-6.332 15.38c.43.428.901.814 1.406 1.153a8.98 8.98 0 0012.315-12.732 8.61 8.61 0 00-.97-1.164 8.94 8.94 0 00-6.419-2.637z" fill="#2969F6"/><path d="M27.52 8.562v-.077a.97.97 0 010-.097l.61-4.276a.66.66 0 00-.552-.747.67.67 0 00-.746.562l-.427 2.91C19.869.212 15.97 1.938 15.796 1.938a.66.66 0 00.543 1.203s3.24-1.203 8.95 4.402l-2.637-.136a.67.67 0 00-.688.621.66.66 0 00.62.689l4.306.232a.67.67 0 00.262-.048h.067a.65.65 0 00.136-.087l.049-.059.087-.116s.029-.068.029-.078z" fill="#032663"/></g></svg>
							<h2 class="text-2xl font-light">Interaction design</h2>
							<p>
								We build responsive and interactive designs to make your user's experience feel exceptional.
							</p>
						</div>
					</div>
				</div>
			</div>
        {/layout_section}


		{layout_section class="bg-blue-950 text-white"}
			<img class="absolute top-0 -mt-10 left-0" src="{asset path='/images/temp/callout-image-1.svg'}" alt="" width="277" height="209">
			<h2 class="text-5xl mb-10">Got a specific project in mind?</h2>
			<p class="sm:w-10/12 md:w-8/12 lg:w-6/12 text-xl mb-10 md:mb-15 font-normal">From Digital Transformation to Augmented Reality, we can help you build your future. Get in touch with us today.</p>
			<div class="flex flex-wrap">
				<button class="mt-8 order-last md:order-first w-full md:mr-1/12 md:w-4/12 lg:w-3/12 btn btn-primary btn-fx btn-lg">Send us a message</button>
				<div class="mt-8 mr-1/12">
					<label class="font-thin text-blue-100 text-xl">Call us on:</label><br/>
					<a href="tel:0117 205 0425" class="font-bold text-xl no-underline">0117 205 0425</a>
				</div>
				<div class="mt-8">
					<label class="font-thin text-blue-100 text-xl">Email us at:</label><br/>
					<a href="mailto:hello@neiwcon.net" class="font-bold text-xl no-underline">hello@neiwcon.net</a>
				</div>
			</div>
        {/layout_section}


        {layout_section class="bg-gray-300 "}
	        <div class="flex justify-between">
				<div class="w-6/12 mr-1/12">
					<h2 class="text-3xl text-blue-950">Need some advice?</h2>
					<p class="text-xl font-light text-blue-950">Looking to utilise digital technology to streamline your operations or launch new products and services, contact our digital strategy director Mark for a free consultation.</p>
					<button class="mt-5 btn btn-outline-primary px-12 py-4 btn-fx border-blue-950 text-blue-950">Book a call</button>
				</div>
				<div>
					<img class="border-8 border-white rounded-full " src="{asset path='/images/temp/callout-image-2.png'}" alt="" width="250" height="250">
				</div>
	        </div>
        {/layout_section}

		{section_portfolio category="architecture"}

        {section_testimonials}

		{section_contact_footer}
	</div>
{/block}
