<?php

use neon\core\db\Migration;

class m20190712_232116_add_cms_page_home extends Migration
{
	public function safeUp()
	{
		$this->insert('cms_page', [
			'id' => 'ZRqn7ZESck65cvrLj7C9Hw',
			'nice_id' => 'home',
			'name' => 'Home',
			'title' => '',
			'status' => 'PUBLISHED',
			'layout' => '',
			'template' => 'pages/home.tpl',
			'keywords' => '',
			'description' => ''
		]);
		$this->insert('cms_url', ['url' => '/', 'nice_id' => 'home']);
	}

	public function safeDown()
	{
		$this->delete('cms_url', ['nice_id'=>'home']);
		$this->delete('cms_page', ['nice_id'=>'home']);
	}
}