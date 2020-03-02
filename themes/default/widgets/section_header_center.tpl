<header class="text-center w-full lg:w-8/12 mx-auto mt-16 mb-16">
	<h2 class="text-4xl {($inverse|default:false) ? 'text-white' : 'text-blue-900'}">{$title}</h2>
	{if (isset($sub))}<h4 class="ni-italic">{$sub}</h4>{/if}
	{if ($hr|default:false)}<hr class="mt-6 border-blue-500 w-6 mx-auto"/>{/if}
	{if isset($body)}<p class="text-lg text-gray-600 px-4">{$body}</p>{/if}
</header>