{extends "layouts/layout.tpl"}
{block "header"}
	{navigation}
{/block}
{block "content"}
{*
	[
		{
			"cmp": "hero/illustration",
			"title": ""
		},
		{
			"cmp": "feature/grid",
			"features": [
				{icon: '', title: ''},
				{icon: '', title: ''},
			]
		},
		{}
	]
*}
	{include file='../_cmps/hero/illustration.tpl' title="Software Development" sub="You dream it, we build it" callBtn=true illustration="images/illustrations/Software Dev Illustration.svg"}

	{include file='../_cmps/section/feature/grid-primary.tpl'
		title="Software development starts with the dream." hr=true
		body="We’ve worked with companies of every shape and size — from one-person start-ups through to multinational corporations. Whether you’re creating a new, disruptive app or a powerful database solution, there’s really only one thing that matters. Defining the right problem for the right person."
		features=[
			['icon' => 'images/icons/mid/designed-for-your-user.svg','title' => 'User-Centered Design','sub' => 'Putting you first','body' => 'Sign-off on a usable prototype, before agreeing to development. No wasted time, no wasted money.'],
			['icon' => 'images/icons/mid/custom-software.svg','title' => 'Custom software','sub' => 'Tailored to you','body' => 'Bespoke software offers solutions to your business’s unique challenges. No need to compromise.'],
			['icon' => 'images/icons/mid/agile-development.svg','title' => 'Agile development','sub' => 'Evolving through collaboration','body' => 'With our agile methodology, knowledge is always fed back into the end product, resulting in the best possible end-result.']
		]
	}

	{include file="../_cmps/section/feature/cards.tpl" type=skewed  cards=[
		['image' => 'images/photos/ipad-user-screenshot.jpg','title' => 'If you can dream it, we can build it!','label' => 'Web Applications','body' => 'Web software can power your whole business. We utilise innovative web technology to improve all aspects of business, from customer facing portals, through to back-office system. Got an innovative idea you would like to us to build? Let us know!'],
		['image' => 'images/photos/iphone-user-screenshot.jpg','title' => 'Access your business from anywhere','label' => 'Mobile apps','body' => 'Mobile plays an ever increasing role in business today. From allowing your customers to interact with your business and their data, through to managing your staff and back office operations. We integrate mobile solutions with our bespoke web-apps and also provide integration with third party systems.'],
		['image' => 'images/photos/switchee.jpg','title' => 'Connect to the physical world','label' => 'Internet of Things (IoT)','body' => 'We design and develop customer led controller apps for mobile, and the web-applications that manage and control these devices. Our expertise has allowed us to work with electronic firms and entrepeneurs to develop applications for innovative products. Do you have an IoT challenge for us?'],
		['image' => 'images/photos/macbook-user.jpg','title' => 'Connect your business, customers & data','label' => 'Backend systems & Client portals','body' => 'Get your back-end system streamlined and optimised, then create access to it with an easy-to-use portal. Completing those two tasks could be the most transformative action your business takes this year. Modern businesses are built on data; take control of yours today.']
	]}


    {include file='../_cmps/section/feature/grid-secondary.tpl'
	    title="Cutting-edge technology to solve your challenges"
	    sub="Our consultancy services help you find the right technology for your challenges."
	    features=[
		    ['icon' => 'images/icons/micro/micro-icon-ai.svg',
	            'alt' => 'A Newicon illustration of a brain becoming a circuit board representing AI',
	            'title' => 'AI & Machine Learning',
	            'body' => 'Want to know how AI and machine learning could benefit your business? Talk to us today!'],
		    ['icon' => 'images/icons/micro/micro-icon-arvr.svg',
	            'alt' => 'A Newicon illustration of a face wearing a virtual reality headset',
	            'title' => 'AR, VR & Pattern Recognition',
	            'body' => 'The world is changing - borders between our reality and digital reality are bluring!'],
		    ['icon' => 'images/icons/micro/micro-icon-cloudcomputing.svg',
	            'alt' => 'A Newicon illustration of a cloud connecting to a circuit board',
	            'title' => 'Connected Cloud Computing',
	            'body' => 'How we save and store data has completely changed. Don\'t get left behind, ask about cloud computing.'],
		    ['icon' => 'images/icons/micro/micro-icon-edgecomputing.svg',
	            'alt' => 'A Newicon illustration of a cloud connecting to data points',
	            'title' => 'Database Design and Management',
	            'body' => 'With edge computing, we can reduce latency and bandwidth use; bringing data closer to you.']
	    ]
    }

    {include file='../_cmps/section/contact/got-a-project.tpl'}
    {include file='../_cmps/section/contact/book-meeting.tpl'}

    {include file='../_cmps/section/slider/portfolio-big.tpl' category='architecture'}
    {include file='../_cmps/section/slider/testimonials.tpl'}
    {include file='../_cmps/section/contact/footer.tpl' title="Start your future, today"}
{/block}
