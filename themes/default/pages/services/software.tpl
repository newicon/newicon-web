{extends "layouts/layout.tpl"}
{block "header"}
	{navigation}
{/block}
{block "content"}
{*
	[
		{
			"cmp": "hero/illustration",
			"title": ""
		},
		{
			"cmp": "feature/grid",
			"features": [
				{icon: '', title: ''},
				{icon: '', title: ''},
			]
		},
		{}
	]
*}
	{include file='../_cmps/hero/illustration.tpl' title="Software Development" sub="You dream it, we build it" callBtn=true illustration="images/illustrations/Software Dev Illustration.svg"}

	{include file='../_cmps/section/feature/grid.tpl'
		title="Software development starts with the dream." hr=true
		body="We’ve worked with companies of every shape and size — from one-person start-ups through to multinational corporations. Whether you’re creating a new, disruptive app or a powerful database solution, there’s really only one thing that matters. Defining the right problem for the right person."
		features=[
			['icon' => 'images/icons/mid/designed-for-your-user.svg','title' => 'User-Centered Design','sub' => 'Putting you first','body' => 'Sign-off on a usable prototype, before agreeing to development. No wasted time, no wasted money.'],
			['icon' => 'images/icons/mid/custom-software.svg','title' => 'Custom software','sub' => 'Tailored to you','body' => 'Bespoke software offers solutions to your business’s unique challenges. No need to compromise.'],
			['icon' => 'images/icons/mid/agile-development.svg','title' => 'Agile development','sub' => 'Evolving through collaboration','body' => 'With our agile methodology, knowledge is always fed back into the end product, resulting in the best possible end-result.']
		]
	}

	{include file="../_cmps/section/feature/cards.tpl" type=skewed  cards=[
		['image' => 'images/photos/ipad-user-screenshot.jpg','title' => 'If you can dream it, we can build it!','label' => 'Web Applications','body' => 'Web software can power your whole business. We utilise innovative web technology to improve all aspects of business, from customer facing portals, through to back-office system. Got an innovative idea you would like to us to build? Let us know!'],
		['image' => 'images/photos/iphone-user-screenshot.jpg','title' => 'Access your business from anywhere','label' => 'Mobile apps','body' => 'Mobile plays an ever increasing role in business today. From allowing your customers to interact with your business and their data, through to managing your staff and back office operations. We integrate mobile solutions with our bespoke web-apps and also provide integration with third party systems.'],
		['image' => 'images/photos/switchee.jpg','title' => 'Connect to the physical world','label' => 'Internet of Things (IoT)','body' => 'We design and develop customer led controller apps for mobile, and the web-applications that manage and control these devices. Our expertise has allowed us to work with electronic firms and entrepeneurs to develop applications for innovative products. Do you have an IoT challenge for us?'],
		['image' => 'images/photos/macbook-user.jpg','title' => 'Connect your business, customers & data','label' => 'Backend systems & Client portals','body' => 'Get your back-end system streamlined and optimised, then create access to it with an easy-to-use portal. Completing those two tasks could be the most transformative action your business takes this year. Modern businesses are built on data; take control of yours today.']
	]}





    {layout_section}
    {layout_container}
		<div class="min-h-screen flex">
			<div class="self-center">
                {header_center title="Cutting-edge technology to solve your challenges" sub="Our consultancy services help you find the right technology for your challenges."}
				<div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 text-center gap-3 ">
					<div class="shadow-xl hover:shadow-2xl transition duration-200 ease-out rounded-md p-10 transform hover:-translate-y-1">
						<img class="mx-auto my-8 w-full"  src="{asset path="images/icons/micro/micro-icon-ai.svg"}">
						<h2 class="text-2xl font-light">AI & Machine Learning</h2>
						<p>
							Want to know how AI and machine learning could benefit your business? Talk to us today!
						</p>
					</div>
					<div class="shadow-xl hover:shadow-2xl transition duration-200 ease-out rounded-md transform hover:-translate-y-1  p-10">
						<img class="mx-auto my-8 w-full"  src="{asset path="images/icons/micro/micro-icon-arvr.svg"}">
						<h2 class="text-2xl font-light">AR, VR & Visual Recognision</h2>
						<p>
							We're dedicated to keeping up to date with the latest innovations in the tech world.
						</p>
					</div>
					<div class="shadow-xl hover:shadow-2xl transition duration-200 ease-out p-10 rounded-md transform hover:-translate-y-1">
						<svg class="mx-auto my-8" width="32" height="32" xmlns="http://www.w3.org/2000/svg">
							<g fill-rule="nonzero" fill="none">
								<path d="M16.57 6.555l-.1-.087v-.049h-.56a.299.299 0 00-.13 0v.049l-.1.087-8.81 12.218.26.369c0 .048 3.21 4.713 3.21 9.377v2.822c0 .364.304.659.68.659a.67.67 0 00.68-.66V28.52v-.272h8.62V31.341c0 .364.304.659.68.659a.67.67 0 00.68-.66V28.52c0-4.664 3.18-9.329 3.21-9.377l.26-.369-8.58-12.218zM20.4 26.92h-8.8a21.324 21.324 0 00-3.1-8.136l6.82-9.697v6.07c0 .365.304.66.68.66a.67.67 0 00.68-.66V9.047l6.82 9.697a21.322 21.322 0 00-3.1 8.184v-.01z"
								      fill="#A8C5DD"/>
								<path d="M16 19.52c-1.254 0-2.27-.986-2.27-2.201 0-1.216 1.016-2.201 2.27-2.201s2.27.985 2.27 2.2c0 1.216-1.016 2.202-2.27 2.202zm0-3.093c-.508 0-.92.4-.92.892s.412.892.92.892.92-.4.92-.892c0-.493-.412-.892-.92-.892z"
								      fill="#032663"/>
								<path d="M27.47.97v1.542h-9.32a2.092 2.092 0 00-.55-.902c-.424-.412-1-.644-1.6-.644-.6 0-1.176.232-1.6.644a2.064 2.064 0 00-.55.892H4.53V.97H0v4.392h4.53V3.821h9.32c.102.34.291.65.55.901.555.551 1.37.776 2.141.59a2.211 2.211 0 001.609-1.491h9.32v1.541H32V.97h-4.53zM3.19 4.063H1.34V2.269h1.85v1.794zm13.46-.262a.94.94 0 01-1.3 0 .882.882 0 01-.195-.973.925.925 0 011.495-.297c.36.352.36.919 0 1.27zm14 .262h-1.84V2.269h1.85l-.01 1.794z"
								      fill="#2969F6"/>
							</g>
						</svg>
						<h2 class="text-2xl font-light">Connected Cloud Computing</h2>
						<p>
							How we save and store data has completely changed. Don't get left behind, ask about cloud computing.
						</p>
					</div>
					<div class="shadow-xl hover:shadow-2xl transition duration-200 ease-out p-10 rounded-md transform hover:-translate-y-1">
						<svg class="mx-auto my-8" width="32" height="32" xmlns="http://www.w3.org/2000/svg">
							<g fill-rule="nonzero" fill="none">
								<path d="M5.818 13.42a6.255 6.255 0 01-2.996-1.018 5.818 5.818 0 01-.97-.795 6.233 6.233 0 119.503-8 6.196 6.196 0 011.115 2.977.663.663 0 11-1.318.136 4.848 4.848 0 00-.873-2.356 4.752 4.752 0 00-.582-.64 4.916 4.916 0 10-6.167 7.583 4.965 4.965 0 002.356.805.66.66 0 010 1.309h-.068z"
								      fill="#032663"/>
								<path d="M11.016 22.38a.737.737 0 01-.204 0 8.32 8.32 0 01-3.336-2.036 8.393 8.393 0 1111.84-11.898c.358.333.683.7.97 1.096a8.398 8.398 0 011.154 2.346.66.66 0 11-1.26.388 6.953 6.953 0 00-.97-1.939 8.67 8.67 0 00-.776-.921 7.07 7.07 0 10-7.176 11.723.66.66 0 01-.203 1.28l-.04-.038z"
								      fill="#A8C5DD"/>
								<path d="M20.732 32a10.241 10.241 0 01-5.644-1.687 10.987 10.987 0 01-1.61-1.32c-4.016-4.016-4.016-10.528 0-14.545 4.017-4.016 10.53-4.016 14.546 0A10.27 10.27 0 0120.732 32zm0-19.258a8.98 8.98 0 00-6.332 15.38c.43.428.901.814 1.406 1.153a8.98 8.98 0 0012.315-12.732 8.61 8.61 0 00-.97-1.164 8.94 8.94 0 00-6.419-2.637z"
								      fill="#2969F6"/>
								<path d="M27.52 8.562v-.077a.97.97 0 010-.097l.61-4.276a.66.66 0 00-.552-.747.67.67 0 00-.746.562l-.427 2.91C19.869.212 15.97 1.938 15.796 1.938a.66.66 0 00.543 1.203s3.24-1.203 8.95 4.402l-2.637-.136a.67.67 0 00-.688.621.66.66 0 00.62.689l4.306.232a.67.67 0 00.262-.048h.067a.65.65 0 00.136-.087l.049-.059.087-.116s.029-.068.029-.078z"
								      fill="#032663"/>
							</g>
						</svg>
						<h2 class="text-2xl font-light">Database Sesign and Management</h2>
						<p>
							With edge computing, we can reduce latency and bandwidth use; bringing data closer to you.
						</p>
					</div>
					<div class="shadow-xl hover:shadow-2xl transition duration-200 ease-out p-10 rounded-md transform hover:-translate-y-1">
						<svg class="mx-auto my-8" width="32" height="32" xmlns="http://www.w3.org/2000/svg">
							<g fill-rule="nonzero" fill="none">
								<path d="M5.818 13.42a6.255 6.255 0 01-2.996-1.018 5.818 5.818 0 01-.97-.795 6.233 6.233 0 119.503-8 6.196 6.196 0 011.115 2.977.663.663 0 11-1.318.136 4.848 4.848 0 00-.873-2.356 4.752 4.752 0 00-.582-.64 4.916 4.916 0 10-6.167 7.583 4.965 4.965 0 002.356.805.66.66 0 010 1.309h-.068z"
								      fill="#032663"/>
								<path d="M11.016 22.38a.737.737 0 01-.204 0 8.32 8.32 0 01-3.336-2.036 8.393 8.393 0 1111.84-11.898c.358.333.683.7.97 1.096a8.398 8.398 0 011.154 2.346.66.66 0 11-1.26.388 6.953 6.953 0 00-.97-1.939 8.67 8.67 0 00-.776-.921 7.07 7.07 0 10-7.176 11.723.66.66 0 01-.203 1.28l-.04-.038z"
								      fill="#A8C5DD"/>
								<path d="M20.732 32a10.241 10.241 0 01-5.644-1.687 10.987 10.987 0 01-1.61-1.32c-4.016-4.016-4.016-10.528 0-14.545 4.017-4.016 10.53-4.016 14.546 0A10.27 10.27 0 0120.732 32zm0-19.258a8.98 8.98 0 00-6.332 15.38c.43.428.901.814 1.406 1.153a8.98 8.98 0 0012.315-12.732 8.61 8.61 0 00-.97-1.164 8.94 8.94 0 00-6.419-2.637z"
								      fill="#2969F6"/>
								<path d="M27.52 8.562v-.077a.97.97 0 010-.097l.61-4.276a.66.66 0 00-.552-.747.67.67 0 00-.746.562l-.427 2.91C19.869.212 15.97 1.938 15.796 1.938a.66.66 0 00.543 1.203s3.24-1.203 8.95 4.402l-2.637-.136a.67.67 0 00-.688.621.66.66 0 00.62.689l4.306.232a.67.67 0 00.262-.048h.067a.65.65 0 00.136-.087l.049-.059.087-.116s.029-.068.029-.078z"
								      fill="#032663"/>
							</g>
						</svg>
						<h2 class="text-2xl font-light">Database Sesign and Management</h2>
						<p>
							With edge computing, we can reduce latency and bandwidth use; bringing data closer to you.
						</p>
					</div>
					<div class="shadow-xl hover:shadow-2xl transition duration-200 ease-out p-10 rounded-md transform hover:-translate-y-1">
						<svg class="mx-auto my-8" width="32" height="32" xmlns="http://www.w3.org/2000/svg">
							<g fill-rule="nonzero" fill="none">
								<path d="M5.818 13.42a6.255 6.255 0 01-2.996-1.018 5.818 5.818 0 01-.97-.795 6.233 6.233 0 119.503-8 6.196 6.196 0 011.115 2.977.663.663 0 11-1.318.136 4.848 4.848 0 00-.873-2.356 4.752 4.752 0 00-.582-.64 4.916 4.916 0 10-6.167 7.583 4.965 4.965 0 002.356.805.66.66 0 010 1.309h-.068z"
								      fill="#032663"/>
								<path d="M11.016 22.38a.737.737 0 01-.204 0 8.32 8.32 0 01-3.336-2.036 8.393 8.393 0 1111.84-11.898c.358.333.683.7.97 1.096a8.398 8.398 0 011.154 2.346.66.66 0 11-1.26.388 6.953 6.953 0 00-.97-1.939 8.67 8.67 0 00-.776-.921 7.07 7.07 0 10-7.176 11.723.66.66 0 01-.203 1.28l-.04-.038z"
								      fill="#A8C5DD"/>
								<path d="M20.732 32a10.241 10.241 0 01-5.644-1.687 10.987 10.987 0 01-1.61-1.32c-4.016-4.016-4.016-10.528 0-14.545 4.017-4.016 10.53-4.016 14.546 0A10.27 10.27 0 0120.732 32zm0-19.258a8.98 8.98 0 00-6.332 15.38c.43.428.901.814 1.406 1.153a8.98 8.98 0 0012.315-12.732 8.61 8.61 0 00-.97-1.164 8.94 8.94 0 00-6.419-2.637z"
								      fill="#2969F6"/>
								<path d="M27.52 8.562v-.077a.97.97 0 010-.097l.61-4.276a.66.66 0 00-.552-.747.67.67 0 00-.746.562l-.427 2.91C19.869.212 15.97 1.938 15.796 1.938a.66.66 0 00.543 1.203s3.24-1.203 8.95 4.402l-2.637-.136a.67.67 0 00-.688.621.66.66 0 00.62.689l4.306.232a.67.67 0 00.262-.048h.067a.65.65 0 00.136-.087l.049-.059.087-.116s.029-.068.029-.078z"
								      fill="#032663"/>
							</g>
						</svg>
						<h2 class="text-2xl font-light">Database Sesign and Management</h2>
						<p>
							With edge computing, we can reduce latency and bandwidth use; bringing data closer to you.
						</p>
					</div>
				</div>
			</div>
		</div>
    {/layout_container}
    {/layout_section}



        {section_contact_footer}
{/block}
