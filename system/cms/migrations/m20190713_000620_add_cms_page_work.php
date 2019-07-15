<?php

use neon\core\db\Migration;

class m20190713_000620_add_cms_page_work extends Migration
{
	public function safeUp()
	{
		$this->insert('cms_page', [
			'id' => 'brmu40AafW_1AWYN-higRg',
			'nice_id' => 'work',
			'name' => 'Our Work',
			'title' => '',
			'status' => 'PUBLISHED',
			'layout' => '',
			'template' => 'pages/our-work.tpl',
			'keywords' => '',
			'description' => ''
		]);
		$this->insert('cms_url', ['url' => '/our-work', 'nice_id' => 'work']);
	}

	public function safeDown()
	{
		$this->delete('cms_url', ['nice_id'=>'work']);
		$this->delete('cms_page', ['nice_id'=>'work']);
	}
}