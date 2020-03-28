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

	{include file='../_cmps/section/slider/testimonials.tpl'}
	{include file='../_cmps/section/contact/footer.tpl' title="Start your future, today"}
{/block}
