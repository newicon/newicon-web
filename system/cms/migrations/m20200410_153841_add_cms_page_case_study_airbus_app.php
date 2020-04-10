<?php

use neon\core\db\Migration;

class m20200410_153841_add_cms_page_case_study_airbus_app extends Migration
{
	public function safeUp()
	{
		$this->insert('cms_page', [
			'id' => 'tbnAZbFDdlu3gBCT02Kvm0',
			'nice_id' => 'case-study-airbus-app',
			'name' => 'case-study-airbus-app',
			'title' => 'Airbus aircraft maintenance app | case study',
			'status' => 'PUBLISHED',
			'layout' => '',
			'template' => 'pages/our-work/airbus-onepress.tpl',
			'keywords' => '',
			'description' => ''
		]);
		$this->insert('cms_url', ['url' => '/case-study-airbus-app', 'nice_id' => 'case-study-airbus-app']);
	}

	public function safeDown()
	{
		$this->delete('cms_url', ['nice_id'=>'case-study-airbus-app']);
		$this->delete('cms_page', ['nice_id'=>'case-study-airbus-app']);
	}
}