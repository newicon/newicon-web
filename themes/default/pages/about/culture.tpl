{extends "layouts/layout.tpl"}
{block "header"}
    {navigation}
{/block}
{block "content"}
	<div class="main">
		<div class="introQuaternary">
			<div class="intro_inner">
				<div class="intro_content">
					<div class="intro_entry">
						<h1 class="intro_title">Culture</h1><!-- /.intro_title -->
						<h4 class="intro_subtitle">People focused. Future thinking. Inventive.</h4><!-- /.intro_subtitle -->
						<p>Our culture and brand go hand in hand. After all, a business is what its people make it. And our people are pretty great, even if we say so ourselves.</p>
					</div><!-- /.intro_entry -->
				</div><!-- /.intro_content -->

				<div class="intro_image">
					<img src="{asset path='images/temp/intro-image-2.svg'}" alt="" width="581" height="532">
					<img src="{asset path='images/temp/intro-image-text-7.png'}" alt="" width="164" height="165" class="introImageText">
				</div><!-- /.intro_image -->
			</div><!-- /.intro_inner -->
		</div><!-- /.introQuaternary -->


		<section class="sectionText sectionText-tertiary">
			<div class="section_content">
				<div class="shell shell-sm">
					<h2>Culture</h2>
					<p>Our mission is to produce world class digital platforms and technologies that enable people to achieve great things.</p>
				</div><!-- /.shell -->
			</div><!-- /.section_content -->

			<div class="section_image">
				<div class="shell">
					<img src="{asset path='images/temp/section-image-2.jpg'}" alt="" width="1200" height="526">
				</div><!-- /.shell -->
			</div><!-- /.section_image -->
		</section><!-- /.sectionText -->

		<section class="section section-services section-gray">
			<div class="shell">
				<header class="section_head">
					<h2>Why we do it</h2>
					<p>We want to work with like-minded people and organisations who challenge, invent, and create.</p>
				</header><!-- /.section_head -->

				<div class="section_body">
					<div class="servicesSecondary">
						<div class="serviceSecondary serviceSecondary-alt">
							<div class="service_inner">
								<div class="service_image">
									<img src="{asset path='images/temp/service-image-15.png'}" alt="" width="60" height="60">
								</div><!-- /.service_image -->

								<div class="service_content">
									<h3>Future</h3>
									{static_block key='value_future' wys=true}
										<p>We don’t want to walk blindly into the future, we want to forge ahead and shape it. And we believe that people-centric technology is the key to achieving that.</p>
									{/static_block}
								</div><!-- /.service_content -->

								<div class="service_imageText service_imageText-position2">
									<img src="{asset path='images/temp/section-text-image-3.png'}" alt="" width="208" height="105">
								</div><!-- /.service_imageText -->
							</div><!-- /.service_inner -->
						</div><!-- /.serviceSecondary -->

						<div class="serviceSecondary serviceSecondary-alt">
							<div class="service_inner">
								<div class="service_image">
									<img src="{asset path='images/temp/service-image-15.png'}" alt="" width="60" height="60">
								</div><!-- /.service_image -->

								<div class="service_content">
									<h3>People</h3>
									{static_block key='value_people' wys=true}
										<p>Technology exists to serve people, and people need to be considered from the very creation of an idea, right through to a product being brought to market.</p>
									{/static_block}
								</div><!-- /.service_content -->

								<div class="service_imageText service_imageText-position1">
									<img src="{asset path='images/temp/section-text-image-2.png'}" alt="" width="232" height="95">
								</div><!-- /.service_imageText -->
							</div><!-- /.service_inner -->
						</div><!-- /.serviceSecondary -->

						<div class="serviceSecondary serviceSecondary-alt">
							<div class="service_inner">
								<div class="service_image">
									<img src="{asset path='images/temp/service-image-15.png'}" alt="" width="60" height="60">
								</div><!-- /.service_image -->

								<div class="service_content">
									<h3>Invention</h3>
                                    {static_block key='value_invention' wys=true}
										<p>Necessity is the mother of all invention. But that’s far from the whole family tree. Curiosity. Creativity. Courage. They’re all part of the invention gene pool. </p>
                                    {/static_block}
								</div><!-- /.service_content -->

								<div class="service_imageText service_imageText-position3">
									<img src="{asset path='images/temp/section-text-image-4.png'}" alt="" width="179" height="123">
								</div><!-- /.service_imageText -->
							</div><!-- /.service_inner -->
						</div><!-- /.serviceSecondary -->
					</div><!-- /.services-secondary -->
				</div><!-- /.section_body -->

				<div class="section_actions">
					<a href="#" class="link link-secondary link-lg link-underline">Learn more about our Brand Values ></a>
				</div><!-- /.section_actions -->
			</div><!-- /.shell -->
		</section><!-- /.section -->

		<section class="sectionArticles sectionArticles-secondary">
			<div class="shell">
				<header class="section_head">
					<h2>How we do it</h2>
					<p>Find out how we take our values and apply them to everything we do, from client work and customer relationships right through to staff socials.</p>
				</header><!-- /.section_head -->

				<div class="section_body">
					<div class="articlesSmall articlesSmall-secondary">
						<div class="articleSmall articleSmall-secondary">
							<div class="article_inner">
								<div class="article_image">
									<img src="{asset path='images/temp/article-image-5.jpg'}" alt="" width="675" height="457">
								</div><!-- /.article_image -->

								<div class="article_content">
									<h2>Identify root causes and work within ambiguity</h2>

									<div class="article_entry">
										<h6>Judgement</h6>
										<p>We value people who make wise decisions (people, technical, business, and creative) despite ambiguity. People who identify root causes, and get beyond treating symptoms. People who smartly separate what must be done well now, and what can be improved later.</p>
									</div><!-- /.article_entry -->
								</div><!-- /.article_content -->
							</div><!-- /.article_inner -->
						</div><!-- /.articleSmall -->

						<div class="articleSmall articleSmall-secondary">
							<div class="article_inner">
								<div class="article_image">
									<img src="{asset path='images/temp/article-image-6.jpg'}" alt="" width="675" height="457">
								</div><!-- /.article_image -->

								<div class="article_content">
									<h2>Excellence in every aspect</h2>

									<div class="article_entry">
										<h6>Excellence &amp; Impact</h6>
										<p>
											We don’t settle for anything less than excellence in every group, and we have the self-honesty to admit when we’re wrong and the courage to change and challenge.  We value people who demonstrate consistently strong performance so colleagues can rely upon them.
										</p>
									</div><!-- /.article_entry -->
								</div><!-- /.article_content -->
							</div><!-- /.article_inner -->
						</div><!-- /.articleSmall -->

						<div class="articleSmall articleSmall-secondary">
							<div class="article_inner">
								<div class="article_image">
									<img src="{asset path='images/temp/article-image-5.jpg'}" alt="" width="675" height="457">
								</div><!-- /.article_image -->

								<div class="article_content">
									<h2>Simplicity.</h2>

									<div class="article_entry">
										<h6>Simplicity</h6>

										<p>
											We believe in the simple not the complex.
											Complexity is easy - simplicity is hard, you often need to travel through the complex to get to the simple.
										</p>
									</div><!-- /.article_entry -->
								</div><!-- /.article_content -->
							</div><!-- /.article_inner -->
						</div><!-- /.articleSmall -->

						<div class="articleSmall articleSmall-secondary">
							<div class="article_inner">
								<div class="article_image">
									<img src="{asset path='images/temp/article-image-6.jpg'}" alt="" width="675" height="457">
								</div><!-- /.article_image -->

								<div class="article_content">
									<h2>Re-conceptualise and challenge assumptions to drive innovation</h2>

									<div class="article_entry">
										<h6>Curiosity &amp; Innovation</h6>
										<p>We strive to re-conceptualise issues to discover practical solutions to hard problems. We value people who challenge prevailing assumptions when warranted, and suggest better approaches. All ultimately to create new ideas that prove useful. All while maintaining curiosity and an eagerness to learn and understand, our strategy, market, customers and suppliers and further your knowledge in business, usability, technology and people.</p>
									</div><!-- /.article_entry -->
								</div><!-- /.article_content -->
							</div><!-- /.article_inner -->
						</div><!-- /.articleSmall -->

						<div class="articleSmall articleSmall-secondary">
							<div class="article_inner">
								<div class="article_image">
									<img src="{asset path='images/temp/article-image-5.jpg'}" alt="" width="675" height="457">
								</div><!-- /.article_image -->

								<div class="article_content">
									<h2>Take smart risks and make tough decisions.</h2>

									<div class="article_entry">
										<h6>Courage</h6>

										<p>
											Taking responsibility while making tough decisions in a fast pased envionment is the epitome of a rare responsible person. Being able to say what you think and having the capability to admit fault when necessary is a skill to cultivate and something we value highly at Newicon. Risk is a core part of innovation, and we value taking smart risks.
										</p>
									</div><!-- /.article_entry -->
								</div><!-- /.article_content -->
							</div><!-- /.article_inner -->
						</div><!-- /.articleSmall -->

						<div class="articleSmall articleSmall-secondary">
							<div class="article_inner">
								<div class="article_image">
									<img src="{asset path='images/temp/article-image-6.jpg'}" alt="" width="675" height="457">
								</div><!-- /.article_image -->

								<div class="article_content">
									<h2>Sharing and helping openly and honesly</h2>

									<div class="article_entry">
										<h6>Honesty &amp; Selflessness</h6>

										<p>
											Making time to help your colleagues is an integral part of our day to day life. Employees are encouraged to share their knowledge, help others and always be available to support others in the team. We sahre information openly and proactivly, we are quick to admit mistakes, we are direct with our coversions but only say things to others we would be willing to say to the group or directly to others.
										</p>
									</div><!-- /.article_entry -->
								</div><!-- /.article_content -->
							</div><!-- /.article_inner -->
						</div><!-- /.articleSmall -->
					</div><!-- /.articlesSmall -->
				</div><!-- /.section_body -->
			</div><!-- /.shell -->
		</section><!-- /.sectionArticles -->

		<section class="section section-quaternary">
			<div class="shell">
				<header class="section_head">
					<h2>Who we work with</h2>

					<p>
						Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam nisl ligula, bibendum at orci nec, blandit tincidunt ex. Aliquam quis sagittis lectus. Sed ipsum nisi, auctor eget gravida non, ullamcorper eu nunc.
					</p>
				</header><!-- /.section_head -->
			</div><!-- /.shell -->
		</section><!-- /.section -->

		<section class="sectionText sectionText-secondary sectionText-secondaryAlt">
			<div class="shell shell-sm">
				<div class="section_content">
					<h2>The Rare Responsible Person</h2>

					<p>
						We’re looking for people who challenge, invent, and create. Not people who are too scared to deviate from a dogma, process or environment.
					</p>

					<p>
						We enable you to do this with freedom. Responsible people Thrive on Freedom, and are Worthy of Freedom. We want to increase freedom as we grow, rather than limit it, to continue to attract and nourish innovative people, so we have a better chance of sustained success
					</p>

					<div class="section_lists">
						<ul>
							<li>Self motivating</li>

							<li>Self aware</li>

							<li>Self disciplined</li>

							<li>Self improving</li>
						</ul>

						<ul>
							<li>Takes Ownership</li>

							<li>Acts like a leader</li>

							<li>Doesn’t wait to be told what to do</li>

							<li>Picks up the rubbish lying on the floor</li>
						</ul>
					</div><!-- /.section_lists -->
				</div><!-- /.section_content -->

				<div class="section-textImage">
					<img src="{asset path='images/temp/section-text-image.png'}" alt="" width="178" height="47">
				</div><!-- /.section-textImage -->
			</div><!-- /.shell -->
		</section><!-- /.sectionText -->

		<section class="section section-accordion">
			<div class="shell">
				<header class="section_head">
					<h2>13 Mantras of our Culture</h2>

					<p>
						Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
					</p>
				</header><!-- /.section_head -->

				<div class="section_body">
					<div class="accordion">
						<div class="accordion_section">
							<div class="accordion_head">
								<h5>1. Open company - transparent by default</h5>

								<svg width="10" height="14" viewBox="0 0 10 14" fill="none" xmlns="http://www.w3.org/2000/svg">
									<path d="M2.10786 2L7 6.94548L2 12" stroke="#0067FF" stroke-width="3"></path>
								</svg>
							</div><!-- /.accordion_head -->

							<div class="accordion_body">
								<p>
									Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deleniti culpa nam cumque sequi libero quam laudantium ullam, deserunt ea sunt?
								</p>
							</div><!-- /.accordion_body -->
						</div><!-- /.accordion_section -->

						<div class="accordion_section">
							<div class="accordion_head">
								<h5>2. Be the change you seek</h5>

								<svg width="10" height="14" viewBox="0 0 10 14" fill="none" xmlns="http://www.w3.org/2000/svg">
									<path d="M2.10786 2L7 6.94548L2 12" stroke="#0067FF" stroke-width="3"></path>
								</svg>
							</div><!-- /.accordion_head -->

							<div class="accordion_body">
								<p>
									Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deleniti culpa nam cumque sequi libero quam laudantium ullam, deserunt ea sunt?
								</p>
							</div><!-- /.accordion_body -->
						</div><!-- /.accordion_section -->

						<div class="accordion_section">
							<div class="accordion_head">
								<h5>3. Leave the politics to the politicians</h5>

								<svg width="10" height="14" viewBox="0 0 10 14" fill="none" xmlns="http://www.w3.org/2000/svg">
									<path d="M2.10786 2L7 6.94548L2 12" stroke="#0067FF" stroke-width="3"></path>
								</svg>
							</div><!-- /.accordion_head -->

							<div class="accordion_body">
								<p>
									Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deleniti culpa nam cumque sequi libero quam laudantium ullam, deserunt ea sunt?
								</p>
							</div><!-- /.accordion_body -->
						</div><!-- /.accordion_section -->

						<div class="accordion_section">
							<div class="accordion_head">
								<h5>4. Don’t #!@$ the customer</h5>

								<svg width="10" height="14" viewBox="0 0 10 14" fill="none" xmlns="http://www.w3.org/2000/svg">
									<path d="M2.10786 2L7 6.94548L2 12" stroke="#0067FF" stroke-width="3"></path>
								</svg>
							</div><!-- /.accordion_head -->

							<div class="accordion_body">
								<p>
									Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deleniti culpa nam cumque sequi libero quam laudantium ullam, deserunt ea sunt?
								</p>
							</div><!-- /.accordion_body -->
						</div><!-- /.accordion_section -->

						<div class="accordion_section">
							<div class="accordion_head">
								<h5>5. Pragmatic not dogmatic (Fearless in the face of uncertainty)</h5>

								<svg width="10" height="14" viewBox="0 0 10 14" fill="none" xmlns="http://www.w3.org/2000/svg">
									<path d="M2.10786 2L7 6.94548L2 12" stroke="#0067FF" stroke-width="3"></path>
								</svg>
							</div><!-- /.accordion_head -->

							<div class="accordion_body">
								<p>
									Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deleniti culpa nam cumque sequi libero quam laudantium ullam, deserunt ea sunt?
								</p>
							</div><!-- /.accordion_body -->
						</div><!-- /.accordion_section -->

						<div class="accordion_section">
							<div class="accordion_head">
								<h5>6. Use “First Principles” Thinking</h5>

								<svg width="10" height="14" viewBox="0 0 10 14" fill="none" xmlns="http://www.w3.org/2000/svg">
									<path d="M2.10786 2L7 6.94548L2 12" stroke="#0067FF" stroke-width="3"></path>
								</svg>
							</div><!-- /.accordion_head -->

							<div class="accordion_body">
								<p>
									Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deleniti culpa nam cumque sequi libero quam laudantium ullam, deserunt ea sunt?
								</p>
							</div><!-- /.accordion_body -->
						</div><!-- /.accordion_section -->

						<div class="accordion_section">
							<div class="accordion_head">
								<h5>7. Change is good change must be constant</h5>

								<svg width="10" height="14" viewBox="0 0 10 14" fill="none" xmlns="http://www.w3.org/2000/svg">
									<path d="M2.10786 2L7 6.94548L2 12" stroke="#0067FF" stroke-width="3"></path>
								</svg>
							</div><!-- /.accordion_head -->

							<div class="accordion_body">
								<p>
									Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deleniti culpa nam cumque sequi libero quam laudantium ullam, deserunt ea sunt?
								</p>
							</div><!-- /.accordion_body -->
						</div><!-- /.accordion_section -->

						<div class="accordion_section">
							<div class="accordion_head">
								<h5>8. Fail Fast - Failure is an option, seek knowledge through failure, fail fast</h5>

								<svg width="10" height="14" viewBox="0 0 10 14" fill="none" xmlns="http://www.w3.org/2000/svg">
									<path d="M2.10786 2L7 6.94548L2 12" stroke="#0067FF" stroke-width="3"></path>
								</svg>
							</div><!-- /.accordion_head -->

							<div class="accordion_body">
								<p>
									Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deleniti culpa nam cumque sequi libero quam laudantium ullam, deserunt ea sunt?
								</p>
							</div><!-- /.accordion_body -->
						</div><!-- /.accordion_section -->

						<div class="accordion_section">
							<div class="accordion_head">
								<h5>9. Build rather than buy (core skills)</h5>

								<svg width="10" height="14" viewBox="0 0 10 14" fill="none" xmlns="http://www.w3.org/2000/svg">
									<path d="M2.10786 2L7 6.94548L2 12" stroke="#0067FF" stroke-width="3"></path>
								</svg>
							</div><!-- /.accordion_head -->

							<div class="accordion_body">
								<p>
									Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deleniti culpa nam cumque sequi libero quam laudantium ullam, deserunt ea sunt?
								</p>
							</div><!-- /.accordion_body -->
						</div><!-- /.accordion_section -->

						<div class="accordion_section">
							<div class="accordion_head">
								<h5>10. Continuous learning environment</h5>

								<svg width="10" height="14" viewBox="0 0 10 14" fill="none" xmlns="http://www.w3.org/2000/svg">
									<path d="M2.10786 2L7 6.94548L2 12" stroke="#0067FF" stroke-width="3"></path>
								</svg>
							</div><!-- /.accordion_head -->

							<div class="accordion_body">
								<p>
									Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deleniti culpa nam cumque sequi libero quam laudantium ullam, deserunt ea sunt?
								</p>
							</div><!-- /.accordion_body -->
						</div><!-- /.accordion_section -->

						<div class="accordion_section">
							<div class="accordion_head">
								<h5>11. Comfort zone = Dead zone</h5>

								<svg width="10" height="14" viewBox="0 0 10 14" fill="none" xmlns="http://www.w3.org/2000/svg">
									<path d="M2.10786 2L7 6.94548L2 12" stroke="#0067FF" stroke-width="3"></path>
								</svg>
							</div><!-- /.accordion_head -->

							<div class="accordion_body">
								<p>
									Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deleniti culpa nam cumque sequi libero quam laudantium ullam, deserunt ea sunt?
								</p>
							</div><!-- /.accordion_body -->
						</div><!-- /.accordion_section -->

						<div class="accordion_section">
							<div class="accordion_head">
								<h5>12. Be responsible, be free</h5>

								<svg width="10" height="14" viewBox="0 0 10 14" fill="none" xmlns="http://www.w3.org/2000/svg">
									<path d="M2.10786 2L7 6.94548L2 12" stroke="#0067FF" stroke-width="3"></path>
								</svg>
							</div><!-- /.accordion_head -->

							<div class="accordion_body">
								<p>
									Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deleniti culpa nam cumque sequi libero quam laudantium ullam, deserunt ea sunt?
								</p>
							</div><!-- /.accordion_body -->
						</div><!-- /.accordion_section -->

						<div class="accordion_section">
							<div class="accordion_head">
								<h5>13. Be a coach</h5>

								<svg width="10" height="14" viewBox="0 0 10 14" fill="none" xmlns="http://www.w3.org/2000/svg">
									<path d="M2.10786 2L7 6.94548L2 12" stroke="#0067FF" stroke-width="3"></path>
								</svg>
							</div><!-- /.accordion_head -->

							<div class="accordion_body">
								<p>
									Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deleniti culpa nam cumque sequi libero quam laudantium ullam, deserunt ea sunt?
								</p>
							</div><!-- /.accordion_body -->
						</div><!-- /.accordion_section -->
					</div><!-- /.accordion -->

				</div><!-- /.section_body -->
			</div><!-- /.shell -->
		</section><!-- /.section -->


		<div class="section">
			<ul>
				<li>
					Principle 1 –   Long term vision: Base your management decisions on long term philosophy, even at the expense of short term financial goals.
				</li>
				<li>
					Principle 2 –   Create continuous process flow to bring problems to the surface. (Just In Time)
				</li>
				<li>
					Principle 3 –   Use lean tools to highlight waste. When value can not be easily defined, define it by learning.
				</li>
				<li>
					Principle 4 –   Build a culture of ‘stopping to fix problems’ to get quality right.  Fix root problems ask why 5 times!
				</li>
				<li>
					Principle 5 –   Endeavor to make everything visual. Making problems, challenges and existing solutions visible enables everyone to engage and spot opportunities.
					the is true from management data through to software solutions themselves. Software is by its nature hidden - making components and solutions visible and discoverable helps to promote reuse.
				</li>
				<li>
					Principle 6 –   Grow leaders who thoroughly understand the work, live the philosophy and teach it to others.
				</li>
				<li>
					Principle 7 – Respect your extended network of partners & suppliers by challenging them and helping them improve.
				</li>
				<li>
					Principle 8 – Go and see for yourself and thoroughly understand the situation.
				</li>
				<li>
					Principle 9 – Become a learning organisation through relentless reflection and continuous improvement.
				</li>

				<li>
					Positivity - Bring solutions not endless problems and road blocks.  It's easy to find negatives - sometimes people even think this is productive.
					However for creativity you need to relentlessly itterate great ideas and later whittle them down.
					Don;t stifle creativity with negativie no nos, there is always a reason not to do something.  Try to find reasons to do it.
					There are some exceptions to this rule.  Assess worst case scenarios and measure risk quickly. As long as no one will die, or get hurt then get on with generting ideas and stop worrying.
				</li>

				<li>
					Passion - passion is good - just remember to breath
				</li>
			</ul>
		</div>

		<section class="sectionPaging">
			<div class="shell shell-fluid">
				<header class="section_head">
					<h2>Where next?</h2>
				</header><!-- /.section_head -->

				<div class="section_body">
					<div class="paging">
						<div class="paging_prev">
							<div class="paging_inner">
								<div class="paging_content">
									<h3>About us</h3>

									<p>
										Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do
									</p>

									<a href="#" class="btn btn-primary btn-sm">Explore</a>
								</div><!-- /.paging_content -->
							</div><!-- /.paging_inner -->
						</div><!-- /.paging_prev -->

						<div class="paging_next">
							<div class="paging_inner">
								<div class="paging_content">
									<h3>Join the team</h3>

									<p>
										Lorem ipsum dolor sit amet, consectetur adipisicing elit.
									</p>

									<a href="#" class="btn btn-primary btn-sm">Explore</a>
								</div><!-- /.paging_content -->
							</div><!-- /.paging_inner -->
						</div><!-- /.paging_next -->
					</div><!-- /.paging -->
				</div><!-- /.section_body -->
			</div><!-- /.shell -->
		</section><!-- /.sectionPaging -->
	</div><!-- /.main -->
{/block}