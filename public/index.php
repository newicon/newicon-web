<?php
require '../bootstrap.php';

$neon = \neon\core\Env::createWebApplication();
$neon->registerAllApps();
$neon->run();
