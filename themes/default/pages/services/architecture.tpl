{extends "layouts/layout.tpl"}
{block "header"}
	{navigation}
{/block}
{block "content"}

    {include file='../_cmps/hero/illustration.tpl'
        title="Architecture &amp; UX Design"
        sub="In a perfect world, how would it work?" callBtn=true
        illustration="/images/illustrations/Architecture UX Illustration.svg"
        alt='Architecture user experience design illustration'}

    {include file='../_cmps/section/feature/grid-primary.tpl'
	    title="Build a blueprint for your digital project" hr=true
	    body="You wouldn’t build a house without having an architect sign off on the structure, features, design and cost. And when it comes to building software, apps and websites, neither would we. Our Architecture & Design process involves working closely with you to rapidly generate solutions to your challenges. The result? A visual and technical blueprint for your project, including an interactive, fully-functioning prototype. After all, wouldn't you like to experience what a house feels like to live in, before you buy the thing?"
	    features=[
		    ['icon' => 'images/icons/mid/clickable-prototype.svg','title' => 'Rapid prototyping','sub' => 'Reducing your risk','body' => 'Because we rapidly prototype your project, you quickly get a hands-on experience of your digital product.'],
		    ['icon' => 'images/icons/mid/designed-for-your-user.svg','title' => 'Designed for real People','sub' => 'People over technology','body' => 'Wihtout people technology is irrelevant. Our UX design team work hard to create products that stick in people’s minds. Easy to use, beautiful to look at.'],
		    ['icon' => '/images/icons/mid/reliable-results.svg','title' => 'Real, reliable results','sub' => 'Instant stakeholder feedback','body' => 'With our visual, usable prototypes, it’s easy to get everyone on the same page and ready to move forward.']
	    ]
    }

    {include file="../_cmps/section/feature/image-cards.tpl" type=skewed  cards=[
	    ['image' => 'images/photos/mark-n-joe.jpg','title' => 'Turn your ideas into a reality','label' => 'Workshops','body' => 'Workshops are at the heart of our Architecture & Design process. We get up on a white board with you and think visually about what you\'re trying to achive. We scribble. We explore. We create. From there, we design and build your prototype.'],
	    ['image' => 'images/photos/iphone-wireframe.jpg','title' => 'Rapid progress & visual results','label' => 'Prototypes','body' => 'As digital engineers, we know that prototypes are invaluable to any software or web project. Prototypes are a quick way to get the product in your hands, offering you a true feel for how it\'ll function. Not only does this mean quicker sign-off from important stakeholders, it also means we can iron out any issues before a single line of code is written.'],
	    ['image' => 'images/photos/whiteboarding.jpg','title' => 'A people-centric design process','label' => 'User experience Design','body' => 'Great UX design captures the attention, sticks in the memory, and compels users to take action. It results in products that are so intuitive that users don\'t give a second thought to the design. We create digital products that do all that, and more.'],
	    ['image' => 'images/photos/screen-watchers.jpg','title' => 'Beautiful visual design','label' => 'User Interface Design','body' => 'We design user interfaces that are as intuitive as they are beautiful. And we think both are equally important. Ease-of-use is integral to a smooth user experience, while carefully-crafted aesthetics make your project stand-out from the crowd and stick in the mind.']
    ]}

    {include file='../_cmps/section/feature/grid-secondary.tpl'
	    title="Additional Design Services"
	    sub="Our nifty team deliver many design services, all as part of a cohesive whole"
	    features=[
	        ['icon' => 'images/icons/micro/branding.svg','alt' => 'Newion icon branding illustration','title' => 'Branding','body' => 'Our designers work hard to create innovative branding that helps you stand out from the crowd.'],
	        ['icon' => 'images/icons/micro/pitchdecks.svg','alt' => '','title' => 'Pitch Decks','body' => 'Need help pitching your project? Our compelling pitch decks to take you to the next level.'],
	        ['icon' => 'images/icons/micro/illustration.svg','alt' => '','title' => 'Icons &amp; Illustration','body' => 'Is your project visually stunning? Our beautiful, bespoke icons and illustrations enhance your aesthetics.'],
	        ['icon' => 'images/icons/micro/interaction.svg','alt' => '','title' => 'Interaction design','body' => 'Is your project visually stunning? Our beautiful, bespoke icons and illustrations enhance your aesthetics.']
	    ]
    }

	{include file='../_cmps/section/contact/got-a-project.tpl'}
	{include file='../_cmps/section/contact/book-meeting.tpl'}
	{include file='../_cmps/section/slider/portfolio-old.tpl' category='architecture'}
	{include file='../_cmps/section/slider/testimonials.tpl'}
	{include file='../_cmps/section/contact/footer.tpl' title="Start your future, today"}

	<script src="https://cdn.jsdelivr.net/gh/alpinejs/alpine@v2.0.1/dist/alpine.js" defer></script>

{/block}