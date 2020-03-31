{extends "layouts/layout.tpl"}
{block "header"}
    {navigation}
{/block}
{block "content"}

    {include file='../_cmps/hero/illustration.tpl'
        title="Website Development"
        sub="Invest in your future with inventive, user-focused web development."
        callBtn=true
        illustration="images/illustrations/Web Dev Illustration.svg"
        alt="Newicon Website development illustration people carry and assemble blocks of a website"
    }

    {include file='../_cmps/section/feature/grid-primary.tpl'
	    title="With the right website, the sky is the limit" hr=true
	    body="Get it right, and your website will transform the way you work. It'll grab the attention of the people that matter and turn them into paying customers. It'll take your internal processes, and re-shape them into something altogether more streamlined and efficient. How do you get it right? That's where we come in."
	    features=[
		    ['icon' => 'images/icons/mid/engaging.svg',
	            'title' => 'Attract and engage',
	            'sub' => 'Designed to engage and grow',
	            'body' => 'Our designers and digital marketers work with you to create a unique website that reaches the people that matter and engages them with quality content.'],
		    ['icon' => 'images/icons/mid/custom-built.svg',
	            'title' => 'Custom built',
	            'sub' => 'Build your dream website',
	            'body' => 'Our responsive sites work on any device. We offer high-end, custom built sites to match your needs. Whether you\'re an SME looking to grow or an enterprise aiming to diversify.'],
		    ['icon' => 'images/icons/mid/agile-development.svg',
	            'title' => 'Data-driven',
	            'sub' => 'Growth built on data',
	            'body' => ' Once your site is built, we\'ll use Google Analytics to track and analyse results, working with you to ensure a healthy ROI on your website.']
	    ]
    }

    {include file="../_cmps/section/feature/image-cards.tpl" type=skewed  cards=[
	    ['image' => 'images/photos/mark-pointing-at-screen.jpg', 'alt'=>'Mark from Newicon holding an ipad pointing at an imac screen with Dougall from Newicon',
            'title' => 'Define your purpose. Go beyond a brief', 'label' => 'Consultation',
            'body' => 'Before the build even begins, we start with the most important part of stage of your project: consultation. Consultation involves workshops, taking technical requirements and rearching your market. It can help you to define, or even create, a brand. We\'ll go beyond the brief to define your purpose. And from there, the next steps are to start designing your website or e-commerce store. Get in touch to begin your journey.'],
	    ['image' => 'images/photos/ahmina-joe-rim-using-ipad.jpg', 'alt'=>'Joe, Ahmina and Rim from Newicon testing a website on an iPad', 'title' => 'Engage with responsive, beautiful web design','label' => 'Responsive Websites','body' => 'The web is a little crowded nowadays. So what does it take to stand out? Three things. Search engines need to like your site. Users need a fantastic experience. You might need a shop or a booking engine. Plus, it has to look outstanding. Speak to us today to find out how we can build you a responsive, SEO-optimised,  beautiful website.'],
	    ['image' => 'images/photos/rich-and-george-ipad.jpg', 'alt'=>'Rich and George from Newicon share a joke wholst working on an ipad', 'title' => 'Reach more customers','label' => 'INTEGRATED MARKETING & SEO','body' => 'You could have the most beautifully designed, user-friendly website the world has ever seen. Or the best products on your e-commerce store. But if nobody sees it, does it really exist? We go beyond the build. Our team of SEO and PPC experts will make sure that your website gets in front of the people who matter.  Give us a call to find out more.'],
	    ['image' => 'images/photos/coding-screen.jpg', 'alt'=>'Newicon office computer shows code on the screen', 'title' => 'Go beyond a website. Build a future.','label' => 'Cutting-edge technology','body' => 'Sometimes, a website isn\'t what you really need. With cutting-edge technology available to suit you, we\'ll find the platform that meets your requirements. Whether it\'s a e-commerce store, or a progressive website app, we\'re here to find the right solutions for your needs. Get in touch to discuss which technologies could help you.'],
	    ['image' => 'images/photos/rim-ahmina-joe-looking-at-screen.jpg', 'alt'=>'Joe, Ahmina and Rim looking at computer in Newicon office', 'title' => 'The future','label' => 'Long term RELATIONSHIP','body' => 'Building your website is just the beginning. We value the strong relationships we grow with our clients, which is why we offer ongoing support with a variety of arrangements to suit you.']
     ]}

    {include file='../_cmps/section/contact/got-a-project.tpl'}
    {include file='../_cmps/section/contact/book-meeting.tpl'}

    {include file='../_cmps/section/slider/portfolio-big.tpl' category='architecture'}
    {include file='../_cmps/section/slider/testimonials.tpl'}
    {include file='../_cmps/section/contact/footer.tpl' title="Start your future, today"}

{/block}
