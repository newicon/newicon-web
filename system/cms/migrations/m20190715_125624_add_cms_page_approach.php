<?php

use neon\core\db\Migration;

class m20190715_125624_add_cms_page_approach extends Migration
{
	public function safeUp()
	{
		$this->insert('cms_page', [
			'id' => 'ZlPVzpONcf_eK-sdJeWWxM',
			'nice_id' => 'approach',
			'name' => 'Approach',
			'title' => '',
			'status' => 'PUBLISHED',
			'layout' => '',
			'template' => 'pages/approach/index.tpl',
			'keywords' => '',
			'description' => ''
		]);
		$this->insert('cms_url', ['url' => '/approach', 'nice_id' => 'approach']);
	}

	public function safeDown()
	{
		$this->delete('cms_url', ['nice_id'=>'approach']);
		$this->delete('cms_page', ['nice_id'=>'approach']);
	}
}