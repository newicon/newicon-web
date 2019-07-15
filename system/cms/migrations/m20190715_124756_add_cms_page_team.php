<?php

use neon\core\db\Migration;

class m20190715_124756_add_cms_page_team extends Migration
{
	public function safeUp()
	{
		$this->insert('cms_page', [
			'id' => 'U7-YGvjdeOKeGBsUEta66w',
			'nice_id' => 'team',
			'name' => 'Team',
			'title' => '',
			'status' => 'PUBLISHED',
			'layout' => '',
			'template' => 'pages/about/team.tpl',
			'keywords' => '',
			'description' => ''
		]);
		$this->insert('cms_url', ['url' => '/team', 'nice_id' => 'team']);
	}

	public function safeDown()
	{
		$this->delete('cms_url', ['nice_id'=>'team']);
		$this->delete('cms_page', ['nice_id'=>'team']);
	}
}