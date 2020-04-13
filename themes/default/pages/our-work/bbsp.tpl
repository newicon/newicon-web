{extends "layouts/layout.tpl"}
{block "header"}
    {navigation class="absolute top-0 inset-x-0 z-10" inverse=true}
{/block}
{block "content"}

	<div class="h-screen relative bg-blue-950">
        {image src={asset path='images/temp/section-review-background-5.png'} class="absolute object-cover w-full h-full" sizes="100vw"}
        {layout_container class="absolute inset-0 flex items-center"}
	        <div>
				<cite class="ni-italic text-white text-lg">Bristol & Bath Science Park</cite>
		        <h1 class="text-white text-5xl">A striking online<br>presence for Bristol’s<br>innovation hub</h1>
	        </div>
        {/layout_container}
	</div>

	{layout_casestudy_section}
		{capture name="left"}
			<dl>
				<dt class="ni-italic text-lg mb-4">Client</dt>
				<dd>Bristol & Bath Science Park</dd>
				<dt class="ni-italic text-lg mb-4 mt-8">What we did</dt>
				<dd>
					<span class="inline-flex items-center px-2 py-0.5 rounded text-xs font-medium leading-4 bg-gray-100 text-gray-800">Conceptualization</span>
					<span class="inline-flex items-center px-2 py-0.5 rounded text-xs font-medium leading-4 bg-gray-100 text-gray-800">Architecture</span>
					<span class="inline-flex items-center px-2 py-0.5 rounded text-xs font-medium leading-4 bg-gray-100 text-gray-800">UX</span>
					<span class="inline-flex items-center px-2 py-0.5 rounded text-xs font-medium leading-4 bg-gray-100 text-gray-800">UI</span>
					<span class="inline-flex items-center px-2 py-0.5 rounded text-xs font-medium leading-4 bg-gray-100 text-gray-800">Front end dev</span>
					<span class="inline-flex items-center px-2 py-0.5 rounded text-xs font-medium leading-4 bg-gray-100 text-gray-800">Back end dev</span>
					<span class="inline-flex items-center px-2 py-0.5 rounded text-xs font-medium leading-4 bg-gray-100 text-gray-800">Database</span>
					<span class="inline-flex items-center px-2 py-0.5 rounded text-xs font-medium leading-4 bg-gray-100 text-gray-800">CMS</span>
				</dd>
				<dt class="ni-italic text-lg mb-4 mt-8">Visit the website</dt>
				<dd><a target="bbsp" href="https://bbsp.co.uk/">https://bbsp.co.uk</a></dd>
			</dl>
		{/capture}
		{capture name="right"}
			<h2 class="mt-0 mt-0 mb-12 text-4xl text-blue-950">A striking online presence for the innovation hub of Bristol</h2>
			<p class="text-xl text-lightGray-600">A world-class innovation facility demands a website akin to its status. And as long-standing BBSP tenants, we were delighted to be awarded the website contract, fending off stiff competition from other providers.</p>
			<p class="text-xl text-lightGray-600">Our responsive website solution provides a platform for increased exposure and better social communication.</p>
		{/capture}
		{capture name="image"}
			<div class="px-8 md:px-16 lg:px-28">
				{image src={asset path='images/work/bbsp/screenshot-1.png'} class="shadow-4xl w-full col-span-10 mx-auto" sizes="100vw"}
			</div>
		{/capture}
	{/layout_casestudy_section}

	{layout_casestudy_section}
		{capture name="left"}{/capture}
		{capture name="right"}
			<h2 class="mt-0 mt-0 mb-9 text-4xl text-blue-950">Connect, grow and develop.</h2>
			<p class="text-xl text-lightGray-600">Our knowledge of the park enabled us to portray an image which we and the BBSP management team thought would take the park into its second phase. Enabling the park as a whole to fill plots and increase occupancy of the innovation centre.</p>
		{/capture}
		{capture name="image"}
			{image src={asset path='images/work/bbsp/screenshot-2.png'} class="w-full" sizes="100vw" width="1366" height="1379"}
		{/capture}
	{/layout_casestudy_section}

	{layout_casestudy_section}
		{capture name="left"}{/capture}
		{capture name="right"}
			<h2 class="mt-0 mt-0 mb-9 text-4xl text-blue-950">A multi social media prescence</h2>
			<p class="text-xl text-lightGray-600">Whilst a fresh new image and design architecture was essential, the park also wanted to generate more news and social media awareness, so we created a Parklife wall, which pulls in the best of Twitter, Instagram and YouTube, along with news and events to create a stunning visual overview of life at the park.</p>
		{/capture}
		{capture name="image"}
			{image src={asset path='images/work/bbsp/screenshot-3.png'} class="w-full" sizes="100vw" width="1366" height="1379"}
		{/capture}
	{/layout_casestudy_section}

	{layout_casestudy_section}
		{capture name="left"}{/capture}
		{capture name="right"}
			<h2 class="mt-0 mt-0 mb-9 text-4xl text-blue-950">Virtual tour guide</h2>
			<p class="text-xl text-lightGray-600">Using Google’s street view API, we introduced a virtual tour guide feature enabling visitors and prospective tenants an opportunity to see inside out outside of the Science Park.</p>
			<p class="text-xl text-lightGray-600">With routes that let users find their way to all of the key facilities, meeting areas and office spaces users are able to see things for themself before visiting.</p>
		{/capture}
		{capture name="image"}
			{image src={asset path='images/work/bbsp/screenshot-4.png'} class="w-full" sizes="100vw" width="1366" height="1379"}
		{/capture}
	{/layout_casestudy_section}

	{layout_casestudy_section}
		{capture name="left"}{/capture}
		{capture name="right"}
			<h2 class="mt-0 mt-0 mb-9 text-4xl text-blue-950">Tenant and job directory</h2>
			<p class="text-xl text-lightGray-600">Whilst the new site has been designed to get more people in for meetings, more small businesses using office spaces and more larger organisations using the grow-on centre, a big part of the site was to highlight  and help grow the people who have made the park what it is already - the existing tenants. </p>
			<p class="text-xl text-lightGray-600">We introduced a brand new tenant directory and job board with a smart filter that enables users to search for companies and jobs they are interested in by filtering on	 certain criteria.</p>
		{/capture}
		{capture name="image"}
			{image src={asset path='images/work/bbsp/screenshot-5.png'} class="w-full" sizes="100vw" width="1366" height="1379"}
		{/capture}
	{/layout_casestudy_section}

	{include file='../_cmps/section/slider/testimonials.tpl'}
	{include file='../_cmps/section/contact/footer.tpl' title="Start your future, today"}

{/block}
