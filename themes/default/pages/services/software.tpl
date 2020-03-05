{extends "layouts/layout.tpl"}
{block "header"}
	{navigation}
{/block}
{block "content"}
	<div class="main">


        {hero_text
        title="Software Development"
        bgTitle=false
        subtitle="You dream it, we build it"
        callBtn=true
        }

		<div class="mt-4 lg:-mt-5 xl:-mt-15 mx-4%" data-aos="fade-up" data-aos-delay="300">
	        <img src="{asset path='images/illustrations/Software Dev Illustration.svg'}" alt="Software development illustration" >
	    </div>

		<section class="section section-secondary">
			<div class="shell">

                {section_header_center
	                title="Software development starts with the dream."
	                hr=true
	                body="We’ve worked with companies of every shape and size — from one-person start-ups through to multinational corporations. Whether you’re creating a new, disruptive app or a powerful database solution, there’s really only one thing that matters. Defining the right problem for the right person."
                }

				<div class="section_body">
					<div class="section_entry">
						<p></p>
					</div>

					<div class="servicesSecondary">
						<div class="serviceSecondary">
							<div class="service_inner">
								<div class="service_image">
									<img src="{asset path='/images/temp/service-image-5.png'}" alt="" width="132" height="106">
								</div>

								<div class="service_content">
									<h3>User-Centered Design</h3>

									<h5>Some sub-title here</h5>

									<p>
										Sign-off on a usable prototype, before agreeing to development. No wasted time, no wasted money.
									</p>
								</div>
							</div>
						</div>

						<div class="serviceSecondary">
							<div class="service_inner">
								<div class="service_image">
									<img src="{asset path='/images/temp/service-image-6.png'}" alt="" width="132" height="106">
								</div>

								<div class="service_content">
									<h3>Technology for People</h3>

									<h5>Some sub-title here</h5>

									<p>
										Bespoke software offers solutions to your business’s unique challenges. No need to compromise.
									</p>
								</div>

								<div class="service_imageText">
									<img src="{asset path='/images/temp/service-image-text.png'}" alt="" width="266" height="157">
								</div>
							</div>
						</div>

						<div class="serviceSecondary">
							<div class="service_inner">
								<div class="service_image">
									<img src="{asset path='/images/temp/service-image-7.png'}" alt="" width="132" height="106">
								</div>

								<div class="service_content">
									<h3>Measure real results</h3>

									<h5>Some sub-title here</h5>

									<p>
										With our agile methodology, knowledge is always fed back into the end product, resulting in the best possible end-result.
									</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>

		<section class="sectionArticles">
			<div class="shell">
				<div class="sectionContent">
					<div class="articlesSmall">
						<div class="articleSmall">
							<div class="article_inner">
								<div class="article_image">
									<img src="{asset path='/images/temp/article-image-1.jpg'}" alt="" width="675" height="457">
								</div>

								<div class="article_content">
									<h2>If you can dream it, we can build it!</h2>

									<div class="article_entry">
										<h6>Web Applications</h6>

										<p>
											Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
										</p>
									</div>
								</div>
							</div>
						</div>

						<div class="articleSmall">
							<div class="article_inner">
								<div class="article_image">
									<img src="{asset path='/images/temp/article-image-2.jpg'}" alt="" width="675" height="457">
								</div>

								<div class="article_content">
									<h2>Access your business from anywhere</h2>

									<div class="article_entry">
										<h6>Mobile apps</h6>

										<p>
											Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
										</p>
									</div>
								</div>
							</div>
						</div>

						<div class="articleSmall">
							<div class="article_inner">
								<div class="article_image">
									<img src="{asset path='/images/temp/article-image-3.jpg'}" alt="" width="675" height="457">
								</div>

								<div class="article_content">
									<h2>Connect to the physical world</h2>

									<div class="article_entry">
										<h6>Internet of Things (IoT)</h6>

										<p>
											Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
										</p>
									</div>
								</div>
							</div>
						</div>

						<div class="articleSmall">
							<div class="article_inner">
								<div class="article_image">
									<img src="{asset path='/images/temp/article-image-4.jpg'}" alt="" width="675" height="457">
								</div>

								<div class="article_content">
									<h2>Connect your business, customers &amp; data</h2>

									<div class="article_entry">
										<h6>Backend systems &amp; Client portals</h6>

										<p>
											Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
										</p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>

		<section class="sectionSecondary">
			<div class="shell">
				<header class="section_head">
					<h2>Cutting-edge technology to solve your challanges</h2>

					<h4>Our consultancy services help you find the right technology for your challanges.</h4>

					<p>
						Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat rud exercitation ullamco laboris nisi ut aliquip ex.
					</p>
				</header>

				<div class="section_body">
					<div class="slider slider-cards">
						<div class="slider_clip">
							<div class="slider_slides cards">
								<div class="slider_slide card">
									<div class="card_inner">
										<div class="card_image">
											<i class="ico-technologies"></i>
										</div>

										<div class="card_content">
											<h4>AI &amp; Machine Learning</h4>

											<p>
												Lorem ipsum dolor sit amet, consectetur adipisicing elit,
											</p>
										</div>
									</div>

									<div class="card_imageText card_imageText-position2">
										<img src="{asset path='/images/temp/card-image-text-5.png'}" alt="" width="184" height="100">
									</div>
								</div>

								<div class="slider_slide card">
									<div class="card_inner">
										<div class="card_image">
											<i class="ico-team"></i>
										</div>

										<div class="card_content">
											<h4>AR, VR &amp; Visual Recognision</h4>

											<p>
												Lorem ipsum dolor sit amet, consectetur adipisicing elit,
											</p>
										</div>
									</div>

									<div class="card_imageText card_imageText-position3">
										<img src="{asset path='/images/temp/card-image-text-2.png'}" alt="" width="205" height="97">
									</div>
								</div>

								<div class="slider_slide card">
									<div class="card_inner">
										<div class="card_image">
											<i class="ico-framework"></i>
										</div>

										<div class="card_content">
											<h4>Connected Cloud Computing</h4>

											<p>
												Lorem ipsum dolor sit amet, consectetur adipisicing elit,
											</p>
										</div>
									</div>

									<div class="card_imageText card_imageText-position4">
										<img src="{asset path='/images/temp/card-image-text-3.png'}" alt="" width="148" height="111">
									</div>
								</div>

								<div class="slider_slide card">
									<div class="card_inner">
										<div class="card_image">
											<i class="ico-peak"></i>
										</div>

										<div class="card_content">
											<h4>Software-as-a Service (startups)</h4>

											<p>
												Lorem ipsum dolor sit amet, consectetur adipisicing elit,
											</p>
										</div>
									</div>

									<div class="card_imageText card_imageText-position5">
										<img src="{asset path='/images/temp/card-image-text-4.png'}" alt="" width="133" height="124">
									</div>
								</div>

								<div class="slider_slide card">
									<div class="card_inner">
										<div class="card_image">
											<i class="ico-peak"></i>
										</div>

										<div class="card_content">
											<h4>Software-as-a Service (startups)</h4>

											<p>
												Lorem ipsum dolor sit amet, consectetur adipisicing elit,
											</p>
										</div>
									</div>

									<div class="card_imageText card_imageText-position5">
										<img src="{asset path='images/temp/card-image-text-4.png'}" alt="" width="133" height="124">
									</div>
								</div>

								<div class="slider_slide card">
									<div class="card_inner">
										<div class="card_image">
											<i class="ico-peak"></i>
										</div>

										<div class="card_content">
											<h4>Software-as-a Service (startups)</h4>

											<p>
												Lorem ipsum dolor sit amet, consectetur adipisicing elit,
											</p>
										</div>
									</div>

									<div class="card_imageText card_imageText-position5">
										<img src="{asset path='images/temp/card-image-text-4.png'}" alt="" width="133" height="124">
									</div>
								</div>

								<div class="slider_slide card">
									<div class="card_inner">
										<div class="card_image">
											<i class="ico-peak"></i>
										</div>

										<div class="card_content">
											<h4>Software-as-a Service (startups)</h4>

											<p>
												Lorem ipsum dolor sit amet, consectetur adipisicing elit,
											</p>
										</div>
									</div>

									<div class="card_imageText card_imageText-position5">
										<img src="{asset path='images/temp/card-image-text-4.png'}" alt="" width="133" height="124">
									</div>
								</div>

								<div class="slider_slide card">
									<div class="card_inner">
										<div class="card_image">
											<i class="ico-peak"></i>
										</div>

										<div class="card_content">
											<h4>Software-as-a Service (startups)</h4>

											<p>
												Lorem ipsum dolor sit amet, consectetur adipisicing elit,
											</p>
										</div>
									</div>

									<div class="card_imageText card_imageText-position5">
										<img src="{asset path='images/temp/card-image-text-4.png'}" alt="" width="133" height="124">
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
					<img src="{asset path='images/temp/callout-image-1.svg'}" alt="" width="277" height="209">
				</div>

				<div class="callout_image">
					<img src="{asset path='images/temp/callout-image-2.png'}" alt="" width="222" height="222">
				</div>

				<div class="callout_image">
					<img src="{asset path='images/temp/callout-image-3.png'}" alt="" width="145" height="68">
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
									<img src="{asset path='images/temp/service-image-8.png'}" alt="" width="190" height="130">
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
									<img src="{asset path='images/temp/service-image-9.png'}" alt="" width="190" height="130">
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
									<img src="{asset path='images/temp/service-image-10.png'}" alt="" width="190" height="130">
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
									<img src="{asset path='images/temp/service-image-9.png'}" alt="" width="190" height="130">
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
									<img src="{asset path='images/temp/service-image-11.png'}" alt="" width="190" height="130">
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
									<img src="{asset path='images/temp/service-image-12.png'}" alt="" width="190" height="130">
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
								<div class="card_image">
									<img src="{asset path='images/temp/service-image-9.png'}" alt="" width="190" height="130">
								</div>

								<div class="card_content">
									<h3>7. Get ahead with rapid prototyping</h3>

									<h5>We use working prototypes to show real results</h5>

									<p>
										Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et.
									</p>
								</div>
							</div>
						</div>

						<div class="cardSimple">
							<div class="card_inner">
								<div class="card_image">
									<img src="{asset path='images/temp/service-image-13.png'}" alt="" width="190" height="130">
								</div>

								<div class="card_content">
									<h3>8. Adaptable to technologies</h3>

									<h5>We use the best technology for the job</h5>

									<p>
										Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et.
									</p>
								</div>
							</div>
						</div>

						<div class="cardSimple">
							<div class="card_inner">
								<div class="card_image">
									<img src="{asset path='images/temp/service-image-14.png'}" alt="" width="190" height="130">
								</div>

								<div class="card_content">
									<h3>9. User-centred design</h3>

									<h5>We always build tech for real people</h5>

									<p>
										Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et.
									</p>
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

		<section class="section section-portfolio">
			<header class="section_head">
				<div class="shell">
					<h2 class="section_title">Our work</h2>

					<h4 class="section_subtitle">Some of our most best clients and projects</h4>
				</div>
			</header>

			<div class="section_body">
				<div class="shell shell-fluid">
					<div class="slider slider-portfolio">
						<div class="slider_clip">
							<div class="slider_slides">
								<div class="slider_slide">
									<div class="slider_slideImage">
										<img src="{asset path='images/temp/slider-image-1.png'}" alt="" width="1052" height="1145">
									</div>

									<div class="slider_slideContent">
										<div class="slider_slideEntry">
											<h6 class="slider_subtitle">Case Study</h6>

											<h3 class="slider_title">A bespoke mobile application for a recycling startup</h3>

											<p>
												We designed and built a bespoke mobile appliction that improved both efﬁciency and reliability of the weekly recycle bin collection.
											</p>

											<a href="#" class="btn btn-primary btn-outline">Explore</a>
										</div>
									</div>
								</div>

								<div class="slider_slide">
									<div class="slider_slideImage">
										<img src="{asset path='images/temp/slider-image-1.png'}" alt="" width="1052" height="1145">
									</div>

									<div class="slider_slideContent">
										<div class="slider_slideEntry">
											<h6 class="slider_subtitle">Case Study</h6>

											<h3 class="slider_title">A bespoke mobile application for a recycling startup</h3>

											<p>
												We designed and built a bespoke mobile appliction that improved both efﬁciency and reliability of the weekly recycle bin collection.
											</p>

											<a href="#" class="btn btn-primary btn-outline">Explore</a>
										</div>
									</div>
								</div>

								<div class="slider_slide">
									<div class="slider_slideImage">
										<img src="{asset path='images/temp/slider-image-1.png'}" alt="" width="1052" height="1145">
									</div>

									<div class="slider_slideContent">
										<div class="slider_slideEntry">
											<h6 class="slider_subtitle">Case Study</h6>

											<h3 class="slider_title">A bespoke mobile application for a recycling startup</h3>

											<p>
												We designed and built a bespoke mobile appliction that improved both efﬁciency and reliability of the weekly recycle bin collection.
											</p>

											<a href="#" class="btn btn-primary btn-outline">Explore</a>
										</div>
									</div>
								</div>

								<div class="slider_slide">
									<div class="slider_slideImage">
										<img src="{asset path='images/temp/slider-image-1.png'}" alt="" width="1052" height="1145">
									</div>

									<div class="slider_slideContent">
										<div class="slider_slideEntry">
											<h6 class="slider_subtitle">Case Study</h6>

											<h3 class="slider_title">A bespoke mobile application for a recycling startup</h3>

											<p>
												We designed and built a bespoke mobile appliction that improved both efﬁciency and reliability of the weekly recycle bin collection.
											</p>

											<a href="#" class="btn btn-primary btn-outline">Explore</a>
										</div>
									</div>
								</div>

								<div class="slider_slide">
									<div class="slider_slideImage">
										<img src="{asset path='images/temp/slider-image-1.png'}" alt="" width="1052" height="1145">
									</div>

									<div class="slider_slideContent">
										<div class="slider_slideEntry">
											<h6 class="slider_subtitle">Case Study</h6>

											<h3 class="slider_title">A bespoke mobile application for a recycling startup</h3>

											<p>
												We designed and built a bespoke mobile appliction that improved both efﬁciency and reliability of the weekly recycle bin collection.
											</p>

											<a href="#" class="btn btn-primary btn-outline">Explore</a>
										</div>
									</div>
								</div>

								<div class="slider_slide">
									<div class="slider_slideImage">
										<img src="{asset path='images/temp/slider-image-1.png'}" alt="" width="1052" height="1145">
									</div>

									<div class="slider_slideContent">
										<div class="slider_slideEntry">
											<h6 class="slider_subtitle">Case Study</h6>

											<h3 class="slider_title">A bespoke mobile application for a recycling startup</h3>

											<p>
												We designed and built a bespoke mobile appliction that improved both efﬁciency and reliability of the weekly recycle bin collection.
											</p>

											<a href="#" class="btn btn-primary btn-outline">Explore</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>

					<div class="sliderNav">
						<ul>
							<li class="current">
								<img src="{asset path='images/temp/slider-nav-image-1.png'}" alt="" class="hiddenOnHover" width="101" height="32">

								<img src="{asset path='images/temp/slider-nav-image-1-white.png'}" alt="" class="visibleOnHover" width="101" height="32">
							</li>

							<li>
								<img src="{asset path='images/temp/slider-nav-image-2.png'}" alt="" class="hiddenOnHover" width="101" height="32">

								<img src="{asset path='images/temp/slider-nav-image-2-white.png'}" alt="" class="visibleOnHover" width="101" height="32">
							</li>

							<li>
								<img src="{asset path='images/temp/slider-nav-image-3.png'}" alt="" class="hiddenOnHover" width="101" height="32">

								<img src="{asset path='images/temp/slider-nav-image-3-white.png'}" alt="" class="visibleOnHover" width="101" height="32">
							</li>

							<li>
								<img src="{asset path='images/temp/slider-nav-image-4.png'}" alt="" class="hiddenOnHover" width="101" height="32">

								<img src="{asset path='images/temp/slider-nav-image-4-white.png'}" alt="" class="visibleOnHover" width="101" height="32">
							</li>

							<li>
								<img src="{asset path='images/temp/slider-nav-image-5.png'}" alt="" class="hiddenOnHover" width="101" height="32">

								<img src="{asset path='images/temp/slider-nav-image-5-white.png'}" alt="" class="visibleOnHover" width="101" height="32">
							</li>

							<li>
								<img src="{asset path='images/temp/slider-nav-image-6.png'}" alt="" class="hiddenOnHover" width="101" height="32">

								<img src="{asset path='images/temp/slider-nav-image-6-white.png'}" alt="" class="visibleOnHover" width="101" height="32">
							</li>
						</ul>
					</div>
				</div>
			</div>
		</section>

		<section class="section section-testimonials">
			<header class="section_head">
				<div class="shell">
					<h2 class="section_title">Testimonals</h2>

					<h4 class="section_subtitle">Listen to what our customers say about us</h4>
				</div>
			</header>

			<div class="section_body">
				<div class="sliderTestimonials sliderTestimonials-secondary">
					<div class="slider_clip">
						<div class="slider_slides testimonials">
							<div class="slider_slide testimonial">
								<div class="testimonial_inner">
									<div class="testimonial_image">
										<div class="video">
											<img src="{asset path='images/temp/testimonial-image-1.jpg'}" alt="" width="684" height="405">

											<a href="https://www.youtube.com/watch?v=SrAzkFIYjFA" class="video_btn link-popup">
												<svg width="23" height="25" viewBox="0 0 23 25" fill="none" xmlns="http://www.w3.org/2000/svg">
													<path fill-rule="evenodd" clip-rule="evenodd" d="M1 2V23L20 12.5L1 2Z" fill="#0067FF" stroke="#0067FF" stroke-width="2"></path>
												</svg>
											</a>
										</div>
									</div>

									<div class="testimonial_content">
										<div class="testimonial_entry">
											<blockquote>
												From the outset, Newicon really understood what we were trying to achieve.
											</blockquote>

											<div class="testimonial_entryInner">
												<cite>Tom Beasley</cite>

												<p>
													Head of Bristol &amp; Bath Science Park
												</p>
											</div>
										</div>
									</div>
								</div>
							</div>

							<div class="slider_slide testimonial">
								<div class="testimonial_inner">
									<div class="testimonial_image">
										<div class="video">
											<img src="{asset path='images/temp/testimonial-image-1.jpg'}" alt="" width="684" height="405">

											<a href="https://www.youtube.com/watch?v=SrAzkFIYjFA" class="video_btn link-popup">
												<svg width="23" height="25" viewBox="0 0 23 25" fill="none" xmlns="http://www.w3.org/2000/svg">
													<path fill-rule="evenodd" clip-rule="evenodd" d="M1 2V23L20 12.5L1 2Z" fill="#0067FF" stroke="#0067FF" stroke-width="2"></path>
												</svg>
											</a>
										</div>
									</div>

									<div class="testimonial_content">
										<div class="testimonial_entry">
											<blockquote>
												From the outset, Newicon really understood what we were trying to achieve.
											</blockquote>

											<div class="testimonial_entryInner">
												<cite>Tom Beasley</cite>

												<p>
													Head of Bristol &amp; Bath Science Park
												</p>
											</div>
										</div>
									</div>
								</div>
							</div>

							<div class="slider_slide testimonial">
								<div class="testimonial_inner">
									<div class="testimonial_image">
										<div class="video">
											<img src="{asset path='images/temp/testimonial-image-1.jpg'}" alt="" width="684" height="405">

											<a href="https://www.youtube.com/watch?v=SrAzkFIYjFA" class="video_btn link-popup">
												<svg width="23" height="25" viewBox="0 0 23 25" fill="none" xmlns="http://www.w3.org/2000/svg">
													<path fill-rule="evenodd" clip-rule="evenodd" d="M1 2V23L20 12.5L1 2Z" fill="#0067FF" stroke="#0067FF" stroke-width="2"></path>
												</svg>
											</a>
										</div>
									</div>

									<div class="testimonial_content">
										<div class="testimonial_entry">
											<blockquote>
												From the outset, Newicon really understood what we were trying to achieve.
											</blockquote>

											<div class="testimonial_entryInner">
												<cite>Tom Beasley</cite>

												<p>
													Head of Bristol &amp; Bath Science Park
												</p>
											</div>
										</div>
									</div>
								</div>
							</div>

							<div class="slider_slide testimonial">
								<div class="testimonial_inner">
									<div class="testimonial_image">
										<div class="video">
											<img src="{asset path='images/temp/testimonial-image-1.jpg'}" alt="" width="684" height="405">

											<a href="https://www.youtube.com/watch?v=SrAzkFIYjFA" class="video_btn link-popup">
												<svg width="23" height="25" viewBox="0 0 23 25" fill="none" xmlns="http://www.w3.org/2000/svg">
													<path fill-rule="evenodd" clip-rule="evenodd" d="M1 2V23L20 12.5L1 2Z" fill="#0067FF" stroke="#0067FF" stroke-width="2"></path>
												</svg>
											</a>
										</div>
									</div>

									<div class="testimonial_content">
										<div class="testimonial_entry">
											<blockquote>
												From the outset, Newicon really understood what we were trying to achieve.
											</blockquote>

											<div class="testimonial_entryInner">
												<cite>Tom Beasley</cite>

												<p>
													Head of Bristol &amp; Bath Science Park
												</p>
											</div>
										</div>
									</div>
								</div>
							</div>

							<div class="slider_slide testimonial">
								<div class="testimonial_inner">
									<div class="testimonial_image">
										<div class="video">
											<img src="{asset path='images/temp/testimonial-image-1.jpg'}" alt="" width="684" height="405">

											<a href="https://www.youtube.com/watch?v=SrAzkFIYjFA" class="video_btn link-popup">
												<svg width="23" height="25" viewBox="0 0 23 25" fill="none" xmlns="http://www.w3.org/2000/svg">
													<path fill-rule="evenodd" clip-rule="evenodd" d="M1 2V23L20 12.5L1 2Z" fill="#0067FF" stroke="#0067FF" stroke-width="2"></path>
												</svg>
											</a>
										</div>
									</div>

									<div class="testimonial_content">
										<div class="testimonial_entry">
											<blockquote>
												From the outset, Newicon really understood what we were trying to achieve.
											</blockquote>

											<div class="testimonial_entryInner">
												<cite>Tom Beasley</cite>

												<p>
													Head of Bristol &amp; Bath Science Park
												</p>
											</div>
										</div>
									</div>
								</div>
							</div>

							<div class="slider_slide testimonial">
								<div class="testimonial_inner">
									<div class="testimonial_image">
										<div class="video">
											<img src="{asset path='images/temp/testimonial-image-1.jpg'}" alt="" width="684" height="405">

											<a href="https://www.youtube.com/watch?v=SrAzkFIYjFA" class="video_btn link-popup">
												<svg width="23" height="25" viewBox="0 0 23 25" fill="none" xmlns="http://www.w3.org/2000/svg">
													<path fill-rule="evenodd" clip-rule="evenodd" d="M1 2V23L20 12.5L1 2Z" fill="#0067FF" stroke="#0067FF" stroke-width="2"></path>
												</svg>
											</a>
										</div>
									</div>

									<div class="testimonial_content">
										<div class="testimonial_entry">
											<blockquote>
												From the outset, Newicon really understood what we were trying to achieve.
											</blockquote>

											<div class="testimonial_entryInner">
												<cite>Tom Beasley</cite>

												<p>
													Head of Bristol &amp; Bath Science Park
												</p>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>

					<div class="slider_nav">
						<div class="slider_dots"></div>
					</div>
				</div>
			</div>
		</section>

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
								<div class="book_image" style="background-image: url({asset path='images/temp/book-background-1.jpg);'}"></div>

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
								<div class="book_image" style="background-image: url({asset path='images/temp/book-background-2.jpg);'}"></div>

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
								<div class="book_image" style="background-image: url({asset path='images/temp/book-background-3.jpg);'}"></div>

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
