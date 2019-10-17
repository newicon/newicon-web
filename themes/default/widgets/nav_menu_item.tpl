{*
 * @var string title
 * @var sring note
 * @var string link - page nice id
 * @var string icon - icon class name
 *}
<li class="dropdown_item {(on_url({page_url nice=$link}))?'isActive':''}">
	<a href="{page_url nice=$link}">
		<div class="dropdown_image"><i class="{$icon}"></i></div>
		<div class="dropdown_content">
			<h5 class="dropdown_title">{$title}</h5>
			<p class="dropdown_note">{$note}</p>
		</div>
	</a>
</li>