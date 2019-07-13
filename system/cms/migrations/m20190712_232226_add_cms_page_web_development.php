<?php

use neon\core\db\Migration;

class m20190712_232226_add_cms_page_web_development extends Migration
{
	public function safeUp()
	{
		$this->insert('cms_page', [
			'id' => '-nX2JJ_sc9y3oFhVzZAe_g',
			'nice_id' => 'web-development',
			'name' => 'Web Development',
			'title' => '',
			'status' => 'PUBLISHED',
			'layout' => '',
			'template' => 'pages/services/web-development.tpl',
			'keywords' => '',
			'description' => ''
		]);
		$this->insert('cms_url', ['url' => '/web-development', 'nice_id' => 'web-development']);
	}

	public function safeDown()
	{
		$this->delete('cms_url', ['nice_id'=>'web-development']);
		$this->delete('cms_page', ['nice_id'=>'web-development']);
	}
}