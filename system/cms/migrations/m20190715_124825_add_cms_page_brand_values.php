<?php

use neon\core\db\Migration;

class m20190715_124825_add_cms_page_brand_values extends Migration
{
	public function safeUp()
	{
		$this->insert('cms_page', [
			'id' => '-u5RhabsfJu4_TCPL2nV6g',
			'nice_id' => 'brand-values',
			'name' => 'Brand Values',
			'title' => '',
			'status' => 'PUBLISHED',
			'layout' => '',
			'template' => 'pages/about/brand-values.tpl',
			'keywords' => '',
			'description' => ''
		]);
		$this->insert('cms_url', ['url' => '/brand-values', 'nice_id' => 'brand-values']);
	}

	public function safeDown()
	{
		$this->delete('cms_url', ['nice_id'=>'brand-values']);
		$this->delete('cms_page', ['nice_id'=>'brand-values']);
	}
}