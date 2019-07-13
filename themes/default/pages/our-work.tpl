{extends "layouts/layout.tpl"}
{block "header"}
    {navigation on='home' }
{/block}
{block "content"}
	<div class="main">
		<div class="introSecondary introSecondary-dark">
			<div class="shell">
				<div class="intro_inner">
					<div class="intro_content">
						<div class="shell">
							<div class="intro_entry">
								<h1 class="intro_title">Our work</h1><!-- /.intro_title -->

								<h4 class="intro_subtitle">Client stories to whet your appetite.</h4><!-- /.intro_subtitle -->

								<p>
									Every client challenge is unique. And so is our approach. Here’s a selection of our most favourate work.
								</p>
							</div><!-- /.intro_entry -->
						</div><!-- /.shell -->
					</div><!-- /.intro_content -->
				</div><!-- /.intro_inner -->

				<ul class="listFilters listFilters-dark">
					<li class="current">
						<a href="#">All work</a>
					</li>

					<li>
						<a href="#">Web Apps</a>
					</li>

					<li>
						<a href="#">Websites</a>
					</li>

					<li>
						<a href="#">E-commerce</a>
					</li>

					<li>
						<a href="#">Mobile App</a>
					</li>

					<li>
						<a href="#">Software</a>
					</li>
				</ul><!-- /.listFilters -->
			</div><!-- /.shell -->
		</div><!-- /.introSecondary -->

		<section class="sectionReview" style="background-image: url({asset path='images/temp/section-review-background-5.png);'}">
			<div class="shell">
				<div class="section_content">
					<div class="section_entry">
						<h6>Bristol &amp; Bath Science Park</h6>

						<h3>A striking online presence for the<br>innovation hub of Bristol</h3>

						<a href="#" class="btn btn-primary">Read more</a>
					</div><!-- /.section_entry -->
				</div><!-- /.section_content -->
			</div><!-- /.shell -->
		</section><!-- /.sectionReview -->

		<section class="sectionReview" style="background-image: url({asset path='images/temp/section-review-background-6.png);'}">
			<div class="shell">
				<div class="section_content">
					<div class="section_entry">
						<h6>Airbus</h6>

						<h3>A maintenance mobile app for a global<br>aviation superpower</h3>

						<a href="#" class="btn btn-primary">Read more</a>
					</div><!-- /.section_entry -->
				</div><!-- /.section_content -->
			</div><!-- /.shell -->
		</section><!-- /.sectionReview -->

		<section class="sectionReview" style="background-image: url({asset path='images/temp/section-review-background-7.png);'}">
			<div class="shell">
				<div class="section_content">
					<div class="section_entry">
						<h6>TEDxBristol</h6>

						<h3>A face-lift for one of Europe’s biggest<br>TEDx Events</h3>

						<a href="#" class="btn btn-primary">Read more</a>
					</div><!-- /.section_entry -->
				</div><!-- /.section_content -->
			</div><!-- /.shell -->
		</section><!-- /.sectionReview -->

		<section class="sectionReview" style="background-image: url({asset path='images/temp/section-review-background-8.png);'}">
			<div class="shell">
				<div class="section_content">
					<div class="section_entry">
						<h6>Lovell Stone Group</h6>

						<h3>Working with the south west’s finest<br>marble product suppliers</h3>

						<a href="#" class="btn btn-primary">Read more</a>
					</div><!-- /.section_entry -->
				</div><!-- /.section_content -->
			</div><!-- /.shell -->
		</section><!-- /.sectionReview -->

		<section class="sectionContacts">
			<div class="shell">
				<div class="section_content">
					<div class="section_inner">
						<header class="section_head">
							<div class="section_head-inner">
								<h1 class="section_title">Start your future, today.</h1><!-- /.section_title -->

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
								</ul><!-- /.list-contacts -->
							</div><!-- /.section_head-inner -->
						</header><!-- /.section_head -->

						<div class="section_body">
							<div class="form form-contacts">
								<form action="?" method="post">
									<div class="form_body">
										<div class="form_cols">
											<div class="form_col form_col-1of2">
												<div class="form_row">
													<div class="form_controls">
														<input type="text" class="field" name="name" placeholder="Name*">
													</div><!-- /.form_controls -->
												</div><!-- /.form_row -->

												<div class="form_row">
													<div class="form_controls">
														<input type="email" class="field" name="email" placeholder="Email address*">
													</div><!-- /.form_controls -->
												</div><!-- /.form_row -->

												<div class="form_row">
													<div class="form_controls">
														<input type="tel" class="field" name="tel" placeholder="Telephone">
													</div><!-- /.form_controls -->
												</div><!-- /.form_row -->
											</div><!-- /.form_col -->

											<div class="form_col form_col-1of2">
												<div class="form_row">
													<div class="form_controls">
														<textarea class="field field--textarea" name="message" placeholder="Tell us about your project"></textarea>
													</div><!-- /.form_controls -->
												</div><!-- /.form_row -->
											</div><!-- /.form_col -->
										</div><!-- /.footer_cols -->

										<div class="form_inner">
											<p>
												Subscribe to our email list and get up-to-date industry news. We never share your details with third parties - <a href="#">privacy policy</a>.
											</p>

											<ul class="list-radios">
												<li>
													<div class="radio">
														<input type="radio" name="subscribe" id="yes">

														<label for="yes">Yes</label>
													</div><!-- /.radio -->
												</li>

												<li>
													<div class="radio">
														<input type="radio" name="subscribe" id="no">

														<label for="no">No</label>
													</div><!-- /.radio -->
												</li>
											</ul><!-- /.list-radios -->
										</div><!-- /.form_inner -->
									</div><!-- /.form_body -->

									<div class="form_actions">
										<button type="submit" class="btn btn-secondary">Send message</button>
									</div><!-- /.form_actions -->
								</form>
							</div><!-- /.form -->
						</div><!-- /.section_body -->
					</div><!-- /.section_inner -->
				</div><!-- /.section_content -->
			</div><!-- /.shell -->
		</section><!-- /.sectionContacts -->
	</div><!-- /.main -->
{/block}