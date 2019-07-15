<?php

use neon\core\db\Migration;

class m20190715_130006_add_cms_page_why_join extends Migration
{
	public function safeUp()
	{
		$this->insert('cms_page', [
			'id' => 'B2VLkpYydlacHQelzPly00',
			'nice_id' => 'why-join',
			'name' => 'Why Join',
			'title' => '',
			'status' => 'PUBLISHED',
			'layout' => '',
			'template' => 'pages/careers/why-join.tpl',
			'keywords' => '',
			'description' => ''
		]);
		$this->insert('cms_url', ['url' => '/why-join', 'nice_id' => 'why-join']);
	}

	public function safeDown()
	{
		$this->delete('cms_url', ['nice_id'=>'why-join']);
		$this->delete('cms_page', ['nice_id'=>'why-join']);
	}
}