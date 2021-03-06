{*
{
	"props": {
		img: { type: String },
	}
}
*}
<section class="flex flex-col md:flex-row-reverse md:flex-row ptn {$class|default:''}">
	<div class="w-full md:w-3/5 text-right pl-8 md:pl-0">
{*		inline-block max-h-full*}
		<img src="{assets path='images/illustrations/telescope-future-static.svg'}" class="" alt="Newicon see the future image" />
	</div>
	<div class="px-6 md:p-0 md:w-2/5 max-h-screen flex">
		<div class="mt-20 self-center mx-auto lg:pl-4 text-center md:text-left md:mt-0 md:ml-2/12 md:-mr-20">
			<h1 class="text-5xl font-bold text-blue-950  md:text-3xl lg:text-5xl xl:text-6xl">Web build the future.</h1>
			<p class="text-gray-700 font-medium text-xl md:text-base lg:text-xl">Newicon is a design driven software house. We use design, inventive thinking and global scale software to make transformitive change for your organisation.</p>
			<div class="intro_actions mt-16">
				<a  class="btn btn-primary btn-xl btn-shadow btn-fx" href="#">Start a conversation</a>
				<a  class="ml-2 btn btn-outline-primary btn-xl hidden xl:inline-flex btn-fx bg-white" href="{page_url nice='work'}">See our work</a>
			</div>
		</div>
	</div>
</section>
