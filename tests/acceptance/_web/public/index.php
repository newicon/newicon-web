<?php
// NOTE: Make sure this file is not accessible when deployed to production
if (!in_array(@$_SERVER['REMOTE_ADDR'], ['127.0.0.1', '::1'])) {
    die('Access Forbidden.');
}

/**
 * The start up script to load the neon web app in test mode.
 */
include './c3.php';

defined('NEON_VENDOR') or define('NEON_VENDOR', dirname(dirname(dirname(dirname(__DIR__)))) . '/newicon/vendor');
require NEON_VENDOR . '/autoload.php';

\neon\core\Env::bootstrap();
\neon\core\Env::setEnvironmentFromFile(DIR_CONFIG.'/env.ini', true);
$neon = \neon\core\Env::createWebApplication();
$neon->registerAllApps();
$neon->run();