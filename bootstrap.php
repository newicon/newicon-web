<?php

defined('NEON_START') or  define('NEON_START', microtime(true));

/*
|------------------------------------------------------------------------------
| Define the root directory path
|------------------------------------------------------------------------------
*/
defined('DIR_ROOT') or define('DIR_ROOT', __DIR__);

/*
|------------------------------------------------------------------------------
| Define the vendor directory path
|------------------------------------------------------------------------------
| The vendors folder can exist in different places depending on your project.
| Neon is happy contained inside the vendor folder. This can be useful for complex projects
| with dependencies external to neon
*/
defined('NEON_VENDOR') or define('NEON_VENDOR',
	file_exists(DIR_ROOT . '/newicon/vendor')
		? DIR_ROOT . '/newicon/vendor'
		: DIR_ROOT . '/vendor');

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