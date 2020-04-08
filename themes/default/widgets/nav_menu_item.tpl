{*
 * @var string title
 * @var sring note
 * @var string link - page nice id
 * @var string icon - icon class name
 *}
<li>
	{$onUrl = on_url({page_url nice=$link})}
	<a class="group block no-underline flex {($onUrl) ? 'text-blue-600' : 'text-blue-950'}"  href="{page_url nice=$link}">
		<i class="block flex-none w-18 {$icon}  mr-6"></i>
		<div class="flex-grow">
			<h5 class="m-0 text-md font-semibold">{$title}</h5>
			{if isset($sub)}<p class="m-0 text-sm text-gray-700">{$sub}</p>{/if}
		</div>
	</a>
</li>