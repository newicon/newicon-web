<section class="sectionContacts">
	<div class="shell">
		<div class="section_content">
			<div class="section_inner">
				<header class="section_head">
					<div class="section_head-inner">
						<h1 class="section_title">{$title|default:'Get in touch'}</h1>
						<p>For more information about how we can help you:</p>
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
										<div class="form_row">
											<p>Subscribe to our email list and get up-to-date industry news. We never share your details with third parties - <a href={page_url id="privacy-policy"}#">privacy policy</a>.</p>
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
									<div class="form_col form_col-1of2">
										<div class="form_row">
											<div class="form_controls">
												<textarea class="field field--textarea" name="message" placeholder="Tell us about your project"></textarea>
											</div>
										</div>
									</div>
								</div>
								<div class="form_inner">
									<div class="g-recaptcha" data-sitekey="6LfR87gUAAAAAIjH66eKulII2h-dhRyJHxIDGilO"></div>
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
