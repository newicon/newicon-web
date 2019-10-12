<?php

use neon\core\db\Migration;

class m20191012_155815_add_cms_page_styleguide extends Migration
{
	public function safeUp()
	{
		$this->insert('cms_page', [
			'id' => 'i7pPyApLfh686RQBgzKJZw',
			'nice_id' => 'styleguide',
			'name' => 'Styleguide',
			'title' => 'Styleguide',
			'status' => 'PUBLISHED',
			'layout' => '',
			'template' => 'pages/styleguide.tpl',
			'keywords' => '',
			'description' => ''
		]);
		$this->insert('cms_url', ['url' => '/styleguide', 'nice_id' => 'styleguide']);
	}

	public function safeDown()
	{
		$this->delete('cms_url', ['nice_id'=>'styleguide']);
		$this->delete('cms_page', ['nice_id'=>'styleguide']);
	}
}