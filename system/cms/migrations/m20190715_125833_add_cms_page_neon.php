<?php

use neon\core\db\Migration;

class m20190715_125833_add_cms_page_neon extends Migration
{
	public function safeUp()
	{
		$this->insert('cms_page', [
			'id' => 'NarHpUR0fCC1vLxousO7_M',
			'nice_id' => 'neon',
			'name' => 'Neon',
			'title' => '',
			'status' => 'PUBLISHED',
			'layout' => '',
			'template' => 'pages/approach/neon.tpl',
			'keywords' => '',
			'description' => ''
		]);
		$this->insert('cms_url', ['url' => '/neon', 'nice_id' => 'neon']);
	}

	public function safeDown()
	{
		$this->delete('cms_url', ['nice_id'=>'neon']);
		$this->delete('cms_page', ['nice_id'=>'neon']);
	}
}