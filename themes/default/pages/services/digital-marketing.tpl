{extends "layouts/layout.tpl"}
{block "header"}
    {navigation}
{/block}
{block "content"}

	{include file='../_cmps/hero/illustration.tpl'
		title="Digital Marketing"
		sub="Make your mark online with data-driven digital marketing" callBtn=true
		illustration="/images/illustrations/Digital Marketing Illustration.svg"
		alt='Illustration of newicon team members working and sitting on a bar charton'
	}

	{include file='../_cmps/section/feature/grid-primary.tpl'
		title="Position yourself for success in a digital world" hr=true
		body="Our team of developers, designers and digital marketers are uniquely placed to offer an integrated service — covering your product or service from its creation and development, right through to its online promotion. Our Digital Marketing service encompasses search engine optimisation (SEO), pay-per-click ads (PPC), content marketing and social media management. It focuses on building qualified leads, achieving conversions and bringing you that all important ROI."
		features=[
			['icon' => 'images/icons/mid/seo-get-found.svg','title' => 'Get found','sub' => 'Data-driven results','body' => 'Your bottom line is everything. That’s why we offer digital marketing that’s proven to deliver a strong, measurable ROI, no matter what you\'re selling.'],
			['icon' => 'images/icons/mid/convertleads.svg','title' => 'Convert leads','sub' => 'Crafting content that converts','body' => 'Using our experience in conversion rate optimisation (CRO), we ensure that people who click on your ads are more likely to convert into customers.'],
			['icon' => 'images/icons/mid/roi.svg','title' => 'Return on investment','sub' => 'The power of "page one"','body' => 'Our SEO and PPC services will ensure that your business is the first one people see when they search online for your products or services. Visibility is key.']
		]
	}

    {include file="../_cmps/section/feature/image-cards.tpl" type=skewed  cards=[
	    ['image' => 'images/photos/rim-and-george-big-screen.jpg','title' => 'Full-service digital marketing','label' => 'Everything you need, in one place','body' => 'SEO, PPC, content marketing, outreach, strategy — seperately, these are useful services. Join them together, and you\'ll start to realise the true power of an integrated digital marketing strategy. Talk to us about how we can help you find the right mix.'],
	    ['image' => 'images/photos/ross-ipad-styleguide.jpg','title' => 'Grow your business with SEO','label' => 'Online visibility','body' => 'Page two of search engine results may as well not exist. Internet users are used to finding what they want, when they want. With an ongoing SEO strategy, we can ensure that your business is front and centre, whenever someone is looking for what you do. Get in touch to find out more.'],
	    ['image' => 'images/photos/george-pointing-at-screen.jpg','title' => 'Achieve rapid results with PPC','label' => 'QUICK, MEASURABLE RESULTS','body' => 'There\'s no quicker way to appear at the top of search results than pay-per-click (PPC) advertising. We\'ll work with you to create a lean, effective ad campaign that works with your profit margins to deliver a strong ROI. Talk to us today about how to achieve rapid results with PPC.'],
	    ['image' => 'images/photos/ipad-postits-on-table.jpg','title' => 'Build authority online with content','label' => 'TAKE CONTROL OF YOUR ONLINE PRESENCE','body' => 'Content marketing is all about quality. Pumping out blogs, news stories and case studies for the sake of it is a recipe for wasted time and money. On the other hand, creating content with a clear strategy, aimed at bolstering your SEO, is a proven way to grow your business. We can help you get there.']
    ]}

    {include file='../_cmps/section/feature/grid-secondary.tpl'
    title="Even More Digital Services!?"
    sub="We do lots of digital stuff"
    features=[
	    ['icon' => 'images/icons/micro/social-media.svg','alt' => 'Newion icon branding illustration','title' => 'Social media','body' => 'Don\'t know what to post? We curate social media content that encourages engagement.'],
	    ['icon' => 'images/icons/micro/web-dev.svg','alt' => '','title' => 'Landing pages','body' => 'Are your landing pages optimised? We\'ll ensure they get you results tailored to your business goals.'],
	    ['icon' => 'images/icons/micro/digital-marketing.svg','alt' => '','title' => 'CRO','body' => 'Want to drive more conversions? We believe in a data-driven approach to digital marketing.'],
	    ['icon' => 'images/icons/micro/blog.svg','alt' => '','title' => 'Content creation','body' => 'From basic copy to specialised blogs, we create precise, optimised content that sets you apart from competitors.']
    ]}


    {include file='../_cmps/section/contact/got-a-project.tpl'}
    {include file='../_cmps/section/contact/book-meeting.tpl' sub="Looking to grow your business with digital marketing? Contact our digital strategy team for a free consultation."}

	{include file='../_cmps/section/slider/testimonials.tpl'}
	{include file='../_cmps/section/contact/footer.tpl' title="Start your future, today"}
{/block}
