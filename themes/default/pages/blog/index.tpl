{extends "layouts/layout.tpl"}
{block "header"}
    {navigation}
{/block}
{block "content"}
	<div class="main">
		<div class="blog">

            {hero_text
            title="Blog articles"
            subtitle="Read our blog articles below or sort by topic"
            }

			<div class="shell">
				<div class="blog_head">
					<div class="blog_inner">
						<div class="blog_content"></div>
{*						<div class="blog_aside">*}
{*							<div class="search">*}
{*								<form action="?" method="get"><label for="searchField" class="hidden">Search</label>*}
{*									<input type="search" name="searchField" id="searchField" placeholder="Search" class="search_field">*}
{*									<button type="submit" class="search_btn">*}
{*										<img src="{asset path='/images/temp/ico-search.svg'}" alt="" width="16" height="16">*}
{*									</button>*}
{*								</form>*}
{*							</div><!-- /.search -->*}
{*						</div><!-- /.blog_aside -->*}
					</div><!-- /.blog_inner -->

					<div class="blog_filters">
						<ul class="listFilters">
							<li class="current">
								<a href="#">Software development</a>
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
								<a href="#">IoT</a>
							</li>
						</ul><!-- /.listFilters -->
					</div><!-- /.blog_filters -->
				</div><!-- /.blog_head -->

				<div class="blog_body">
					<div class="articleFeature">
						<div class="article_inner">
							<div class="article_content">
								<div class="article_entry">
									<h6 class="article_subtitle">News</h6><!-- /.article_subtitle -->

									<h2 class="article_title">Newicon, TEDxBristol, and the dawn of a new tomorrow</h2><!-- /.article_title -->

									<div class="article_entryInner">
										<p>
											Some sort of introductory sentence that leads the reader into the full article on the next page.
										</p>

										<div class="article_meta">
											<strong>Neill Jones</strong> - 10 November 2017 - 6 min read
										</div><!-- /.article_meta -->

										<a href="#" class="btn btn-purple btn-outline btn-xs">Read more</a>
									</div><!-- /.article_entryInner -->
								</div><!-- /.article_entry -->
							</div><!-- /.article_content -->

							<div class="article_image">
								<img src="{asset path='/images/temp/article-image-7.jpg'}" alt="" width="605" height="383">
							</div><!-- /.article_image -->
						</div><!-- /.article_inner -->
					</div><!-- /.articleFeature -->

					<div class="container">
						<div class="container_inner">
							<div class="content">
								<div class="blogPosts">
									<div class="blogPost">
										<div class="blogPost_inner">
											<div class="blogPost_image">
												<a href="#">
													<img src="{asset path='/images/temp/blog-post-image-1.jpg'}" alt="" width="293" height="190">
												</a>
											</div><!-- /.blogPost_image -->

											<div class="blogPost_content">
												<div class="blogPost_entry">
													<div class="blogPost_meta">
														<span>May 04 - 7 min read</span>
													</div><!-- /.blogPost_meta -->

													<h4 class="blogPost_title">
														<a href="#">Why local SEO is important for you and your business: part one</a>
													</h4><!-- /.blogPost_title -->

													<p>
														If you’re new to local search or are wondering where to start with your online marketing efforts, then don’t panic — here’s a guide.
													</p>

													<a href="#" class="btn btn-purple btn-outline btn-xs">Read more</a>
												</div><!-- /.blogPost_entry -->
											</div><!-- /.blogPost_content -->
										</div><!-- /.blogPost_inner -->
									</div><!-- /.blogPost -->

									<div class="blogPost">
										<div class="blogPost_inner">
											<div class="blogPost_image">
												<a href="#">
													<img src="{asset path='/images/temp/blog-post-image-2.jpg'}" alt="" width="293" height="190">
												</a>
											</div><!-- /.blogPost_image -->

											<div class="blogPost_content">
												<div class="blogPost_entry">
													<div class="blogPost_meta">
														<span>May 04 - 7 min read</span>
													</div><!-- /.blogPost_meta -->

													<h4 class="blogPost_title">
														<a href="#">Designing a mobile app for a global enterprise</a>
													</h4><!-- /.blogPost_title -->

													<p>
														This time in the interviewee’s chair, it’s developer Jonathon Herbert’s turn to get a grilling. Let’s see what we can get out of him.
													</p>

													<a href="#" class="btn btn-purple btn-outline btn-xs">Read more</a>
												</div><!-- /.blogPost_entry -->
											</div><!-- /.blogPost_content -->
										</div><!-- /.blogPost_inner -->
									</div><!-- /.blogPost -->

									<div class="blogPost">
										<div class="blogPost_inner">
											<div class="blogPost_image">
												<a href="#">
													<img src="{asset path='/images/temp/blog-post-image-3.jpg'}" alt="" width="293" height="190">
												</a>
											</div><!-- /.blogPost_image -->

											<div class="blogPost_content">
												<div class="blogPost_entry">
													<div class="blogPost_meta">
														<span>May 04 - 7 min read</span>
													</div><!-- /.blogPost_meta -->

													<h4 class="blogPost_title">
														<a href="#">What digital transformation means for your business</a>
													</h4><!-- /.blogPost_title -->

													<p>
														One thing is for certain in modern business: if you’re not innovating, you’re falling behind. Let’s see what digital transformation can do for you.
													</p>

													<a href="#" class="btn btn-purple btn-outline btn-xs">Read more</a>
												</div><!-- /.blogPost_entry -->
											</div><!-- /.blogPost_content -->
										</div><!-- /.blogPost_inner -->
									</div><!-- /.blogPost -->

									<div class="blogPost">
										<div class="blogPost_inner">
											<div class="blogPost_image">
												<a href="#">
													<img src="{asset path='/images/temp/blog-post-image-4.jpg'}" alt="" width="293" height="190">
												</a>
											</div><!-- /.blogPost_image -->

											<div class="blogPost_content">
												<div class="blogPost_entry">
													<div class="blogPost_meta">
														<span>May 04 - 7 min read</span>
													</div><!-- /.blogPost_meta -->

													<h4 class="blogPost_title">
														<a href="#">Kubernetes: A Deployment Voyage</a>
													</h4><!-- /.blogPost_title -->

													<p>
														This time in the interviewee’s chair, it’s developer Jonathon Herbert’s turn to get a grilling. Let’s see what we can get out of him.
													</p>

													<a href="#" class="btn btn-purple btn-outline btn-xs">Read more</a>
												</div><!-- /.blogPost_entry -->
											</div><!-- /.blogPost_content -->
										</div><!-- /.blogPost_inner -->
									</div><!-- /.blogPost -->

									<div class="blogPost blogPost-feature">
										<div class="blogPost_inner">
											<div class="subscribe">
												<div class="subscribe_content">
													<h2 class="subscribe_title">Bringing you the freshest article and resources on Software Development, UX Design and The Web</h2><!-- /.subscribe_title -->

													<a href="#" class="btn btn-primary btn-outline btn-md">Subscribe</a>
												</div><!-- /.subscribe_content -->
											</div><!-- /.subscribe -->
										</div><!-- /.blogPost_inner -->
									</div><!-- /.blogPost -->

									<div class="blogPost">
										<div class="blogPost_inner">
											<div class="blogPost_image">
												<a href="#">
													<img src="{asset path='/images/temp/blog-post-image-5.jpg'}" alt="" width="293" height="190">
												</a>
											</div><!-- /.blogPost_image -->

											<div class="blogPost_content">
												<div class="blogPost_entry">
													<div class="blogPost_meta">
														<span>May 04 - 7 min read</span>
													</div><!-- /.blogPost_meta -->

													<h4 class="blogPost_title">
														<a href="#">Why local SEO is important for you and your business: part one</a>
													</h4><!-- /.blogPost_title -->

													<p>
														If you’re new to local search or are wondering where to start with your online marketing efforts, then don’t panic — here’s a guide.
													</p>

													<a href="#" class="btn btn-purple btn-outline btn-xs">Read more</a>
												</div><!-- /.blogPost_entry -->
											</div><!-- /.blogPost_content -->
										</div><!-- /.blogPost_inner -->
									</div><!-- /.blogPost -->

									<div class="blogPost">
										<div class="blogPost_inner">
											<div class="blogPost_image">
												<a href="#">
													<img src="{asset path='/images/temp/blog-post-image-6.jpg'}" alt="" width="293" height="190">
												</a>
											</div><!-- /.blogPost_image -->

											<div class="blogPost_content">
												<div class="blogPost_entry">
													<div class="blogPost_meta">
														<span>May 04 - 7 min read</span>
													</div><!-- /.blogPost_meta -->

													<h4 class="blogPost_title">
														<a href="#">Delving into the life of a developer—Jonathon Herbert</a>
													</h4><!-- /.blogPost_title -->

													<p>
														This time in the interviewee’s chair, it’s developer Jonathon Herbert’s turn to get a grilling. Let’s see what we can get out of him.
													</p>

													<a href="#" class="btn btn-purple btn-outline btn-xs">Read more</a>
												</div><!-- /.blogPost_entry -->
											</div><!-- /.blogPost_content -->
										</div><!-- /.blogPost_inner -->
									</div><!-- /.blogPost -->

									<div class="blogPost">
										<div class="blogPost_inner">
											<div class="blogPost_image">
												<a href="#">
													<img src="{asset path='/images/temp/blog-post-image-7.jpg'}" alt="" width="293" height="190">
												</a>
											</div><!-- /.blogPost_image -->

											<div class="blogPost_content">
												<div class="blogPost_entry">
													<div class="blogPost_meta">
														<span>May 04 - 7 min read</span>
													</div><!-- /.blogPost_meta -->

													<h4 class="blogPost_title">
														<a href="#">What digital transformation means for your business</a>
													</h4><!-- /.blogPost_title -->

													<p>
														One thing is for certain in modern business: if you’re not innovating, you’re falling behind. Let’s see what digital transformation can do for you.
													</p>

													<a href="#" class="btn btn-purple btn-outline btn-xs">Read more</a>
												</div><!-- /.blogPost_entry -->
											</div><!-- /.blogPost_content -->
										</div><!-- /.blogPost_inner -->
									</div><!-- /.blogPost -->

									<div class="blogPost">
										<div class="blogPost_inner">
											<div class="blogPost_image">
												<a href="#">
													<img src="{asset path='/images/temp/blog-post-image-8.jpg'}" alt="" width="293" height="190">
												</a>
											</div><!-- /.blogPost_image -->

											<div class="blogPost_content">
												<div class="blogPost_entry">
													<div class="blogPost_meta">
														<span>May 04 - 7 min read</span>
													</div><!-- /.blogPost_meta -->

													<h4 class="blogPost_title">
														<a href="#">Kubernetes: A Deployment Voyage</a>
													</h4><!-- /.blogPost_title -->

													<p>
														This time in the interviewee’s chair, it’s developer Jonathon Herbert’s turn to get a grilling. Let’s see what we can get out of him.
													</p>

													<a href="#" class="btn btn-purple btn-outline btn-xs">Read more</a>
												</div><!-- /.blogPost_entry -->
											</div><!-- /.blogPost_content -->
										</div><!-- /.blogPost_inner -->
									</div><!-- /.blogPost -->
								</div><!-- /.blogPosts -->
							</div><!-- /.content -->

							<div class="sidebar">
								<div class="widgets">
									<div class="widget">
										<div class="widget_head">
											<h5 class="widget_title">Most Popular</h5><!-- /.widget_title -->
										</div><!-- /.widget_head -->

										<div class="widget_body">
											<ul class="listArticles">
												<li>
													<h4>
														<a href="#">11 rules to live by in the world of software engineering</a>
													</h4>

													<p>
														Technology | 7 min read
													</p>
												</li>

												<li>
													<h4>
														<a href="#">Digital transformation is just one question away</a>
													</h4>

													<p>
														Technology | 3 min read
													</p>
												</li>

												<li>
													<h4>
														<a href="#">Why local SEO is important for you and your business: part one</a>
													</h4>

													<p>
														Marketing | 5 min read
													</p>
												</li>

												<li>
													<h4>
														<a href="#">Product Design vs UX Design: why you need to know the difference</a>
													</h4>

													<p>
														Design | 4 min read
													</p>
												</li>
											</ul><!-- /.listArticles -->
										</div><!-- /.widget_body -->
									</div><!-- /.widget -->

									<div class="widget">
										<div class="widget_head">
											<h5 class="widget_title">Downloads</h5><!-- /.widget_title -->
										</div><!-- /.widget_head -->

										<div class="widget_body">
											<div class="offer">
												<div class="offer_content">
													<h3 class="offer_title">Take Your Business To The Next Level</h3><!-- /.offer_title -->

													<h5 class="offer_subtitle">Introducing Newicon’s Innovation Kit</h5><!-- /.offer_subtitle -->

													<ul class="listBullet">
														<li>Run creative workshops effortlessly</li>

														<li>Generate new and innovative ideas</li>

														<li>Go from idea to reality</li>
													</ul><!-- /.listBullet -->
												</div><!-- /.offer_content -->

												<div class="offer_image">
													<img src="{asset path='/images/temp/offer-image.svg'}" alt="" width="210" height="194">
												</div><!-- /.offer_image -->
											</div><!-- /.offer -->
										</div><!-- /.widget_body -->
									</div><!-- /.widget -->
								</div><!-- /.widgets -->
							</div><!-- /.sidebar -->
						</div><!-- /.container_inner -->
					</div><!-- /.container -->
				</div><!-- /.blog_body -->
			</div><!-- /.shell -->
		</div><!-- /.blog -->
	</div><!-- /.main -->
{/block}