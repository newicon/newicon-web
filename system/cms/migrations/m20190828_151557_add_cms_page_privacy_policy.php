<?php

use neon\core\db\Migration;

class m20190828_151557_add_cms_page_privacy_policy extends Migration
{
	public function safeUp()
	{
		$this->insert('cms_page', [
			'id' => '5_W6R--kf862cqxMrg06VM',
			'nice_id' => 'privacy-policy',
			'name' => 'Privacy Policy',
			'title' => 'Privacy policy',
			'status' => 'PUBLISHED',
			'layout' => '',
			'template' => 'pages/privacy-policy.tpl',
			'keywords' => '',
			'description' => ''
		]);
		$this->insert('cms_url', ['url' => '/privacy-policy', 'nice_id' => 'privacy-policy']);
	}

	public function safeDown()
	{
		$this->delete('cms_url', ['nice_id'=>'privacy-policy']);
		$this->delete('cms_page', ['nice_id'=>'privacy-policy']);
	}
}