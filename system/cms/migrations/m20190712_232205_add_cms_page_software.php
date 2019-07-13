<?php

use neon\core\db\Migration;

class m20190712_232205_add_cms_page_software extends Migration
{
	public function safeUp()
	{
		$this->insert('cms_page', [
			'id' => 'oes5wfTCe3S0qKcDrHeu3w',
			'nice_id' => 'software',
			'name' => 'Software',
			'title' => '',
			'status' => 'PUBLISHED',
			'layout' => '',
			'template' => 'pages/services/software.tpl',
			'keywords' => '',
			'description' => ''
		]);
		$this->insert('cms_url', ['url' => '/software', 'nice_id' => 'software']);
	}

	public function safeDown()
	{
		$this->delete('cms_url', ['nice_id'=>'software']);
		$this->delete('cms_page', ['nice_id'=>'software']);
	}
}