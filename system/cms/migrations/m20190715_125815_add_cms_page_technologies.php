<?php

use neon\core\db\Migration;

class m20190715_125815_add_cms_page_technologies extends Migration
{
	public function safeUp()
	{
		$this->insert('cms_page', [
			'id' => '4pMo2PSeeTac1A2SiDJx-0',
			'nice_id' => 'technologies',
			'name' => 'Technologies',
			'title' => '',
			'status' => 'PUBLISHED',
			'layout' => '',
			'template' => 'pages/approach/technologies.tpl',
			'keywords' => '',
			'description' => ''
		]);
		$this->insert('cms_url', ['url' => '/technologies', 'nice_id' => 'technologies']);
	}

	public function safeDown()
	{
		$this->delete('cms_url', ['nice_id'=>'technologies']);
		$this->delete('cms_page', ['nice_id'=>'technologies']);
	}
}