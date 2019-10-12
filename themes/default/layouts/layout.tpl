<!doctype html>
<!--[if IE 9]><html class="ie9 no-js"><![endif]-->
<html class="no-js">
	<head>
		{include "layouts/head.tpl"}
		{css}{literal}
			<style>
			/**** Pinched from official bootstrap theme ***/
			/**** Docs: http://bootstrap-themes.github.io/marketing/docs/index.html#blocks ***/
			.block {position: relative;display:table;width: 100%;padding: 60px 30px;background-position: center;background-size: cover;background-repeat: no-repeat;height: 105vh;}
			.block_parallax {background-attachment:fixed;}
			.block_background {position: absolute;top: 0;right: 0;bottom: 0;left: 0;}
			.block_middle {display: table-cell;vertical-align: middle;}
			.block_bottom {display: table-cell;vertical-align: bottom;}
			.block_top {display: table-cell;vertical-align: top;}
			@media screen and (min-width: 768px) {
				.block {padding: 100px 0;}
			}
			.cardDark { background:rgba(0,0,0,0.5); border-radius:8px; padding:50px; }
			[data-aos="fade-up"] { opacity:0 }


			</style>
        {/literal}{/css}
	</head>
	<body data-aos-easing="ease-out-quad" data-aos-duration="700" data-aos-delay="0">
		<div class="wrapper">
			{neon_body_begin}
			{block "header"}
				{navigation}
			{/block}

			{block "content"}
				CONTENT HERE
			{/block}

			<div class="mobile-bar">
				<nav class="nav-utilities">
					<ul>
						<li>
							<a href="#">
								<svg width="22px" height="22px" viewbox="0 0 22 22" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
									<!-- Generator: Sketch 54.1 (76490) - https://sketchapp.com -->
									<g id="Mobile-Screens" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd" stroke-linecap="round" stroke-linejoin="round">
										<g id="Homepage" transform="translate(-34.000000, -5900.000000)" stroke="currentColor" stroke-width="1.5">
											<g id="Group-24" transform="translate(0.000000, 5885.000000)">
												<g id="Group-59" transform="translate(35.000000, 16.000000)">
													<g id="Group-9">
														<path d="M5.9503183,8.52096562 C6.61486037,7.85603929 6.61486037,6.7783186 5.9503183,6.11339227 L4.14468089,4.30796541 C3.48013882,3.64337661 2.40215641,3.64337661 1.73727684,4.30796541 L0.747045034,5.29826685 C-0.11189837,6.15760819 -0.244874284,7.49758662 0.424730318,8.51117736 C3.3019376,12.8608756 7.13967648,16.6988844 11.4890689,19.5759565 C12.5005633,20.2445956 13.8444976,20.1116103 14.701416,19.2539566 L15.6923228,18.2633176 C16.3565273,17.5987288 16.3565273,16.5210081 15.6923228,15.8560818 L13.8866854,14.050655 C13.2218058,13.3857286 12.1441609,13.3857286 11.4792813,14.050655 L10.8775147,14.6524639 C8.89772606,13.0296386 6.97058781,11.1027024 5.34855166,9.12243704 L5.9503183,8.52096562 Z" id="Stroke-1"></path>
														<path d="M9.52380952,0 C15.3099179,0 20,4.6900821 20,10.4761905" id="Stroke-3"></path>
														<path d="M9.52380952,3.80952381 C13.2055804,3.80952381 16.1904762,6.79441956 16.1904762,10.4761905" id="Stroke-5"></path>
														<path d="M10.4761905,6.66666667 C12.05432,6.66666667 13.3333333,7.94567997 13.3333333,9.52380952" id="Stroke-7"></path>
													</g>
												</g>
											</g>
										</g>
									</g>
								</svg>

								<span>Call</span>
							</a>
						</li>

						<li>
							<a href="#">
								<svg width="20px" height="14px" viewbox="0 0 20 14" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
									<g id="Mobile-Screens" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd" stroke-linejoin="round">
										<g id="Homepage" transform="translate(-154.000000, -5904.000000)" stroke="currentColor" stroke-width="1.5">
											<g id="Group-24" transform="translate(0.000000, 5885.000000)">
												<g id="Group-40" transform="translate(155.000000, 18.000000)">
													<g id="Group-5" transform="translate(0.000000, 2.000000)">
														<path d="M18,10.3333333 C18,11.261 17.2606667,12 16.3333333,12 L1.60866667,12 C0.666666667,12 0,11.261 0,10.3333333 L0,1.66666667 C0,0.666666667 0.666666667,0 1.66666667,0 L16.3333333,0 C17.3333333,0 18,0.666666667 18,1.66666667 L18,10.3333333 Z" id="Stroke-1" stroke-linecap="round"></path>
														<polyline id="Stroke-3" points="17.4 0.6 9.03900064 7.2 0 0.6"></polyline>
													</g>
												</g>
											</g>
										</g>
									</g>
								</svg>

								<span>Email</span>
							</a>
						</li>

						<li>
							<a href="#">
								<svg width="22px" height="22px" viewbox="0 0 22 22" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
									<g id="Mobile-Screens" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
										<g id="Homepage" transform="translate(-280.000000, -5900.000000)" stroke="currentColor" stroke-width="1.5">
											<g id="Group-24" transform="translate(0.000000, 5885.000000)">
												<g id="Group-46" transform="translate(281.000000, 16.000000)">
													<path d="M0,3.29952936 C0.00341695203,1.09984312 0.999585837,2.68921866e-16 2.98850666,0 C4.97742747,0 9.7296699,0 17.2452339,0 C19.0817446,0.507277037 20,1.76899323 20,3.78514858 C20,5.80130393 20,8.3542467 20,11.4439769 C19.7087334,13.6989035 18.6658735,14.8263669 16.8714203,14.8263669 C15.0769671,14.8263669 13.1191721,14.8263669 10.9980355,14.8263669 L6.9818212,19.0039485 C6.22128146,20.3320172 5.84101159,20.3320172 5.84101159,19.0039485 C5.84101159,17.6758797 5.84101159,16.2833526 5.84101159,14.8263669 L2.98850666,14.8263669 C0.996168885,14.6235212 1.25653723e-16,13.4960579 0,11.4439769 C0,9.39189585 0,6.67708001 0,3.29952936 Z" id="Path-64"></path>
												</g>
											</g>
										</g>
									</g>
								</svg>

								<span>Chat</span>
							</a>
						</li>
					</ul>
				</nav><!-- /.nav-utilities -->
			</div><!-- /.mobile-bar -->

			<div class='page_footer'>
				{block "footer"}
					{footer}
				{/block}
			</div>
			{* foot includes additional scripts for the page *}
			{include "layouts/foot.tpl"}
		</div>

	</body>
</html>
