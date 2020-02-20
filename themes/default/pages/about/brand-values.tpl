{extends "layouts/layout.tpl"}
{block "header"}
    {navigation}
{/block}
{block "content"}
	<div class="main">

        {hero_text
	        title="Our Brand Values"
	        bgTitle="Brand Values"
	        subtitle="What makes us tick?"
	        body=" "
        }

		<section class="sectionQuaternary sectionQuaternary-alt">
			<div class="shell">
				<div class="section_head">
					<h2>3 Brand Values</h2>

					<h4>Everything we do and everything we stand for can be traced back to our three core values.</h4>
				</div>

				<div class="section_body">
					<img src="{asset path="images/temp/section-image.png"}" alt="" width="978" height="900">
				</div>
			</div>
		</section>

		<div class="sectionList sectionList-alt">
			<div class="shell">
				<div class="section_content">
					<div class="section_group">
						<h1 class="section_title">Future</h1>

						<p>
							Where are we going? That’s a question we think about a lot. We’re passionate about creating a better future; not just for business — for the world in general. We don’t want to walk blindly into the future, we want to forge ahead and shape it. And we believe that people-centric technology is the key to achieving that.
						</p>

						<h5 class="section_subtitle">In action, this means we value:</h5>

						<ul>
							<li>Innovation</li>

							<li>Big-picture thinking</li>

							<li>Thought leadership</li>

							<li>Strategy</li>

							<li>Ambition</li>

							<li>Disruption</li>

							<li>Progress</li>
						</ul>

						<div class="section_group-icon section_group-iconPosition4">
							<img src="{asset path="images/temp/section-list-icon-4.svg"}" alt="" width="105" height="156">
						</div>

						<div class="section_group-arrow section_group-arrowPosition4">
							<img src="{asset path="images/temp/section-list-arrow-4.svg"}" alt="" width="121" height="126">
						</div>
					</div>

					<div class="section_group">
						<h1 class="section_title">People</h1>

						<p>
							Without people, technology is meaningless. What use is an app, if no one can figure out how to use it? Technology exists to serve people, and people need to be considered from the very creation of an idea, right through to a product being brought to market. We’re also very picky about the people who work for us. We don’t just employ smart people — we employ smart people who are people people. Collaborators. Educators. Team players. That’s what we look for, and that’s what we offer our clients
						</p>

						<h5 class="section_subtitle">In action, this means we value:</h5>

						<ul>
							<li>Putting people first </li>

							<li>Teamwork</li>

							<li>Co-operation</li>

							<li>Collaboration</li>

							<li>Fun</li>

							<li>Helpfulness</li>

							<li>Friendliness</li>

							<li>Empowerment</li>
						</ul>

						<div class="section_group-icon section_group-iconPosition5">
							<img src="{asset path="images/temp/section-list-icon-2.svg"}" alt="" width="105" height="197">
						</div>

						<div class="section_group-arrow section_group-arrowPosition5">
							<img src="{asset path="images/temp/section-list-arrow-5.svg"}" alt="" width="127" height="128">
						</div>
					</div>

					<div class="section_group">
						<h1 class="section_title">Invention</h1>

						<p>
							Necessity is the mother of all invention. But that’s far from the whole family tree. Curiosity. Creativity. Courage. They’re all part of the invention gene pool. They’re also all values that are at the core of Newicon. We live and breathe invention — just like Bristol does.
						</p>

						<h5 class="section_subtitle">In action, this means we value:</h5>

						<ul>
							<li>Innovation</li>

							<li>Creativity</li>

							<li>Fun</li>

							<li>Courageous</li>

							<li>Challenging</li>

							<li>Simplicity</li>

							<li>Inquisitiveness</li>

							<li>Design-led</li>
						</ul>

						<div class="section_group-icon section_group-iconPosition6">
							<img src="{asset path="images/temp/section-list-icon-5.svg"}" alt="" width="68" height="171">
						</div>
					</div>
				</div>
			</div>
		</div>

		<section class="sectionPaging">
			<div class="shell shell-fluid">
				<header class="section_head">
					<h2>Where next?</h2>
				</header>

				<div class="section_body">
					<div class="paging">
						<div class="paging_prev">
							<div class="paging_inner">
								<div class="paging_content">
									<h2>Our Approach</h2>

									<p>
										Expore how Newicon have grown to where we are
									</p>

									<a href="#" class="btn btn-primary btn-sm">Explore</a>
								</div>
							</div>
						</div>

						<div class="paging_next">
							<div class="paging_inner">
								<div class="paging_content">
									<h2>Meet the team</h2>

									<p>
										Learn more about our process and approach to digital engeneering
									</p>

									<a href="#" class="btn btn-primary btn-sm">Explore</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>

		<section class="sectionContacts">
			<div class="shell">
				<div class="section_content">
					<div class="section_inner">
						<header class="section_head">
							<div class="section_head-inner">
								<h1 class="section_title">Start your future, today.</h1>

								<p>
									For more information about how we can help you:
								</p>

								<ul class="list-contacts">
									<li>
										<h5>Call us on:</h5>

										<a href="tel:01172050425">0117 205 0425</a>
									</li>

									<li>
										<h5>Email us on:</h5>

										<a href="mailto:talktous@newicon.net">talktous@newicon.net</a>
									</li>
								</ul>
							</div>
						</header>

						<div class="section_body">
							<div class="form form-contacts">
								<form action="?" method="post">
									<div class="form_body">
										<div class="form_cols">
											<div class="form_col form_col-1of2">
												<div class="form_row">
													<div class="form_controls">
														<input type="text" class="field" name="name" placeholder="Name*">
													</div>
												</div>

												<div class="form_row">
													<div class="form_controls">
														<input type="email" class="field" name="email" placeholder="Email address*">
													</div>
												</div>

												<div class="form_row">
													<div class="form_controls">
														<input type="tel" class="field" name="tel" placeholder="Telephone">
													</div>
												</div>
											</div>

											<div class="form_col form_col-1of2">
												<div class="form_row">
													<div class="form_controls">
														<textarea class="field field--textarea" name="message" placeholder="Tell us about your project"></textarea>
													</div>
												</div>
											</div>
										</div>

										<div class="form_inner">
											<p>
												Subscribe to our email list and get up-to-date industry news. We never share your details with third parties - <a href="#">privacy policy</a>.
											</p>

											<ul class="list-radios">
												<li>
													<div class="radio">
														<input type="radio" name="subscribe" id="yes">

														<label for="yes">Yes</label>
													</div>
												</li>

												<li>
													<div class="radio">
														<input type="radio" name="subscribe" id="no">

														<label for="no">No</label>
													</div>
												</li>
											</ul>
										</div>
									</div>

									<div class="form_actions">
										<button type="submit" class="btn btn-secondary">Send message</button>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
	</div>
{/block}
