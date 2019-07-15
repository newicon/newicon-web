<?php

use neon\core\db\Migration;

class m20190715_125940_add_cms_page_join extends Migration
{
	public function safeUp()
	{
		$this->insert('cms_page', [
			'id' => 'Ll376FbzfcmdbZwq4DPwRg',
			'nice_id' => 'join',
			'name' => 'Join',
			'title' => '',
			'status' => 'PUBLISHED',
			'layout' => '',
			'template' => 'pages/careers/join.tpl',
			'keywords' => '',
			'description' => ''
		]);
		$this->insert('cms_url', ['url' => '/join', 'nice_id' => 'join']);
	}

	public function safeDown()
	{
		$this->delete('cms_url', ['nice_id'=>'join']);
		$this->delete('cms_page', ['nice_id'=>'join']);
	}
}