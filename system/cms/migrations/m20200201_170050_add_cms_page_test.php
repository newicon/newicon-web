<?php

use neon\core\db\Migration;

class m20200201_170050_add_cms_page_test extends Migration
{
	public function safeUp()
	{
		$this->insert('cms_page', [
			'id' => 'a0cJWM7SeXuabsVBHep5kg',
			'nice_id' => 'test',
			'name' => 'test',
			'title' => 'TEST',
			'status' => 'PUBLISHED',
			'layout' => '',
			'template' => 'pages/test.tpl',
			'keywords' => '',
			'description' => 'Test'
		]);
		$this->insert('cms_url', ['url' => '/test', 'nice_id' => 'test']);
	}

	public function safeDown()
	{
		$this->delete('cms_url', ['nice_id'=>'test']);
		$this->delete('cms_page', ['nice_id'=>'test']);
	}
}