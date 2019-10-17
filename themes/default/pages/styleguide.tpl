{extends "layouts/layout.tpl"}
{block "header"}
    {navigation}
{/block}
{block "content"}
	<style>
		.caveat { font-family: caveat   color: #0067FF; }
		.trashhand { font-family: TrashHand, Arial ; color: #0067FF; }
		.trashhand { font-family: TrashHand, Arial ; color: #0067FF; font-size:24px; line-height: 32px; }
	</style>
	<div class="main">
        {hero_text
			title="Styleguide"
			bgTitle="Styleguide"
			subtitle="Newicon website styles"
			body="A summary of the main building blocks of the newicon site"
        }

		{static_block key="homepage_callout" wys=true}
			<p>We use design and software engineering to transform your future. Newicon. New tomorrow.</p>
			<!-- nc:p --> Here is is <!-- /nc:p -->
        {/static_block}

		<style>



			.card-background[data-animation=zooming] {
				transition: all .3s cubic-bezier(.2, 1, .22, 1);
				-webkit-transition: all .3s cubic-bezier(.2, 1, .22, 1);
			}
			.card-background.card-blog {
				overflow: hidden;
				height: 530px;
			}
			.card {
				margin-bottom: 30px;
				box-shadow: 0 15px 35px rgba(50,50,93,.1), 0 5px 15px rgba(0,0,0,.07);
				border: 0;
			}
			.card-background {
				background-position: 50%;
				background-size: cover;
				text-align: center;
			}
			.card-blog {
				overflow: hidden;
			}
			.card {
				position: relative;
			}
			.card { display: flex;flex-direction: column;min-width: 0;word-wrap: break-word;background-color: #fff;background-clip: border-box;border: .0625rem solid rgba(0,0,0,.05);border-radius: .5rem;}

			.card-background .full-background { background-position: 50%; background-size: cover;text-align: center;margin-bottom: 30px;width: 100%;height: 100%;position: absolute;border-radius: .5rem;backface-visibility: hidden;-webkit-backface-visibility: hidden;transition: all 1s cubic-bezier(.2,1,.22,1);-webkit-transition: all 1s cubic-bezier(.2,1,.22,1);}
			.card-background[data-animation=zooming]:hover { transform: scale(1.07);-webkit-transform: scale(1.07);z-index: 2;}
			.card-background[data-animation=true]:hover .full-background, .card-background[data-animation=zooming]:hover .full-background {
				transform: scale(1.1 );
				-webkit-transform: scale(1.1);
			}
			.card-background:after {
				position: absolute;
				top: 0;
				bottom: 0;
				left: 0;
				height: 100%;
				z-index: 1;
				width: 100%;
				display: block;
				content: "";
				background: rgba(0,0,0,.6);
			}
			.card-background[data-animation=zooming] a:not(.btn) {
				height: 100%;
			}
			.card-background[data-animation=zooming] .card-body {
				padding-bottom: 30px;
				margin: initial;
				height: 100%;
			}
			.card-background[data-animation=zooming] .card-body {
				padding-bottom: 30px;
				margin: initial;
				height: 100%;
			}

			.card-background .card-body {
				position: relative;
				z-index: 2;
				min-height: 330px;
				padding-top: 60px;
				padding-bottom: 60px;
			}
			.card-body {
				flex: 1 1 auto;
				padding: 1.5rem;
			}
			.card-background .card-body .content-bottom {
				position: absolute;
				bottom: 10px;
				text-align: left;
				color:white;
			}
			.card .card-title {
				margin-bottom: .5rem;
			}

			.row {
				display: -ms-flexbox;
				display: flex;
				-ms-flex-wrap: wrap;
				flex-wrap: wrap;
				margin-right: 16px;
				margin-left: 16px;
			}

			.container-fluid {
				width: 100%;
				padding-right: 15px;
				padding-left: 15px;
				margin-right: auto;
				margin-left: auto;
			}
			.container {
				width: 100%;
				padding-right: 15px;
				padding-left: 15px;
				margin-right: auto;
				margin-left: auto;
			}

			.col {
				-ms-flex-preferred-size: 0;
				flex-basis: 0;
				-ms-flex-positive: 1;
				flex-grow: 1;
				max-width: 100%;
				padding-right: 16px;
				padding-left: 16px;
			}


			.col-1, .col-2, .col-3, .col-4, .col-5, .col-6, .col-7, .col-8, .col-9, .col-10, .col-11, .col-12, .col,
			.col-auto, .col-sm-1, .col-sm-2, .col-sm-3, .col-sm-4, .col-sm-5, .col-sm-6, .col-sm-7, .col-sm-8, .col-sm-9, .col-sm-10, .col-sm-11, .col-sm-12, .col-sm,
			.col-sm-auto, .col-md-1, .col-md-2, .col-md-3, .col-md-4, .col-md-5, .col-md-6, .col-md-7, .col-md-8, .col-md-9, .col-md-10, .col-md-11, .col-md-12, .col-md,
			.col-md-auto, .col-lg-1, .col-lg-2, .col-lg-3, .col-lg-4, .col-lg-5, .col-lg-6, .col-lg-7, .col-lg-8, .col-lg-9, .col-lg-10, .col-lg-11, .col-lg-12, .col-lg,
			.col-lg-auto, .col-xl-1, .col-xl-2, .col-xl-3, .col-xl-4, .col-xl-5, .col-xl-6, .col-xl-7, .col-xl-8, .col-xl-9, .col-xl-10, .col-xl-11, .col-xl-12, .col-xl,
			.col-xl-auto {
				position: relative;
				width: 100%;
			}

			.col {
				-ms-flex-preferred-size: 0;
				flex-basis: 0;
				-ms-flex-positive: 1;
				flex-grow: 1;
				max-width: 100%;
			}

			.col-auto {
				-ms-flex: 0 0 auto;
				flex: 0 0 auto;
				width: auto;
				max-width: 100%;
			}

			.col-1 {
				-ms-flex: 0 0 8.333333%;
				flex: 0 0 8.333333%;
				max-width: 8.333333%;
			}

			.col-2 {
				-ms-flex: 0 0 16.666667%;
				flex: 0 0 16.666667%;
				max-width: 16.666667%;
			}

			.col-3 {
				-ms-flex: 0 0 25%;
				flex: 0 0 25%;
				max-width: 25%;
			}

			.col-4 {
				-ms-flex: 0 0 33.333333%;
				flex: 0 0 33.333333%;
				max-width: 33.333333%;
			}

			.col-5 {
				-ms-flex: 0 0 41.666667%;
				flex: 0 0 41.666667%;
				max-width: 41.666667%;
			}

			.col-6 {
				-ms-flex: 0 0 50%;
				flex: 0 0 50%;
				max-width: 50%;
			}

			.col-7 {
				-ms-flex: 0 0 58.333333%;
				flex: 0 0 58.333333%;
				max-width: 58.333333%;
			}

			.col-8 {
				-ms-flex: 0 0 66.666667%;
				flex: 0 0 66.666667%;
				max-width: 66.666667%;
			}

			.col-9 {
				-ms-flex: 0 0 75%;
				flex: 0 0 75%;
				max-width: 75%;
			}

			.col-10 {
				-ms-flex: 0 0 83.333333%;
				flex: 0 0 83.333333%;
				max-width: 83.333333%;
			}

			.col-11 {
				-ms-flex: 0 0 91.666667%;
				flex: 0 0 91.666667%;
				max-width: 91.666667%;
			}

			.col-12 {
				-ms-flex: 0 0 100%;
				flex: 0 0 100%;
				max-width: 100%;
			}
		</style>

		<div class="row">
			<div class="col">
				<div class="card card-blog card-background" data-animation="zooming">
					<div class="full-background" style="background-image: url('https://images.unsplash.com/photo-1568576157197-72cd17d47eed?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1999&q=80"></div>
					<a href="javascript:;">
						<div class="card-body">
							<div class="content-bottom">
								<h6 class="card-category text-white opacity-8">Spectrum</h6>
								<h5 class="card-title">Data Virtualization</h5>
							</div>
						</div>
					</a>
				</div>
			</div>
			<div class="col">
				<div class="card card-blog card-background" data-animation="zooming">
					<div class="full-background" style="background-image: url('https://images.unsplash.com/photo-1568576157197-72cd17d47eed?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1999&q=80"></div>
					<a href="javascript:;">
						<div class="card-body">
							<div class="content-bottom">
								<h6 class="card-category text-white opacity-8">Spectrum</h6>
								<h5 class="card-title">Data Virtualization</h5>
							</div>
						</div>
					</a>
				</div>
			</div>
			<div class="col">
				<div class="card card-blog card-background" data-animation="zooming">
					<div class="full-background" style="background-image: url('https://images.unsplash.com/photo-1463438690606-f6778b8c1d10?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2468&q=80"></div>
					<a href="javascript:;">
						<div class="card-body">
							<div class="content-bottom">
								<h6 class="card-category text-white opacity-8">Spectrum</h6>
								<h5 class="card-title">Data Virtualization</h5>
							</div>
						</div>
					</a>
				</div>
			</div>
			<div class="col">
				<div class="card card-blog card-background" data-animation="zooming">
					<div class="full-background" style="background-image: url('https://images.unsplash.com/photo-1463438690606-f6778b8c1d10?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2468&q=80"></div>
					<a href="javascript:;">
						<div class="card-body">
							<div class="content-bottom">
								<h6 class="card-category text-white opacity-8">Spectrum</h6>
								<h5 class="card-title">Data Virtualization</h5>
							</div>
						</div>
					</a>
				</div>
			</div>
		</div>

		<section class="section section-secondary">
			<div class="shell">
				<h1>h1. Typography</h1>
				<h2>h1. Typography</h2>
				<h3>h1. Typography</h3>
				<h4>h1. Typography</h4>
				<h5>h1. Typography</h5>
				<h6>h1. Typography</h6>
			</div>
		</section>
{*		<h1 style="font-size:50px; letter-spacing: 1px;color: black;"><span style="font-weight:700">new</span><span style="font-weight:300;padding-left:3px;" class="text-success" data-toggle="typed" data-options='{ "strings": ["thinking", "ideas", "tomorrow", "icon^5000"] }'></span></h1>*}

		{drop_zone id="dropzone1"}

		{/drop_zone}

		<div>
			<h1>Trash hand</h1>

			<div class="caveat">
				Working hard since 2008
			</div>

			<div class="trashhand">
				Working hard since 2008
			</div>
		</div>

	</div><!-- /.main -->
{/block}