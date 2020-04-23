<?php
use \neon\core\helpers\Arr;

/**
 * Get the theme styles
 * @return string
 */
function smarty_function_post($params, $template)
{
	$url = Arr::getRequired($params, 'url');
	$postQ = neon()->dds->getIDdsObjectManagement()->runSingleObjectRequest('blog', [
		['slug', '=', $url],
		['status', '=', 'published']
	], ['published' => 'DESC']);
	// throw 404 if no post exists
	if ($postQ['length'] === 0) abort(404);
	$post = $postQ['rows'][0];
	// get the author record
	$authorQ = neon()->dds->getIDdsObjectManagement()->runSingleObjectRequest('person', ['_uuid', '=', $post['author']]);
	$author = ($authorQ['length'] === 0) ? [] : $authorQ['rows'][0];

	// calculate post reading time
	$wordCount = \neon\core\helpers\Str::countWords(strip_tags($post['content']));
	$averageWordsPerMinute = 265;
	$minutesToRead = round($wordCount / $averageWordsPerMinute);
	// a bit verbose and explicit - but easy to see what we get
	$template->assign(Arr::get($params, 'assign', 'post'), [
		'_uuid' => $post['_uuid'],
		'title' => $post['title'],
		'slug' => $post['slug'],
		'word_count' => $wordCount,
		'minutes_to_read' => $minutesToRead,
		'summary' => $post['summary'],
		'status' => $post['status'],
		'content' => $post['content'],
		'image_main' => $post['image_main'],
		'image_thumbnail' => $post['image_thumbnail'],
		'author' => [
			'_uuid' => Arr::get($author, '_uuid', ''),
			'_class_type' => 'person',
			'display_name' => Arr::get($author, 'display_name', 'Unknown'),
            'avatar' => Arr::get($author, 'avatar', ''),
            'role' => Arr::get($author, 'role', 'An unknown role'),
            'profile_image' => Arr::get($author, 'profile_image', ''),
		]
	]);
}