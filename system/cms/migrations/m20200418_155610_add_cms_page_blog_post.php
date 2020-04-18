<?php

use neon\core\db\Migration;

class m20200418_155610_add_cms_page_blog_post extends Migration
{
	public function safeUp()
	{
		$this->insert('cms_page', [
			'id' => 'hR83sRHGdcS9kXRMo3HKhg',
			'nice_id' => 'blog-post',
			'name' => 'Blog Post',
			'title' => '',
			'status' => 'PUBLISHED',
			'layout' => '',
			'template' => 'pages/blog/post.tpl',
			'keywords' => '',
			'description' => ''
		]);
		$this->insert('cms_url', ['url' => '/blog-post', 'nice_id' => 'blog-post']);
	}

	public function safeDown()
	{
		$this->delete('cms_url', ['nice_id'=>'blog-post']);
		$this->delete('cms_page', ['nice_id'=>'blog-post']);
	}
}