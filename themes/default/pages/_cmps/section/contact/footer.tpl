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
				<textarea required oninput="autoExpand(this)"
				          class="form-input h-48 pr-px rounded-t-none relative focus:z-10 bg-transparent appearance-none w-full px-5 py-5 border text-white text-xl border-gray-600 leading-6 rounded-md placeholder-gray-300 focus:outline-none focus:placeholder-gray-200 focus:border-blue-500 transition duration-150 ease-in-out"
				          name="contact[message]" id="contact-message" placeholder="Tell us about your project*"></textarea>
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
				<div class="flex w-full items-center justify- xl:w-1/2 lg:flex-wrap ">
					<div class="mr-4">
						<p class="mb-0 text-gray-100 text-lg font-normal">Subscribe to our newsletter?</p>
						<div class="text-gray-300">We keep your data safe - <a href="{page_url id="privacy-policy"}">privacy</a>.</div>
					</div>
					<div class="">
						<span x-data="{ on: false }" role="checkbox" tabindex="0" @click="on = !on" @keydown.space.prevent="on = !on" :aria-checked="on.toString()" aria-checked="true" :class="{ 'bg-gray-200': !on, 'bg-blue-600': on }" class="relative inline-block flex-shrink-0 h-8 w-16 border-2 border-transparent rounded-full cursor-pointer transition-colors ease-in-out duration-200 focus:outline-none focus:shadow-outline bg-blue-600">
							<span aria-hidden="true" :class="{ 'translate-x-7': on, 'translate-x-0': !on }" class="relative inline-block h-7 w-8 rounded-full bg-white shadow transform transition ease-in-out duration-200 translate-x-7">
								<span :class="{ 'opacity-0 ease-out duration-100': on, 'opacity-100 ease-in duration-200': !on }" class="absolute inset-0 h-full w-full flex items-center justify-center transition-opacity opacity-0 ease-out duration-100">
									<svg class="h-3 w-3 text-gray-400" fill="none" viewBox="0 0 12 12"><path d="M4 8l2-2m0 0l2-2M6 6L4 4m2 2l2 2" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path></svg>
								</span>
								<span :class="{ 'opacity-100 ease-in duration-200': on, 'opacity-0 ease-out duration-100': !on }" class="absolute inset-0 h-full w-full flex items-center justify-center transition-opacity opacity-100 ease-in duration-200">
									<svg class="h-3 w-3 text-blue-600" fill="currentColor" viewBox="0 0 12 12"><path d="M3.707 5.293a1 1 0 00-1.414 1.414l1.414-1.414zM5 8l-.707.707a1 1 0 001.414 0L5 8zm4.707-3.293a1 1 0 00-1.414-1.414l1.414 1.414zm-7.414 2l2 2 1.414-1.414-2-2-1.414 1.414zm3.414 2l4-4-1.414-1.414-4 4 1.414 1.414z"></path></svg>
								</span>
							</span>
						</span>

{*						<label for="contact-subscribe-yes" class="whitespace-no-wrap">*}
{*							<input id="contact-subscribe-yes" name="subscribe" type="radio" class="-mt-1 form-radio bg-transparent h-5 w-5 text-blue-500 transition duration-150 ease-in-out" value="yes" required>*}
{*							<span class=" text-lg leading-5 font-medium text-gray-300 ml-3">Yes</span>*}
{*						</label>*}
{*						<label for="contact-subscribe-no" class="whitespace-no-wrap">*}
{*							<input id="contact-subscribe-no" name="subscribe" type="radio" class="-mt-1 ml-5 form-radio bg-transparent h-5 w-5 text-blue-500 transition duration-150 ease-in-out" value="no">*}
{*							<span class=" text-lg leading-5 font-medium text-gray-300 ml-3">No</span>*}
{*						</label>*}
					</div>
				</div>
				<div class="mt-4 w-full xl:w-1/2 xl:mt-0 xl:pl-4">
					<button type="submit" class="btn btn-xl bg-white btn-secondary btn-fx w-full ">Send message</button>
				</div>
			</div>
		</form>
	</div>
{/layout_container}
{/layout_section}