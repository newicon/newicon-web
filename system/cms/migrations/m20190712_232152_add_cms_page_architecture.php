<?php

use neon\core\db\Migration;

class m20190712_232152_add_cms_page_architecture extends Migration
{
	public function safeUp()
	{
		$this->insert('cms_page', [
			'id' => 'ZSDm6iJhdq2fDoOJJxlPoM',
			'nice_id' => 'architecture',
			'name' => 'Architecture',
			'title' => '',
			'status' => 'PUBLISHED',
			'layout' => '',
			'template' => 'pages/services/architecture.tpl',
			'keywords' => '',
			'description' => ''
		]);
		$this->insert('cms_url', ['url' => '/architecture', 'nice_id' => 'architecture']);
	}

	public function safeDown()
	{
		$this->delete('cms_url', ['nice_id'=>'architecture']);
		$this->delete('cms_page', ['nice_id'=>'architecture']);
	}
}