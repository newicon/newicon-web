<?php

use neon\core\db\Migration;

class m20190712_235510_add_cms_page_about extends Migration
{
	public function safeUp()
	{
		$this->insert('cms_page', [
			'id' => 'eNHMaNRHdUm1UMj0ox3HFM',
			'nice_id' => 'about',
			'name' => 'About',
			'title' => '',
			'status' => 'PUBLISHED',
			'layout' => '',
			'template' => 'pages/about/about-us.tpl',
			'keywords' => '',
			'description' => ''
		]);
		$this->insert('cms_url', ['url' => '/about-us', 'nice_id' => 'about']);
	}

	public function safeDown()
	{
		$this->delete('cms_url', ['nice_id'=>'about']);
		$this->delete('cms_page', ['nice_id'=>'about']);
	}
}