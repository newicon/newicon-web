{layout_section class="bg-blue-950"}
{layout_container class="flex flex-wrap"}
	<header class="w-full md:w-2/5 section_head md:pr-1/12">
		<div class="section_head-inner">
			<h1 class="text-white text-5xl font-extrabold">{$title|default:'Get in touch'}</h1>
			<p class="text-white text-2xl font-normal">For more information about how we can help you:</p>
			<ul class="mt-10 md:mt-20">
				<li class="mb-6">
					<h5 class="text-gray-400 font-normal text-2xl mb-0">Call us on:</h5>
					<a class="text-white font-bold text-2xl no-underline" href="tel:01172050425">0117 205 0425</a>
				</li>
				<li>
					<h5 class="text-gray-400 font-normal text-2xl mb-0">Email us on:</h5>
					<a class="text-white font-bold text-2xl no-underline" href="mailto:talktous@newicon.net">talktous@newicon.net</a>
				</li>
			</ul>
		</div>
	</header>
	<div class="w-full md:w-3/5 pt-4">
		<form action="?" method="post">

			<div class="flex flex-col sm:flex-row ">
				<div class="sm:w-1/2">
					<label class="sr-only" for="contact-name">Name</label>
					<input type="text"
					       class="form-input rounded-none rounded-t-md sm:rounded-tr-none relative focus:z-10 bg-transparent appearance-none w-full px-5 py-5 border text-white text-xl border-gray-600 leading-6 placeholder-gray-300 focus:outline-none focus:placeholder-gray-200 focus:border-blue-500 transition duration-150 ease-in-out"
					       name="contact[name]" id="contact-name" placeholder="Name">
				</div>
				<div class="sm:w-1/2 -mt-px sm:mt-0 sm:-ml-px">
					<label class="sr-only" for="contact-email">Email</label>
					<input type="text" required
					       class="form-input rounded-none sm:rounded-tr-md  relative  focus:z-10 bg-transparent appearance-none w-full px-5 py-5 border text-white text-xl border-gray-600 leading-6 placeholder-gray-300 focus:outline-none focus:placeholder-gray-200 focus:border-blue-500 transition duration-150 ease-in-out"
					       name="contact[email]" id="contact-email" placeholder="Email address*">
				</div>
			</div>
			<div class="w-full -mt-px -mt-px pr-px">
				<label class="sr-only" for="contact-message">Message</label>
				<textarea oninput="autoExpand(this)"
				          class="form-input h-48 pr-px rounded-t-none relative focus:z-10 bg-transparent appearance-none w-full px-5 py-5 border text-white text-xl border-gray-600 leading-6 rounded-md placeholder-gray-300 focus:outline-none focus:placeholder-gray-200 focus:border-blue-500 transition duration-150 ease-in-out"
				          name="contact[message]" id="contact-message" placeholder="Tell us about your project"></textarea>
                {js position='end'}
					var autoExpand = function (field) {
						// Reset field height
						field.style.height = 'inherit';
						// Get the computed styles for the element
						var computed = window.getComputedStyle(field);
						// Calculate the height
						var height = parseInt(computed.getPropertyValue('border-top-width'), 10)
						+ parseInt(computed.getPropertyValue('padding-top'), 10)
						+ field.scrollHeight
						+ parseInt(computed.getPropertyValue('padding-bottom'), 10)
						+ parseInt(computed.getPropertyValue('border-bottom-width'), 10);
						field.style.height = height + 'px';
						window.localStorage.setItem('contactFormMessage', field.value);
					};
                {/js}
			</div>
			<div class="mt-3 flex flex-wrap">
				<div class="md:w-8/12 w-full md:pr-10 ">
					<p class="mb-0 mt-2 text-gray-300 text-lg font-normal">Subscribe to our newsletter?</p>
					<div class="text-gray-300 mb-4">We keep your data safe - <a href="{page_url id="privacy-policy"}">privacy</a>.</div>
					<input id="contact-subscribe-yes" name="subscribe" type="radio" class="-mt-1 form-radio bg-transparent h-5 w-5 text-blue-500 transition duration-150 ease-in-out" value="yes" required>
					<label for="contact-subscribe-yes" class="ml-3">
						<span class=" text-lg leading-5 font-medium text-gray-300">Yes</span>
					</label>
					<input id="contact-subscribe-no" name="subscribe" type="radio" class="-mt-1 ml-5 form-radio bg-transparent h-5 w-5 text-blue-500 transition duration-150 ease-in-out" value="no">
					<label for="contact-subscribe-no" class="ml-3">
						<span class=" text-lg leading-5 font-medium text-gray-300">No</span>
					</label>
				</div>
				<button type="submit" class="mt-6 btn btn-lg bg-white btn-secondary btn-fx md:w-4/12 w-full md:mt-0 mt-4">Send message</button>
			</div>
		</form>
	</div>
{/layout_container}
{/layout_section}