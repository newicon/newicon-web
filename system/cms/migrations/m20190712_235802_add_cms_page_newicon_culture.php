<?php

use neon\core\db\Migration;

class m20190712_235802_add_cms_page_newicon_culture extends Migration
{
	public function safeUp()
	{
		$this->insert('cms_page', [
			'id' => '93f9WYZkfcy0IRY8njHNuM',
			'nice_id' => 'culture',
			'name' => 'Newicon Culture',
			'title' => '',
			'status' => 'PUBLISHED',
			'layout' => '',
			'template' => 'pages/about/culture.tpl',
			'keywords' => '',
			'description' => ''
		]);
		$this->insert('cms_url', ['url' => '/newicon-culture', 'nice_id' => 'culture']);
	}

	public function safeDown()
	{
		$this->delete('cms_url', ['nice_id'=>'culture']);
		$this->delete('cms_page', ['nice_id'=>'culture']);
	}
}