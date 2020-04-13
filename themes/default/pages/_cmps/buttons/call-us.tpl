<div>
	<button @click="open = true" href="#" class="btn btn-primary btn-lg btn-fx px-10 relative z-10">Give us a call</button>
	
	<div x-show="open" class="fixed bottom-0 inset-x-0 px-4 pb-4 sm:inset-0 sm:flex sm:items-center sm:justify-center z-20">
		<div x-show="open" x-transition:enter="ease-in-out" x-transition:enter-start="opacity-0" x-transition:enter-end="opacity-100" x-transition:leave="ease-in-out" x-transition:leave-start="opacity-100" x-transition:leave-end="opacity-0" class="fixed inset-0 transition-opacity duration-300">
			<div class="absolute inset-0 bg-gray-950 opacity-75"></div>
		</div>
		<div x-show="open" x-transition:enter="ease-in-out duration-300" x-transition:enter-start="opacity-0 translate-y-4 sm:translate-y-0 sm:scale-95" x-transition:enter-end="opacity-100 translate-y-0 sm:scale-100" x-transition:leave="ease-in-out duration-300" x-transition:leave-start="opacity-100 translate-y-0 sm:scale-100" x-transition:leave-end="opacity-0 translate-y-4 sm:translate-y-0 sm:scale-95"
		     class="relative bg-white rounded-lg pt-5 pb-4 overflow-hidden shadow-2xl transform transition-opacity-transform max-w-2xl w-full duration-300">
			<div class=" absolute top-0 right-0 pt-4 pr-4">
				<button @click="open = false" type="button" class="text-blue-400 hover:text-blue-500 focus:outline-none focus:text-blue-500 transition ease-in-out duration-300">
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
						Start a conversation
					</h3>
					<p class="text-lg text-gray-500">
						Got a question or a project project in mind?
					</p>
				
					<tabs x-data="{ tab: 'message' }">
						<nav  class="flex w-full my-10 bg-gray-100 pt-px">
							{function tab active=false}
								{$sharedClass = "flex-1 justify-center inline-flex items-center no-underline px-3 py-4 font-medium text-sm leading-5"}
								{$inactiveClass = "text-gray-500 bg-gray-100 hover:text-black hover:bg-gray-50"}
								{$activeClass   = "text-black bg-white cursor-default hover:text-black"}
								{$focusClass = "focus:outline-none focus:text-black"}
								<button @click="tab = '{$id}'" :class="(tab === '{$id}') ? '{$activeClass}' : '{$inactiveClass}'" class="{$sharedClass} {$focusClass}  {($active) ? $activeClass : $inactiveClass}">
									<svg fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" viewBox="0 0 24 24" class="w-6 h-6 mr-2 hidden sm:block">{$svg}</svg>
									<span>{$title}</span>
								</button>
							{/function}
							{tab id="book" title="Book a call" svg='<path d="M8 7V3m8 4V3m-9 8h10M5 21h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v12a2 2 0 002 2z"></path>'}
							{tab id="message" title="Message" active=true svg='<path d="M3 8l7.89 5.26a2 2 0 002.22 0L21 8M5 19h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v10a2 2 0 002 2z"></path>'}
							{tab id="call" title="Call now" svg='<path d="M16 3h5m0 0v5m0-5l-6 6M5 3a2 2 0 00-2 2v1c0 8.284 6.716 15 15 15h1a2 2 0 002-2v-3.28a1 1 0 00-.684-.948l-4.493-1.498a1 1 0 00-1.21.502l-1.13 2.257a11.042 11.042 0 01-5.516-5.517l2.257-1.128a1 1 0 00.502-1.21L9.228 3.683A1 1 0 008.279 3H5z"></path>'}
						</nav>
						<div>
							<div x-show="tab === 'message'">
								<div class="text-gray-700 mb-1">Call us on</div>
								<a class="block no-underline text-xl font-bold mb-3" href="tel:+441172050425">0117 205 0425</a>
								<div class="text-gray-700 mb-1">Email us at</div>
								<a class="block no-underline text-2xl font-bold leading-6" href="mailto:hello@newicon.net">hello@newicon.net</a>
								<form action="?" method="post" class="mt-8 p-5">
									<div class="flex flex-col sm:flex-row ">
										<div class="sm:w-1/2">
											<label class="sr-only" for="contact-name">Name</label>
											<input type="text" class="form-input rounded-none rounded-t-md sm:rounded-tr-none relative focus:z-10 bg-transparent appearance-none w-full px-5 sm:py-5 border sm:text-xl leading-6 placeholder-gray-300 focus:outline-none focus:placeholder-gray-200  transition duration-150 ease-in-out" name="contact[name]" placeholder="Name">
										</div>
										<div class="sm:w-1/2 -mt-px sm:mt-0 sm:-ml-px">
											<label class="sr-only" for="contact-email">Email</label>
											<input type="text" required="" class="form-input rounded-none sm:rounded-tr-md relative  focus:z-10 bg-transparent appearance-none w-full px-5 sm:py-5 border sm:text-xl leading-6 placeholder-gray-300 focus:outline-none focus:placeholder-gray-200  transition duration-150 ease-in-out" name="contact[email]" placeholder="Email address*">
										</div>
									</div>
									<div class="w-full -mt-px pr-px">
										<label class="sr-only" for="contact-message">Message</label>
										<textarea oninput="autoExpand(this)" class="form-input h-48 pr-px rounded-t-none relative focus:z-10 bg-transparent appearance-none w-full px-5 sm:py-5 border  sm:text-xl leading-6 rounded-md placeholder-gray-300 focus:outline-none focus:placeholder-gray-200  transition duration-150 ease-in-out" name="contact[message]" placeholder="Tell us about your project"></textarea>
									</div>
									<div class="mt-5 ">
										<button @click="open = false;" type="button" class="inline-flex justify-center w-full btn btn-primary py-3 btn-fx ">
										Send
										</button>
									</div>
								</form>
							</div>
							<div x-show="tab === 'book'">
								<h3>Book</h3>
							</div>
							<div x-show="tab === 'call'">
								<h3>Call</h3>
							</div>
						</div>
					</tabs>


