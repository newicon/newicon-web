<?php

use neon\core\db\Migration;

class m20190712_234201_add_cms_page_digital_marketing extends Migration
{
	public function safeUp()
	{
		$this->insert('cms_page', [
			'id' => 'oTxNurpPfVmf5Mdm4qMo4g',
			'nice_id' => 'digital-marketing',
			'name' => 'Digital Marketing',
			'title' => '',
			'status' => 'PUBLISHED',
			'layout' => '',
			'template' => 'pages/services/digital-marketing.tpl',
			'keywords' => '',
			'description' => ''
		]);
		$this->insert('cms_url', ['url' => '/digital-marketing', 'nice_id' => 'digital-marketing']);
	}

	public function safeDown()
	{
		$this->delete('cms_url', ['nice_id'=>'digital-marketing']);
		$this->delete('cms_page', ['nice_id'=>'digital-marketing']);
	}
}