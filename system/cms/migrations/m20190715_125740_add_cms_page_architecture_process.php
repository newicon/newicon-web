<?php

use neon\core\db\Migration;

class m20190715_125740_add_cms_page_architecture_process extends Migration
{
	public function safeUp()
	{
		$this->insert('cms_page', [
			'id' => 'Sf2xttJ2dYydI8m5c9MYD0',
			'nice_id' => 'architecture-process',
			'name' => 'Architecture Process',
			'title' => '',
			'status' => 'PUBLISHED',
			'layout' => '',
			'template' => 'pages/approach/architecture-process.tpl',
			'keywords' => '',
			'description' => ''
		]);
		$this->insert('cms_url', ['url' => '/architecture-process', 'nice_id' => 'architecture-process']);
	}

	public function safeDown()
	{
		$this->delete('cms_url', ['nice_id'=>'architecture-process']);
		$this->delete('cms_page', ['nice_id'=>'architecture-process']);
	}
}