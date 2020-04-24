{extends "layouts/layout.tpl"}
{block "header"}
	<div class="h-screen ">
		<div class="absolute inset-0 h-screen">
			<img class="absolute w-full h-full object-cover" src="{asset path='images/illustrations/stars.svg'}" />
		</div>
		<div class="absolute inset-0 h-screen">
			<img class="absolute w-full h-full bottom-0 -mb-64" src="{asset path='images/illustrations/doorway.svg'}" />
		</div>
	    {navigation inverse=true class="z-10"}
        {layout_section}
        {layout_container}
		<div class="pt-10 pb-0 text-center">
			<h1 class="text-3xl md:text-4xl lg:text-5xl text-white">Make first contact</h1>
			<h4 class="ni-italic mb-10 text-xl md:text-2xl text-white">Get in touch. Lets get creating, innovating and making!</h4>
	        <p class="text-lg md:text-xl md:font-normal leading-8 text-white">
		        Get in touch with Mark to get started<br><a href='mailto:getstarted@newicon.co'>getstarted@newicon.co</a> | <a href='tel:0117 205 0425'>0117 205 0425</a>
	        </p>
		</div>
        {/layout_container}
        {/layout_section}
	</div>
{/block}
{block "content"}


	{layout_section class="bg-gray-50"}
		{layout_container}
            {include file="./_cmps/headers/center.tpl"
                title="Let’s Work Together"
                sub="Newicon will work alongside you to build great things."
                body="Get in touch with Mark to get started <br><a href='mailto:{$site.contact.email}'>{$site.contact.email}</a> | <a href='tel:0117 205 0425'>0117 205 0425</a>"
				bodyClass="text-lg font-medium"}
				<div class="mx-auto max-w-lg sm:flex sm:justify-center text-center">
					<button class="w-full btn btn-outline px-12 py-4 btn-fx border-blue-950 text-blue-950 sm:mr-10">Send us message</button>
					<button class="w-full btn btn-outline px-12 py-4 btn-fx border-blue-950 text-blue-950 mt-4 sm:mt-0">Book free call</button>
				</div>
		{/layout_container}
	{/layout_section}

    {layout_section}
    {layout_container}
        {include file="./_cmps/headers/center.tpl"
	        title="Come visit us"
	        sub="Come and visit us at our office"
	        body="We're in the heart of Bristol a vibrant artistic and technological town in the UK"
            bodyClass="text-xl font-medium"
        }
	    <div class="gap-10 grid w-56 sm:w-auto max-w-2xl md:gap-40 mx-auto sm:grid-cols-2">
		    <div>
			    <h3 class="text-3xl text-blue-950">Head Office</h3>
			    <address class="not-italic text-xl font-normal text-blue-950">
				    Newicon Ltd.<br>
				    <span>The Waterfront<br>Welsh Back<br>Bristol, England<br>BS1 4SB<br></span>
				    <a target="newicon-waterfront" href="https://www.google.com/maps?ll=51.450777,-2.59251&z=16&t=m&hl=en&gl=GB&mapclient=embed&cid=3684901840901760929" class="block text-lg no-underline ni-italic mt-4 leading-6 text-blue-500">View on a map ></a>
			    </address>
		    </div>
		    <div>
			    <h3 class="text-3xl text-blue-950">Other Locations</h3>
			    <address class="not-italic text-xl font-normal text-blue-950">
				    <span>Bristol & Bath Science Park<br>Dirac Crescent<br>Emersons Green<br>Bristol<br>BS16 7FR</span>
				    <a target="newicon-bbsp" href="https://www.google.com/maps/place/Bristol+%26+Bath+Science+Park/@51.5007158,-2.4801192,17z/data=!4m12!1m6!3m5!1s0x48719ab86a5a9f7d:0xd17394f3400abb0a!2sBristol+%26+Bath+Science+Park!8m2!3d51.5007125!4d-2.4779305!3m4!1s0x48719ab86a5a9f7d:0xd17394f3400abb0a!8m2!3d51.5007125!4d-2.4779305?hl=en" class="block text-lg no-underline ni-italic mt-4 leading-6 text-blue-500">View on a map ></a>
	             </address>
		    </div>
	    </div>
    {/layout_container}
    {/layout_section}


	<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2486.4019005114783!2d-2.5946991835320476!3d51.450777079625695!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x48719ab841e0037b%3A0x332366b36b21e7a1!2sNewicon!5e0!3m2!1sen!2suk!4v1563201206667!5m2!1sen!2suk" width="100%" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
    {include file='./_cmps/section/contact/footer.tpl'}
{/block}
