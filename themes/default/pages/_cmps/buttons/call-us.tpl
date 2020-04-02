<div>
	<button @click="open = true" href="#" class="btn btn-primary btn-lg btn-fx px-10 relative z-10">Give us a call</button>
	<div x-show="open" class="fixed  inset-x-0 px-4 pb-4 inset-0 flex items-center justify-center z-20">
		<div x-show="open" x-transition:enter="ease-out duration-300" x-transition:enter-start="opacity-0" x-transition:enter-end="opacity-100" x-transition:leave="ease-in duration-200" x-transition:leave-start="opacity-100" x-transition:leave-end="opacity-0" class="fixed inset-0 transition-opacity">
			<div class="absolute inset-0 bg-gray-950 opacity-75"></div>
		</div>
		<div x-show="open" x-transition:enter="ease-out duration-300" x-transition:enter-start="opacity-0 translate-y-4 sm:translate-y-0 sm:scale-95" x-transition:enter-end="opacity-100 translate-y-0 sm:scale-100" x-transition:leave="ease-in duration-200" x-transition:leave-start="opacity-100 translate-y-0 sm:scale-100" x-transition:leave-end="opacity-0 translate-y-4 sm:translate-y-0 sm:scale-95"
		     class="relative bg-white rounded-lg px-4 pt-5 pb-4 overflow-hidden shadow-2xl transform transition-all max-w-2xl w-full sm:p-6">
			<div class=" absolute top-0 right-0 pt-4 pr-4">
				<button @click="open = false; setTimeout(() => open = true, 1000)" type="button" class="text-blue-400 hover:text-blue-500 focus:outline-none focus:text-blue-500 transition ease-in-out duration-150">
					<svg class="h-6 w-6" stroke="currentColor" fill="none" viewBox="0 0 24 24">
						<path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12"/>
					</svg>
				</button>
			</div>
			<div class="">
				<div class="mx-auto flex-shrink-0 flex items-center justify-center h-12 w-12 rounded-full bg-blue-100">
					<svg class="text-blue-600" width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
						<path stroke="currentColor" d="M3 8L10.8906 13.2604C11.5624 13.7083 12.4376 13.7083 13.1094 13.2604L21 8M5 19H19C20.1046 19 21 18.1046 21 17V7C21 5.89543 20.1046 5 19 5H5C3.89543 5 3 5.89543 3 7V17C3 18.1046 3.89543 19 5 19Z" stroke="#4A5568" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
					</svg>
				</div>
				<div class="mt-3 text-center">
					<h3 class="text-2xl font-bold text-gray-900 mb-2">
						Contact us
					</h3>
					<p class="text-lg text-gray-500">
						Got a question or a project project in mind?
					</p>
					<hr class="mb-3 mx-40"/>
					<div class="text-gray-700 mb-1">Call us on</div>
					<a class="block no-underline text-xl font-bold mb-3" href="tel:+441172050425">0117 205 0425</a>
					<div class="text-gray-700 mb-1">Email us at</div>
					<a class="block no-underline text-2xl font-bold leading-6" href="mailto:hello@newicon.net">hello@newicon.net</a>

					<form action="?" method="post" class="mt-5">

						<div class="flex flex-col sm:flex-row ">
							<div class="sm:w-1/2">
								<label class="sr-only" for="contact-name">Name</label>
								<input type="text" class="form-input rounded-none rounded-t-md sm:rounded-tr-none relative focus:z-10 bg-transparent appearance-none w-full px-5 sm:py-5 border sm:text-xl leading-6 placeholder-gray-300 focus:outline-none focus:placeholder-gray-200  transition duration-150 ease-in-out" name="contact[name]" id="contact-name" placeholder="Name">
							</div>
							<div class="sm:w-1/2 -mt-px sm:mt-0 sm:-ml-px">
								<label class="sr-only" for="contact-email">Name</label>
								<input type="text" required="" class="form-input rounded-none sm:rounded-tr-md relative  focus:z-10 bg-transparent appearance-none w-full px-5 sm:py-5 border sm:text-xl leading-6 placeholder-gray-300 focus:outline-none focus:placeholder-gray-200  transition duration-150 ease-in-out" name="contact[email]" id="contact-email" placeholder="Email address*">
							</div>
						</div>
						<div class="w-full -mt-px pr-px">
							<label class="sr-only" for="contact-message">Name</label>
							<textarea oninput="autoExpand(this)" class="form-input h-48 pr-px rounded-t-none relative focus:z-10 bg-transparent appearance-none w-full px-5 sm:py-5 border  sm:text-xl leading-6 rounded-md placeholder-gray-300 focus:outline-none focus:placeholder-gray-200  transition duration-150 ease-in-out" name="contact[message]" id="contact-message" placeholder="Tell us about your project"></textarea>
						</div>
					</form>
				</div>

			</div>
			<div class="mt-5 ">
		        <button @click="open = false;" type="button" class="inline-flex justify-center w-full btn btn-primary py-3 btn-fx ">
		          Send
		        </button>
			</div>
		</div>
	</div>
</div>
{jsFile src="https://cdn.jsdelivr.net/gh/alpinejs/alpine@v2.x.x/dist/alpine.min.js" attributes=['defer'=>'']}