<?php
/*
| --------------------------------------------------------------------------------------------------
| For more control of before and after test suit execution see:
| tests/_support/Helper/Unit and _beforeSuite and _afterSuite functions
| --------------------------------------------------------------------------------------------------
*/

/*
| --------------------------------------------------------------------------------------------------
| Bootstrap the necessary application variables - performs the same job as the root application bootstrap
| --------------------------------------------------------------------------------------------------
*/
defined('NEON_START') or define('NEON_START', microtime(true));

/*
| --------------------------------------------------------------------------------------------------
| Load in core framework test helper functions
| --------------------------------------------------------------------------------------------------
*/
require_once dirname(__DIR__) . '/newicon/neon/core/test/helpers.php';

/*
|------------------------------------------------------------------------------
| Define the root directory path
|------------------------------------------------------------------------------
*/
defined('DIR_ROOT') or define('DIR_ROOT', dirname(__DIR__));

/*
|------------------------------------------------------------------------------
| Define the test directory
|------------------------------------------------------------------------------
*/
defined('DIR_TEST') or define('DIR_TEST', __DIR__);

/*
|------------------------------------------------------------------------------
| Define the vendor directory path
|------------------------------------------------------------------------------
*/
defined('NEON_VENDOR') or define('NEON_VENDOR', DIR_ROOT . '/newicon/vendor');

/*
|------------------------------------------------------------------------------
| Define the config directory path
|------------------------------------------------------------------------------
*/
defined('DIR_CONFIG') or define('DIR_CONFIG', DIR_ROOT . '/config');

/*
|------------------------------------------------------------------------------
| Register The Auto Loader
|------------------------------------------------------------------------------
|
| Composer provides a auto generated class loader for
| our application. This takes care of loading classes for us.
|
*/
require NEON_VENDOR . '/autoload.php';