<div>
  <div class="sm:hidden">
    <select class="form-select block w-full">
      <option>My Account</option>
      <option>Company</option>
      <option selected>Team Members</option>
      <option>Billing</option>
    </select>
  </div>
  <div class="hidden sm:block">
    <div class="border-b border-gray-200">
      <nav class="-mb-px flex">
        <a href="#" class="w-1/4 py-4 px-1 inline-flex items-center justify-center text-center border-b-2 border-transparent font-medium text-sm leading-5 text-gray-500 hover:text-gray-700 hover:border-gray-300 focus:outline-none focus:text-gray-700 focus:border-gray-300">
          <svg class="-ml-0.5 mr-2 h-5 w-5 text-gray-400 group-hover:text-gray-500 group-focus:text-gray-600" fill="currentColor" viewBox="0 0 20 20">
            <path fill-rule="evenodd" d="M18 10a8 8 0 11-16 0 8 8 0 0116 0zm-6-3a2 2 0 11-4 0 2 2 0 014 0zm-2 4a5 5 0 00-4.546 2.916A5.986 5.986 0 0010 16a5.986 5.986 0 004.546-2.084A5 5 0 0010 11z" clip-rule="evenodd"/>
          </svg>
		  My Account
        </a>
        <a href="#" class="w-1/4 py-4 px-1 text-center border-b-2 border-transparent font-medium text-sm leading-5 text-gray-500 hover:text-gray-700 hover:border-gray-300 focus:outline-none focus:text-gray-700 focus:border-gray-300">
          Company
        </a>
        <a href="#" class="w-1/4 py-4 px-1 text-center border-b-2 border-indigo-500 font-medium text-sm leading-5 text-indigo-600 focus:outline-none focus:text-indigo-800 focus:border-indigo-700">
          Team Members
        </a>
        <a href="#" class="w-1/4 py-4 px-1 text-center border-b-2 border-transparent font-medium text-sm leading-5 text-gray-500 hover:text-gray-700 hover:border-gray-300 focus:outline-none focus:text-gray-700 focus:border-gray-300">
          Billing
        </a>
      </nav>
    </div>
  </div>
</div>

			</div>
			
		</div>
	</div>
</div>
{jsFile src="https://cdn.jsdelivr.net/gh/alpinejs/alpine@v2.x.x/dist/alpine.min.js" attributes=['defer'=>'']}