<?php

use neon\core\db\Migration;

class m20190715_130023_add_cms_page_contact extends Migration
{
	public function safeUp()
	{
		$this->insert('cms_page', [
			'id' => 'RLPJGZR2e_W8wNMUYyTe6M',
			'nice_id' => 'contact',
			'name' => 'Contact',
			'title' => '',
			'status' => 'PUBLISHED',
			'layout' => '',
			'template' => 'pages/contact.tpl',
			'keywords' => '',
			'description' => ''
		]);
		$this->insert('cms_url', ['url' => '/contact', 'nice_id' => 'contact']);
	}

	public function safeDown()
	{
		$this->delete('cms_url', ['nice_id'=>'contact']);
		$this->delete('cms_page', ['nice_id'=>'contact']);
	}
}