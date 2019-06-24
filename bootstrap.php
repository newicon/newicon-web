<?php
defined('NEON_START') or define('NEON_START', microtime(true));

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
*/
defined('NEON_VENDOR') or define('NEON_VENDOR', DIR_ROOT . '/newicon/vendor');

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

/*
|------------------------------------------------------------------------------
| Define the config directory path
|------------------------------------------------------------------------------
*/
defined('DIR_CONFIG') or define('DIR_CONFIG', DIR_ROOT . '/config');