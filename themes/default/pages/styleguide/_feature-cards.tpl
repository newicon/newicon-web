{$featureCards = [
[
'image' => 'https://images.unsplash.com/photo-1583475969042-4cd769e2999b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1000&q=80',
'title' => 'Turn your ideas into a reality',
'label' => 'Workshops',
'body' => 'Workshops are at the heart of our Architecture & Design process. We get up on a white board with you and think visually about what you\'re trying to achive. We scribble. We explore. We create. From there, we design and build your prototype.'
],
[
'image' => 'https://images.unsplash.com/photo-1583475969042-4cd769e2999b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1000&q=80',
'title' => 'Rapid progress & visual results',
'label' => 'Prototypes',
'body' => 'As digital engineers, we know that prototypes are invaluable to any software or web project. Prototypes are a quick way to get the product in your hands, offering you a true feel for how it\'ll function. Not only does this mean quicker sign-off from important stakeholders, it also means we can iron out any issues before a single line of code is written.'
],
[
'image' => 'https://images.unsplash.com/photo-1583475969042-4cd769e2999b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1000&q=80',
'title' => 'A people-centric design process',
'label' => 'User experience Design',
'body' => 'Great UX design captures the attention, sticks in the memory, and compels users to take action. It results in products that are so intuitive that users don\'t give a second thought to the design. We create digital products that do all that, and more.'
],
[
'image' => 'https://images.unsplash.com/photo-1583475969042-4cd769e2999b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1000&q=80',
'title' => 'Beautiful visual design',
'label' => 'User Interface Design',
'body' => 'We design user interfaces that are as intuitive as they are beautiful. And we think both are equally important. Ease-of-use is integral to a smooth user experience, while carefully-crafted aesthetics make your project stand-out from the crowd and stick in the mind.'
]
]}

{layout_section style="background:#F3F5F9;"}
{layout_container}
	<h1>simple cards</h1>
{foreach $featureCards as $card}
	<div class="my-20">
        {include file="../_cmps/feature/card/simple.tpl" flip={cycle values="left,right"} title=$card.title body=$card.body label=$card.label image=$card.image}
	</div>
{/foreach}
{/layout_container}
{/layout_section}

{layout_section style="background:#F3F5F9;"}
{layout_container}
	<h1>Feature cards - borderless</h1>
	<p>A borderless feature card expands to its container and has no default border - this can be determined by its parent template</p>
{/layout_container}
{/layout_section}
{foreach $featureCards as $card}
    {include file="../_cmps/feature/card/borderless.tpl" flip={cycle values="left,right"} title=$card.title body=$card.body label=$card.label image=$card.image}
{/foreach}

{layout_section style="background:#F3F5F9;"}
{layout_container}
	<h1>Feature cards - borderless inside a container</h1>
	<div class=" shadow-2xl rounded-md rounded-lg overflow-hidden bg-white max-w-screen-xl mx-auto">
        {foreach $featureCards as $card}
            {include file="../_cmps/feature/card/borderless.tpl" flip={cycle values="left,right"} title=$card.title body=$card.body label=$card.label image=$card.image}
        {/foreach}
	</div>
{/layout_container}
{/layout_section}

{layout_section style="background:#F3F5F9;"}
{layout_container}
	<h1>Feature Skewed cards</h1>
{foreach $featureCards as $card}
    {include file="../_cmps/feature/card/skewed.tpl" flip={cycle values="left,right"} title=$card.title body=$card.body label=$card.label image=$card.image}
{/foreach}
{/layout_container}
{/layout_section}


{$image1 = {asset path="images/photos/mark-n-joe.jpg"}}
{$image2 = "http://localhost/newicon-website/public/firefly/file/img?id=N4DDQmcxfGC0XPMs9QmyH0"}
{layout_section style="background-image:url('$image1')" class="bg-cover min-h-screen"}
	<div class="flex mt-96 ml-6/12 mr-1/12 bg-white z-10 shadow-2xl max-w-2xl mx-auto rounded-md rounded-lg overflow-hidden bg-white group">
		<div class="px-1/12 py-1/12 md:px-2/12 md:py-20 bg-white self-center">
			<h2 class="text-3xl sm:text-4xl md:text-5xl text-blue-950 pr-10">{$card.title}</h2>
			<h6 class="pt-0 text-blue-500 uppercase text-xs font-bold md:pl-15 md:text-sm md:font-extrabold">{$card.label}</h6>
			<p class="md:pl-15 text-gray-700 text-justify">{$card.body}</p>
		</div>
	</div>
{/layout_section}
{layout_section style="background-image:url('$image2')" class="bg-cover min-h-screen"}
	<div class="flex mt-96 ml-1/12 mr-6/12 bg-white z-10 shadow-2xl max-w-2xl rounded-md rounded-lg overflow-hidden bg-white group">
		<div class="px-1/12 py-1/12 md:px-2/12 md:py-20 bg-white self-center">
			<h2 class="text-3xl sm:text-4xl md:text-5xl text-blue-950 pr-10">{$card.title}</h2>
			<h6 class="pt-0 text-blue-500 uppercase text-xs font-bold md:pl-15 md:text-sm md:font-extrabold">{$card.label}</h6>
			<p class="md:pl-15 text-gray-700 text-justify">{$card.body}</p>
		</div>
	</div>
{/layout_section}

<section class="container m-auto max-w-screen-lg px-10">

	<div class="grid grid-cols-4 gap-5">
		<div class="card cardBackground" data-animation="zooming">
			<div class="card_background" style="background-image: url('https://images.unsplash.com/photo-1568576157197-72cd17d47eed?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1999&q=80"></div>
			<a href="javascript:;" class="card_body">
				<div class="content_foot">
					<h6 class="text-white opacity-8">Spectrum</h6>
					<h5 class="card_title">Data Virtualization</h5>
				</div>
			</a>
		</div>
		<div class="card cardBackground" data-animation="zooming">
			<div class="card_background" style="background-image: url('https://images.unsplash.com/photo-1568576157197-72cd17d47eed?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1999&q=80"></div>
			<a href="javascript:;" class="card_body">
				<div class="content_foot">
					<h6 class="text-white opacity-8">Spectrum</h6>
					<h5 class="card_title">Data Virtualization</h5>
				</div>
			</a>
		</div>
		<div class="card cardBackground" data-animation="zooming">
			<div class="card_background" style="background-image: url('https://images.unsplash.com/photo-1568576157197-72cd17d47eed?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1999&q=80"></div>
			<a href="javascript:;" class="card_body">
				<div class="content_foot">
					<h6 class="text-white opacity-8">Spectrum</h6>
					<h5 class="card_title">Data Virtualization</h5>
				</div>
			</a>
		</div>
		<div class="card cardBackground" data-animation="zooming">
			<div class="card_background" style="background-image: url('https://images.unsplash.com/photo-1568576157197-72cd17d47eed?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1999&q=80"></div>
			<a href="javascript:;" class="card_body">
				<div class="content_foot">
					<h6 class="text-white opacity-8">Spectrum</h6>
					<h5 class="card_title">Data Virtualization</h5>
				</div>
			</a>
		</div>
	</div>
</section>