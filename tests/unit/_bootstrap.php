<?php
use \neon\core\Env;

// Set up a console application
// We must test that this has not already been executed by another bootstrap file
// Why not do it in the parent _bootstrap? We can not due to how codeception collects coverage data for acceptance tests

if (! class_exists('Neon')) {

	/*
	| --------------------------------------------------------------------------------------------------
	| Set sensible environment variable defaults - these can only be overridden if set in the environment
	| --------------------------------------------------------------------------------------------------
	| Loading in environment variables from a file does NOT overwrite pre existing environment variables.
	| As we want to ensure we are using a different database for the tests lets set this variable first.
	| Note this will first check if you have explicitly set the environment variable 'DB_NAME' for e.g.
	| `export DB_NAME="my_test"`
	| If not, it sets it to 'neon_test'
	| --------------------------------------------------------------------------------------------------
	*/
	Env::setEnvironmentVariable('DB_NAME', env('DB_NAME', 'neon_test'), true);
	Env::setEnvironmentVariable('NEON_ENV', env('NEON_ENV', 'test'), true);
	Env::setEnvironmentVariable('DB_USER', 'neon', true);
	Env::setEnvironmentVariable('DB_PASSWORD', 'neon', true);

	/*
	| --------------------------------------------------------------------------------------------------
	| Now we have set the database env variable it is safe to attempt to load in the project specific
	| environment variables (as pre existing variables (such as the DB_NAME set above will NOT be overwritten)
	| Load in remaining environment variables
	| All variables inside the env.ini can be overwritten if environment variables already exist
	| This loads information from a tests config first if it exists and then from the
	| application config if that exists
	| --------------------------------------------------------------------------------------------------
	*/
	Env::setEnvironmentFromFile(DIR_CONFIG.'/env.ini');

	/*
	| --------------------------------------------------------------------------------------------------
	| Load the neon console application
	| --------------------------------------------------------------------------------------------------
	*/
	$_SERVER['REQUEST_URI'] = 'http://localhost:8989';
	$neon = Env::createConsoleApplication(['runtimePath' => DIR_TEST.'/_var/runtime']);
	$neon->registerAllApps();
	/*
	| --------------------------------------------------------------------------------------------------
	| Enable us to autoload tests via the \neon\tests namespace
	| --------------------------------------------------------------------------------------------------
	| A namespace such as \app\tests\unit\dds\MyClass
	| will points to \root\tests\unit\dds\MyClass
	*/
	Neon::setAlias('@app/tests', dirname(__DIR__));

}