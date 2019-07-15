<?php

use neon\core\db\Migration;

class m20190715_132713_add_cms_page_neon_devs extends Migration
{
	public function safeUp()
	{
		$this->insert('cms_page', [
			'id' => '0jZ-KNpbepecRdTn5ZL6Yw',
			'nice_id' => 'neon-devs',
			'name' => 'Neon for devs',
			'title' => '',
			'status' => 'PUBLISHED',
			'layout' => '',
			'template' => 'pages/approach/neon-for-devs.tpl',
			'keywords' => '',
			'description' => ''
		]);
		$this->insert('cms_url', ['url' => '/neon-for-developers', 'nice_id' => 'neon-devs']);
	}

	public function safeDown()
	{
		$this->delete('cms_url', ['nice_id'=>'neon-devs']);
		$this->delete('cms_page', ['nice_id'=>'neon-devs']);
	}
}