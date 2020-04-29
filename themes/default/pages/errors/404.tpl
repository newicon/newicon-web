{extends "../../layouts/layout.tpl"}
{block "header"}
	{include file="../../widgets/navigation.tpl"}
{/block}
{block "content"}
	<div class="h-screen flex items-center justify-center">
		<div class="bg-white  py-20 px-10 relative rounded-lg" style="width:80%;">
			<h1 class="mt-18 ni-bg-title z-10" data-title="404">Page not found</h1>
			<p class="mt-40 letting-10 text-xl">Whoops this page does not exist! If you think this is an error please <a class="text-blue-500" href="{url('contact')}">contact us</a></p>
			<p class="text-xl">
				<a class="text-blue-500 inline-flex border btn-xl btn btn-fx border-gray-200 " href="{url('/')}">
					<svg class="w-7 h-7 mr-2" fill="none" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" stroke="currentColor" viewBox="0 0 24 24"><path d="M7 16l-4-4m0 0l4-4m-4 4h18"></path></svg>
					<span>Take me home</span>
				</a>
			</p>
		</div>
	</div>
{/block}

{*<!doctype html>*}
{*<html lang="en">*}
{*<head>*}
{*    {include file="../../layouts/head.tpl"}*}

{*</head>*}
{*<body>*}
{*<div class="absolute inset-0  flex items-center justify-center">*}
{*	<div class="bg-white  py-20 px-10 relative rounded-lg" style="width:80%;">*}
{*		<h1 class="mt-18 ni-bg-title z-10" data-title="404">Page not found</h1>*}
{*		<p class="mt-40 letting-10">Whoops this page does not exist! </p>*}
{*		<p><a class="text-blue-500 inline-flex" href="{url('/')}">*}
{*				<svg class="w-6 h-6" fill="none" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" stroke="currentColor" viewBox="0 0 24 24"><path d="M7 16l-4-4m0 0l4-4m-4 4h18"></path></svg>*}
{*				<span>Take me home</span>*}
{*			</a></p>*}
{*	</div>*}
{*</div>*}
{*	<script>console.log("%cHello! 👋 😊\n%cWe are always looking for curious individuals who love to know how things work!\n%c👉 http://newicon.co/join 👈 👍", 'font-weight:bold;font-size:28px;transform: rotate3d(1, 1, 1, -10deg);', 'font-size:20px;color:#828EAA;font-family:"Volkhov, serif";font-style:italic;', 'padding:10px 0px;font-size:14px;')</script>*}
{*</body>*}
{*</html>*}
{*{$this->endPage()}*}