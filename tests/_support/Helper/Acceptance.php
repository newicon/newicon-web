<?php
namespace Helper;

// here you can define custom actions
// all public methods declared in helper class will be available in $I

use neon\core\test\ProcessForker;

class Acceptance extends \Codeception\Module
{
	public function getWebRoot()
	{
		return dirname(dirname(__DIR__)) . '/acceptance/_web/public';
	}

	public function _beforeSuite($settings = [])
	{
		// Install the database
		neon_test_database_create();
		// launch test server
		neon_test_server_start('test_server', $this->getWebRoot());
	}

	public function _afterSuite()
	{
		neon_test_server_stop('test_server');
	}
}
