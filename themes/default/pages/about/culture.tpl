{extends "layouts/layout.tpl"}
{block "header"}
    {navigation}
{/block}
{block "content"}



    {layout_section pt="pt-0" pb="pb-0" class="md:h-screen md:flex md:items-center "}
    {layout_container}
	    <div class="flex flex-col md:flex-row md:-mt-20">
	        {include file="../_cmps/hero/text.tpl"
		        class="md:mr-10 lg:mr-20 md:w-1/2"
		        title="Culture"
		        sub="People focused. Future thinking. Inventive."
		        body="Our culture and brand go hand in hand. After all, a business is what its people make it. And our people are pretty great, even if we say so ourselves."
	        }
		    <div class="flex-shrink self-end">
			    <img class="md:-mt-20 w-full" src="{asset path='images/illustrations/Culture Illustration.svg'}" alt="Newicon culture - juggling, guitar playing maniacs!" width="581" height="532">
		    </div>
	    </div>
    {/layout_container}
    {/layout_section}

    {layout_section pt='pt-0'}
    {layout_container}
	<header class="text-center w-10/12 lg:w-8/12 mx-auto mb-16">
		<h2 class="text-4xl mx-auto w-full text-blue-900">Our Culture</h2>
		<p class="text-3xl leading-10 text-blue-900">
			Our mission is to produce world class digital platforms and technologies that enable people to achieve great things.
		</p>
	</header>
    {/layout_container}
    {/layout_section}

    {include file='../_cmps/section/feature/grid-primary.tpl'
    title="Why we do it"
    body="We want to work with likeminded people and organisations who challenge, invent, and create. We have built our business on these three pillars that support everything we do."
    features=[
    ['icon' => 'images/icons/mid/future.svg','title' => 'Future','sub' => '','body' => 'We don’t want to walk blindly into the future, we want to forge ahead and shape it. And we believe that people-centric technology is the key to achieving that.'],
    ['icon' => 'images/icons/mid/people.svg','title' => 'People','sub' => '','body' => 'Technology exists to serve people, and people need to be considered from the very creation of an idea, right through to a product being brought to market.'],
    ['icon' => '/images/icons/mid/invent.svg','title' => 'Invention','sub' => '','body' => 'Necessity is the mother of all invention. But that’s far from the whole family tree. Curiosity. Creativity. Courage. They’re all part of the invention gene pool.']
    ]
    }


    {$image1 = {asset path="images/photos/mark-n-joe.jpg"}}
    {layout_section style="background-image:url('$image1')" class="bg-cover min-h-screen"}
		<div class="flex mt-96 ml-6/12 mr-1/12 bg-white z-10 shadow-2xl max-w-2xl mx-auto rounded-md rounded-lg overflow-hidden bg-white group">
			<div class="px-1/12 py-1/12 md:px-2/12 md:py-20 bg-white self-center">
				<h2 class="text-3xl sm:text-4xl md:text-5xl text-blue-950 pr-10">Culture stuff</h2>
				<h6 class="pt-0 text-blue-500 uppercase text-xs font-bold md:pl-15 md:text-sm md:font-extrabold">label</h6>
				<p class="md:pl-15 text-gray-700 text-justify">Stuff about stuff here</p>
			</div>
		</div>
    {/layout_section}


{/block}
