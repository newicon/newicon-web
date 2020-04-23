<?php
use \neon\core\helpers\Arr;
use \neon\core\helpers\Str;
/**
 * Load posts
 * @param $params - optional "assign"
 * @return string
 */
function smarty_function_posts($params, $template)
{
	profile_begin('smarty_function_posts');
	$ddo = neon()->dds->getIDdsObjectManagement();
	$url = neon()->cms->page->getUrl();
	// 1. Get posts for category
	if (Str::startsWith($url, '/blog/category')) {
		// look up category
		$cat = $ddo->runSingleObjectRequest('category', ['slug', '=', $url]);
		if ($cat['length'] === 0)
			abort(404, 'No category found');
		$catUuid = $cat['rows'][0]['_uuid'];
		// find blog post
		$posts = $ddo->runSingleObjectRequest('blog',
			[['category', '=', $catUuid], ['status', '=', 'published']],
			['published' => 'DESC'],
			['start' => 0, 'total' => true, 'length' => 50]);
		$category = $catUuid;
	} else {
		// otherwise just get latest posts
		$category = null;
		$posts = $ddo->runSingleObjectRequest('blog',
			['status', '=', 'published'],
			['published' => 'DESC'],
			['start' => 0, 'total' => true, 'length' => 50]);
	}
	$assign = Arr::get($params, 'assign', 'posts');
	// 2. Get all blog categories
	$categories = $ddo->runSingleObjectRequest('category', [], ['order' => 'ASC']);
	$categoriesIndex = collect($categories['rows'])->keyBy('_uuid');
	// add 'Latest' special category
	$categoriesIndex->prepend( ['_uuid' => null, 'order' => -1, 'title' => 'Latest', 'slug' => '/blog']);

	// 3. Get all authors
	// get IDs of all authors
	$postAuthors = collect($posts['rows'])
		->where('author', '!=', null) // remove any nulls!
		->pluck('author')->toArray();
	$authorsIndex = collect();
	if (!empty($postAuthors))
		$authorsIndex = collect($ddo->runSingleObjectRequest('person', ['_uuid', 'in', $postAuthors])['rows'])
			->keyBy('_uuid');

	// 4. assemble our posts: attach the author object and category object to each the post
	foreach($posts['rows'] as $key => $post) {
		$posts['rows'][$key]['author'] = $authorsIndex->get($post['author']);
		$posts['rows'][$key]['category'] = $categoriesIndex->get($post['category']);
	}

	$template->assign($assign, $posts);
	$template->assign('category', $category);
	$template->assign('categories', $categoriesIndex->toArray());
	profile_end('smarty_function_posts');
}