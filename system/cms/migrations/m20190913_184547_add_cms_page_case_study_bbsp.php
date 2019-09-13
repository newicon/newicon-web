<?php

use neon\core\db\Migration;

class m20190913_184547_add_cms_page_case_study_bbsp extends Migration
{
	public function safeUp()
	{
		$this->insert('cms_page', [
			'id' => 'Rui44q1Remq0SWlg8GWid0',
			'nice_id' => 'case-study-bbsp',
			'name' => 'Case Study BBSP',
			'title' => 'Bristol and Bath Science Park Website',
			'status' => 'Published',
			'layout' => '',
			'template' => 'pages/our-work/bbsp.tpl',
			'keywords' => '',
			'description' => ''
		]);
		$this->insert('cms_url', ['url' => '/our-work/bristol-and-bath-science-park-website', 'nice_id' => 'case-study-bbsp']);
	}

	public function safeDown()
	{
		$this->delete('cms_url', ['nice_id'=>'case-study-bbsp']);
		$this->delete('cms_page', ['nice_id'=>'case-study-bbsp']);
	}
}