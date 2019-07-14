<?php

use neon\core\db\Migration;

class m20190714_221037_add_cms_page_blog extends Migration
{
	public function safeUp()
	{
		$this->insert('cms_page', [
			'id' => 'jdyRSXWtfFa4N1DCSjjYCM',
			'nice_id' => 'blog',
			'name' => 'blog',
			'title' => '',
			'status' => 'Published',
			'layout' => '',
			'template' => 'pages/blog/index.tpl',
			'keywords' => '',
			'description' => ''
		]);
		$this->insert('cms_url', ['url' => '/insights', 'nice_id' => 'blog']);
	}

	public function safeDown()
	{
		$this->delete('cms_url', ['nice_id'=>'blog']);
		$this->delete('cms_page', ['nice_id'=>'blog']);
	}
}