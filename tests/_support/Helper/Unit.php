<?php
namespace Helper;

use yii\helpers\FileHelper;

// here you can define custom actions
// all public methods declared in helper class will be available in $I

class Unit extends \Codeception\Module
{
	public function _beforeSuite($settings = [])
	{
		FileHelper::removeDirectory(DIR_TEST.'/_var');
		// Install the database
		neon_test_database_create();
	}

	public function _afterSuite()
	{
	}
}
