{*
 * @var string title
 * @var sring note
 * @var string link - page nice id
 * @var string icon - icon class name
 *}

{$onUrl = on_url({page_url nice=$link})}
{$titleColor = ''}
{if $inverse}
	{$titleColor = ($onUrl) ? 'text-blue-400' : 'text-blue-100'}
	{$subColor = 'text-gray-300'}
{else}
	{$titleColor = ($onUrl) ? 'text-blue-600' : 'text-blue-950'}
	{$subColor = 'text-gray-700'}
{/if}
<li class="{$class|default:''}">
	<a class="group block no-underline flex items-center {$titleColor}" href="{page_url nice=$link}">
		<i class="block flex-none w-18 {$icon} mr-6"></i>
		<div class="flex-grow">
			<h5 class="m-0 text-md font-semibold leading-6">{$title}</h5>
			{if isset($sub)}<p class="m-0 text-sm {$subColor} leading-5">{$sub}</p>{/if}
		</div>
	</a>
</li>