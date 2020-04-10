{layout_section}
	{layout_container class="grid grid-cols-10 gap-4 row-gap-20"}
	<div class="md:col-span-3 col-span-10 pt-4">
		{$smarty.capture.left}
	</div>
	<div class="md:col-start-5 md:col-span-6 col-span-10">
		{$smarty.capture.right}
	</div>
	{/layout_container}
	<div class="my-28 mb-10">
		{$smarty.capture.image}
	</div>
{/layout_section}