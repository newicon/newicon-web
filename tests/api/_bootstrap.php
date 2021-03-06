<?php
// Here you can initialize variables that will be available to your tests
use \neon\core\Env;
/*
| --------------------------------------------------------------------------------------------------
| For more control of before and after test suit execution see:
| tests/_support/Helper/Api and _beforeSuite and _afterSuite functions
| --------------------------------------------------------------------------------------------------
*/

/*
| --------------------------------------------------------------------------------------------------
| Bootstrap the necessary application variables - this will attempt to load within the
| context of a parent application or emulate a bootstrap script if not found
| --------------------------------------------------------------------------------------------------
*/

// Set up a console application
if (!class_exists('Neon')) {

	/*
	| --------------------------------------------------------------------------------------------------
	| Loading in environment variables from a file does NOT overwrite pre existing environment variables
	| as we want to ensure we are using a different database for the tests lets set this variable first.
	| Note this will first check if you have explicitly set the environment variable 'DB_NAME' for e.g.
	| `export DB_NAME="my_test"`
	| If not, it sets it to 'neon_test'
	| --------------------------------------------------------------------------------------------------
	*/
	Env::setEnvironmentVariable('DB_NAME', env('DB_NAME', 'neon_test'), true);
	Env::setEnvironmentVariable('NEON_ENV', env('NEON_ENV', 'test'), true);

	/*
	| --------------------------------------------------------------------------------------------------
	| Now we have set the database env variable it is safe to attempt to load in the project specific
	| environment variables (pre existing variables like DB_NAME set above will NOT be overwritten)
	| Load in remaining environment variables
	| All variables inside the env.ini can be overwritten if environment variables already exist
	| --------------------------------------------------------------------------------------------------
	*/
	Env::setEnvironmentFromFile(DIR_CONFIG.'/env.ini');

	/*
	| --------------------------------------------------------------------------------------------------
	| Load the neon console application
	| --------------------------------------------------------------------------------------------------
	*/
	$neon = Env::createConsoleApplication(['runtimePath' => '@root/tests/_var/runtime']);
	$neon->registerAllApps();
}