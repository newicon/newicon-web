<?php

use neon\core\db\Migration;

class m20190821_125137_add_cms_page_seo extends Migration
{
	public function safeUp()
	{
		$this->insert('cms_page', [
			'id' => 'vmMHPIaOdiy4pMusSXtX70',
			'nice_id' => 'seo',
			'name' => 'seo',
			'title' => '',
			'status' => '',
			'layout' => '',
			'template' => 'pages/seo',
			'keywords' => '',
			'description' => ''
		]);
		$this->insert('cms_url', ['url' => '/seo', 'nice_id' => 'seo']);
	}

	public function safeDown()
	{
		$this->delete('cms_url', ['nice_id'=>'seo']);
		$this->delete('cms_page', ['nice_id'=>'seo']);
	}
}