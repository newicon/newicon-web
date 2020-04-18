{layout_section}
{layout_container}
	<div class="flex">
		<div class="self-center" data-aos="fade">
            {include file="../../headers/center.tpl" title=$title hr=$hr|default:'' body=$body}
            {include file="../../feature/grid.tpl" features=$features}
		</div>
	</div>
{/layout_container}
{/layout_section}