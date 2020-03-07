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
	        subtitle="In a perfect world, how would it work?"
	        callBtn=true
        }

		<div class="mt-4 lg:-mt-5 xl:-mt-15 mx-4%" data-aos="fade-up" data-aos-delay="0">
			<img src="{asset path='/images/illustrations/Architecture UX Illustration.svg'}" alt="Architecture user experience design illustration">
		</div>

		<section class="min-h-screen flex mb-20" data-aos="fade" data-aos-duration="900" data-aos-delay="200">
			<div class="self-center">
				{section_header_center
					title="Build a blueprint for your digital project"
					hr=true
					body="You wouldn’t build a house without having an architect sign off on the structure, features, design and cost. And when it comes to building software, apps and websites, neither would we. Our Architecture & Design process involves working closely with you to rapidly generate solutions to your challenges. The result? A visual and technical blueprint for your project, including an interactive, fully-functioning prototype. After all, wouldn't you like to experience what a house feels like to live in, before you buy the thing?"}

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
		</section>



		<section class="px-6% pt-40" style="background:#F3F5F9;">

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

			{foreach $featureCards as $card}
				<div class="my-40">
					<div class="grid grid-cols-2 shadow-2xl rounded-md rounded-lg overflow-hidden bg-white">
						<div class="{cycle values="order-0,order-1"}">
							<img class="w-full h-full object-cover" src="{asset path=$card.image}" alt="{$card.title} image" class="w-full">
						</div>
						<div class="flex">
							<div class="px-2/12 py-20 bg-white self-center">
								<h2 class="text-5xl text-blue-900 pr-10">{$card.title}</h2>
								<h6 class="pl-15 pt-0 text-blue-500 uppercase font-extrabold text-sm">{$card.label}</h6>
								<p class="pl-15 text-gray-700 text-justify">{$card.body}</p>
							</div>
						</div>
					</div>
				</div>
			{/foreach}




				<div class="my-40">
					<div class=" shadow-2xl rounded-md rounded-lg overflow-hidden bg-white">
                        {foreach $featureCards as $card}
	                        <div class="grid grid-cols-2">
								<img class="w-full h-full object-cover {cycle values="order-0,order-1"}" src="{asset path=$card.image}" alt="{$card.title} image" class="w-full">
								<div class="flex">
									<div class="px-2/12 py-20 bg-white self-center">
										<h2 class="text-5xl text-blue-900 pr-10">{$card.title}</h2>
										<h6 class="pl-15 pt-0 text-blue-500 uppercase font-extrabold text-sm">{$card.label}</h6>
										<p class="pl-15 text-gray-700 text-justify">{$card.body}</p>
									</div>
								</div>
	                        </div>
                        {/foreach}
					</div>
				</div>





			<div class="min-h-screen">
				<div class="relative grid-cols-2 lg:display-block shadow-2xl rounded-lg lg:shadow-none overflow-hidden bg-white  lg:bg-transparent ">
					<div class="lg:absolute lg:left-0 lg:z-10 lg:mt-20 lg:shadow-xl" style="width:52.5%;">
						<img src="{asset path='https://images.unsplash.com/photo-1583475969042-4cd769e2999b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1000&q=80'}" alt="" class="w-full h-full object-cover rounded-md">
					</div>
					<div class="relative z-20 px-6% py-1/12 shadow-2xl bg-white rounded-md flex" style="width:52.5%; margin-left:47.5%">
						<div class="self-center">
							<h2 class="text-5xl text-blue-900 pr-10">Turn your ideas into a reality</h2>
							<h6 class="pl-15 pt-0 text-blue-500 uppercase font-extrabold text-sm">Workshops</h6>
							<p class="pl-15 text-gray-700 text-justify">Workshops are at the heart of our Architecture & Design process. We get up on a white board with you and think visually about what you're trying to achive. We scribble. We explore. We create. From there, we design and build your prototype.</p>
						</div>
					</div>
				</div>
			</div>

			<div class="relative min-h-screen">
				<div class="absolute right-0 z-10 mt-20">
					<img src="{asset path='/images/temp/article-image-1.jpg'}" alt="" width="675" height="457">
				</div>
				<div class="relative z-20 mr-6/12 w-6/12 pl-20 pr-20 py-20 shadow-lg bg-white rounded-md">
					<h2 class="text-5xl text-blue-900 pr-10">Turn your ideas into a reality</h2>
					<div class="pl-15 pt-0">
						<h6 class="text-blue-500 uppercase font-extrabold text-sm">Workshops</h6>
						<p class="text-gray-700 text-justify">Workshops are at the heart of our Architecture & Design process. We get up on a white board with you and think visually about what you're trying to achive. We scribble. We explore. We create. From there, we design and build your prototype.</p>
					</div>
				</div>
			</div>

		</section>

		<section class="sectionSecondary sectionSecondary">
			<div class="shell">
				<header class="section_head">
					<h2>Alternative Digital Marketing services?</h2>

					<h4>Can’t see what you’re looking for, we do more than SEO and PPC?</h4>

					<p>
						Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat rud exercitation ullamco laboris nisi ut aliquip ex.
					</p>
				</header>

				<div class="section_body">
					<div class="slider slider-cards">
						<div class="slider_clip">
							<div class="slider_slides cards">
								<div class="slider_slide card card-secondary">
									<div class="card_inner">
										<div class="card_image">
											<i class="ico-technologies"></i>
										</div>

										<div class="card_content">
											<h4>Branding</h4>

											<p>
												Lorem ipsum dolor sit amet, consectetur adipisicing elit,
											</p>
										</div>
									</div>

									<div class="card_imageText card_imageText-position6">
										<img src="{asset path='/images/temp/card-image-text-6.png'}" alt="" width="173" height="70">
									</div>
								</div>

								<div class="slider_slide card card-secondary">
									<div class="card_inner">
										<div class="card_image">
											<i class="ico-team"></i>
										</div>

										<div class="card_content">
											<h4>Pitch decks</h4>

											<p>
												Lorem ipsum dolor sit amet, consectetur adipisicing elit,
											</p>
										</div>
									</div>
								</div>

								<div class="slider_slide card card-secondary">
									<div class="card_inner">
										<div class="card_image">
											<i class="ico-framework"></i>
										</div>

										<div class="card_content">
											<h4>Icons &amp; illustration</h4>

											<p>
												Lorem ipsum dolor sit amet, consectetur adipisicing elit,
											</p>
										</div>
									</div>
								</div>

								<div class="slider_slide card card-secondary">
									<div class="card_inner">
										<div class="card_image">
											<i class="ico-peak"></i>
										</div>

										<div class="card_content">
											<h4>Interaction design</h4>

											<p>
												Lorem ipsum dolor sit amet, consectetur adipisicing elit,
											</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>

		<section class="callout">
			<div class="callout_images">
				<div class="callout_image">
					<img src="{asset path='/images/temp/callout-image-1.svg'}" alt="" width="277" height="209">
				</div>

				<div class="callout_image">
					<img src="{asset path='/images/temp/callout-image-2.png'}" alt="" width="222" height="222">
				</div>

				<div class="callout_image">
					<img src="{asset path='/images/temp/callout-image-3.png'}" alt="" width="145" height="68">
				</div>
			</div>

			<div class="callout_content">
				<div class="shell">
					<div class="callout_inner">
						<div class="callout_head">
							<h1 class="callout_title">Not sure exactly what you’re looking for?</h1>

							<h4 class="callout_subtitle">Don’t worry. We’ll help you define exactly what you need.</h4>

							<a href="#" class="btn btn-gray btn-outline">Start a conversation</a>
						</div>

						<div class="callout_body">
							<div class="callout_entry">
								<p>
									We solve challenges for organisations and businesses of all shape, size and industry.
								</p>

								<p>
									Whatever your challenge, a brief conversation with one of our team will soon enable us to advise you and your business exactly what you need.
								</p>

								<a href="#" class="btn btn-gray btn-outline">Start a conversation</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>

		<section class="sectionSecondary sectionSecondary-reasons">
			<div class="shell">
				<header class="section_head">
					<h2>Why choose Newicon?</h2>

					<h4>6 reasons to choose us for your next software project</h4>
				</header>

				<div class="section_body">
					<div class="cardsSimple">
						<div class="cardSimple">
							<div class="card_inner">
								<div class="card_image">
									<img src="{asset path='/images/temp/service-image-8.png'}" alt="" width="190" height="130">
								</div>

								<div class="card_content">
									<h3>1. Everything under one roof</h3>

									<h5>Design, development and digital marketing</h5>

									<p>
										Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et.
									</p>
								</div>
							</div>
						</div>

						<div class="cardSimple">
							<div class="card_inner">
								<div class="card_image">
									<img src="{asset path='/images/temp/service-image-9.png'}" alt="" width="190" height="130">
								</div>

								<div class="card_content">
									<h3>2. Lean, robust &amp; scalable</h3>

									<h5>Software, built to your exact needs</h5>

									<p>
										Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et.
									</p>
								</div>
							</div>
						</div>

						<div class="cardSimple">
							<div class="card_inner">
								<div class="card_image">
									<img src="{asset path='/images/temp/service-image-10.png'}" alt="" width="190" height="130">
								</div>

								<div class="card_content">
									<h3>3. Five Star customer reviews</h3>

									<h5>Google review and high customer retention</h5>

									<p>
										Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et.
									</p>
								</div>
							</div>
						</div>

						<div class="cardSimple">
							<div class="card_inner">
								<div class="card_image">
									<img src="{asset path='/images/temp/service-image-9.png'}" alt="" width="190" height="130">
								</div>

								<div class="card_content">
									<h3>4. Test-driven development</h3>

									<h5>TDD ensures the highest quality code over time</h5>

									<p>
										Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et.
									</p>
								</div>
							</div>
						</div>

						<div class="cardSimple">
							<div class="card_inner">
								<div class="card_image">
									<img src="{asset path='/images/temp/service-image-11.png'}" alt="" width="190" height="130">
								</div>

								<div class="card_content">
									<h3>5. Dedicated hosting &amp; support</h3>

									<h5>Our support boasts a 95% Satisfaction</h5>

									<p>
										Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et.
									</p>
								</div>
							</div>
						</div>

						<div class="cardSimple">
							<div class="card_inner">
								<div class="card_image">
									<img src="{asset path='/images/temp/service-image-12.png'}" alt="" width="190" height="130">
								</div>

								<div class="card_content">
									<h3>6. Our innovative framework</h3>

									<h5>With Neon Our starting point isn’t Zero</h5>

									<p>
										Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et.
									</p>
								</div>
							</div>
						</div>

						<div class="cardSimple">
							<div class="card_inner">
								<div class="card_content">
									<h3>(7. You'll love working with us)</h3>

									<h5>We're a friendly bunch</h5>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="section_actions">
					<a href="#" class="link link-primary link-lg link-underline">Learn more ></a>
				</div>
			</div>
		</section>

		{section_portfolio category="architecture"}

        {section_testimonials}

		<section class="sectionSecondary sectionSecondary-books">
			<div class="shell">
				<header class="section_head">
					<h2>Learn more about Software Development</h2>

					<h4>Discover our thoughts and theories about the world of Software</h4>
				</header>

				<div class="section_body">
					<div class="books">
						<div class="book">
							<div class="book_inner">
								<div class="book_image" style="background-image: url({asset path='/images/temp/book-background-1.jpg'});"></div>

								<div class="book_content">
									<div class="book_label book_label-right">n</div>

									<h6 class="book_subtitle">Development</h6>

									<h3 class="book_title">Mobile App Design Fundamentals: 10 Tips for an Effective Product Strategy</h3>

									<p>
										Learn more about the Newicon innnovation starter pack.
									</p>

									<h5 class="book_author">Steve O’Brien</h5>
								</div>
							</div>
						</div>

						<div class="book">
							<div class="book_inner">
								<div class="book_image" style="background-image: url({asset path='/images/temp/book-background-2.jpg'});"></div>

								<div class="book_content">
									<div class="book_label book_label-right">n</div>

									<h6 class="book_subtitle">Design</h6>

									<h3 class="book_title">Rapid Prototyping for your innovation strategy. </h3>

									<p>
										Learn more about the Newicon innnovation starter pack.
									</p>

									<h5 class="book_author">Steve O’Brien</h5>
								</div>
							</div>
						</div>

						<div class="book">
							<div class="book_inner">
								<div class="book_image" style="background-image: url({asset path='/images/temp/book-background-3.jpg'});"></div>

								<div class="book_content">
									<div class="book_label book_label-right">n</div>

									<h6 class="book_subtitle">Technology</h6>

									<h3 class="book_title">The Best Resource For Website Hosting Comparison</h3>

									<p>
										The Best Resource For Website Hosting Comparison
									</p>

									<h5 class="book_author">Steve O’Brien</h5>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>

		{section_contact_footer}
	</div>
{/block}
