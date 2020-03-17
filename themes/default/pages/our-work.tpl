{extends "layouts/layout.tpl"}
{block "header"}
    {navigation inverse=true }
{/block}
{block "content"}
	{css}
		<style>
			.sectionReview { min-height: 100vh; height:100vh; }
			.introSecondary-dark { background: linear-gradient(black, #080e26); }
		</style>
	{/css}
	<div class="main">




		<div class="introSecondary introSecondary-dark m_pullIntoMenu -mt-24 py-24">
            {hero_text
            title="Our work"
            titleColor="white"
            sub="Client stories to whet your appetite."
            subColor="white"
            body="Every client challenge is unique. And so is our approach. <br/>Here’s a selection of our most favourate work."
            bodyColor="white"
            }
{*			<div class="shell">*}
{*				<ul class="listFilters listFilters-dark">*}
{*					<li class="current"><a href="#">All work</a></li>*}
{*					<li><a href="#">Web Apps</a></li>*}
{*					<li><a href="#">Websites</a></li>*}
{*					<li><a href="#">E-commerce</a></li>*}
{*					<li><a href="#">Mobile App</a></li>*}
{*					<li><a href="#">Software</a></li>*}
{*				</ul>*}
{*			</div>*}
		</div>

		{$caseStudies = [
			[
				'bg' => 'images/temp/section-review-background-5.png',
				'company' => 'Bristol &amp; Bath Science Park',
				'title' => 'A striking online presence for the<br>innovation hub of Bristol',
				'link' => 'case-study-bbsp'
			],
			[
				'bg' => 'images/temp/section-review-background-6.png',
				'company' => 'Airbus',
				'title' => 'A maintenance mobile app for a global<br>aviation superpower',
				'link' => ''
			],
			[
				'bg' => 'images/temp/section-review-background-7.png',
				'company' => 'TEDxBristol',
				'title' => 'A face-lift for one of Europe’s biggest<br>TEDx Events',
				'link' => ''
			],
			[
				'bg' => 'images/temp/section-review-background-8.png',
				'company' => 'Lovell Stone Group',
				'title' => 'Working with the south west’s finest<br>marble product suppliers',
				'link' => ''
			]
		]}

		{foreach $caseStudies as $work}

			<section class="h-screen bg-cover relative flex" style="background-image: url({asset path=$work.bg})">
				<div class=" container self-end mx-auto relative px-6% sm:px-1/12 bottom-28 text-white" data-aos="fade-up">
					<div class=" left-1/12 w-4/12 ">
						<cite class="ni-italic text-white">{$work.company}</cite>
						<h2 class="mt-3 mb-8">{$work.title}</h2>
						<a href="{page_url nice=$work.link}" title="Read about the work Newicon did for {$work.company}" class="btn btn-primary btn-fx py-4 px-14">Read more</a>
					</div>
				</div>
			</section>

        {/foreach}


{*		<section class="sectionContacts">*}
{*			<div class="shell" >*}
{*				<div class="section_content">*}
{*					<div class="section_inner" data-aos="fade-up">*}
{*						<header class="section_head">*}
{*							<div class="section_head-inner">*}
{*								<h1 class="section_title">Start your future, today.</h1>*}

{*								<p>*}
{*									For more information about how we can help you:*}
{*								</p>*}

{*								<ul class="list-contacts">*}
{*									<li>*}
{*										<h5>Call us on:</h5>*}

{*										<a href="tel:01172050425">0117 205 0425</a>*}
{*									</li>*}

{*									<li>*}
{*										<h5>Email us on:</h5>*}

{*										<a href="mailto:talktous@newicon.net">talktous@newicon.net</a>*}
{*									</li>*}
{*								</ul>*}
{*							</div>*}
{*						</header>*}

{*						<div class="section_body">*}
{*							<div class="form form-contacts">*}
{*								<form action="?" method="post">*}
{*									<div class="form_body">*}
{*										<div class="form_cols">*}
{*											<div class="form_col form_col-1of2">*}
{*												<div class="form_row">*}
{*													<div class="form_controls">*}
{*														<input type="text" class="field" name="name" placeholder="Name*">*}
{*													</div>*}
{*												</div>*}

{*												<div class="form_row">*}
{*													<div class="form_controls">*}
{*														<input type="email" class="field" name="email" placeholder="Email address*">*}
{*													</div>*}
{*												</div>*}

{*												<div class="form_row">*}
{*													<div class="form_controls">*}
{*														<input type="tel" class="field" name="tel" placeholder="Telephone">*}
{*													</div>*}
{*												</div>*}
{*											</div>*}

{*											<div class="form_col form_col-1of2">*}
{*												<div class="form_row">*}
{*													<div class="form_controls">*}
{*														<textarea class="field field--textarea" name="message" placeholder="Tell us about your project"></textarea>*}
{*													</div>*}
{*												</div>*}
{*											</div>*}
{*										</div>*}

{*										<div class="form_inner">*}
{*											<p>*}
{*												Subscribe to our email list and get up-to-date industry news. We never share your details with third parties - <a href="#">privacy policy</a>.*}
{*											</p>*}

{*											<ul class="list-radios">*}
{*												<li>*}
{*													<div class="radio">*}
{*														<input type="radio" name="subscribe" id="yes">*}

{*														<label for="yes">Yes</label>*}
{*													</div>*}
{*												</li>*}

{*												<li>*}
{*													<div class="radio">*}
{*														<input type="radio" name="subscribe" id="no">*}

{*														<label for="no">No</label>*}
{*													</div>*}
{*												</li>*}
{*											</ul>*}
{*										</div>*}
{*									</div>*}

{*									<div class="form_actions">*}
{*										<button type="submit" class="btn btn-secondary">Send message</button>*}
{*									</div>*}
{*								</form>*}
{*							</div>*}
{*						</div>*}
{*					</div>*}
{*				</div>*}
{*			</div>*}
{*		</section>*}
	</div>
{/block}
