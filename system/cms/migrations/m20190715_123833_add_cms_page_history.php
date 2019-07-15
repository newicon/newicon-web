<?php

use neon\core\db\Migration;

class m20190715_123833_add_cms_page_history extends Migration
{
	public function safeUp()
	{
		$this->insert('cms_page', [
			'id' => 'oZz3Kg6rfhS7KAbH3Heyew',
			'nice_id' => 'history',
			'name' => 'History',
			'title' => '',
			'status' => 'PUBLISHED',
			'layout' => '',
			'template' => 'pages/about/history.tpl',
			'keywords' => '',
			'description' => ''
		]);
		$this->insert('cms_url', ['url' => '/history', 'nice_id' => 'history']);
	}

	public function safeDown()
	{
		$this->delete('cms_url', ['nice_id'=>'history']);
		$this->delete('cms_page', ['nice_id'=>'history']);
	}
}