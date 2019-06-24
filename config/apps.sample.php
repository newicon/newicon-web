<?php

/**
 * The apps.php file is where you can set up your application specific apps
 */
return [
	// add named myapp
	'myapp' => [
		// namespace path to the application file
		'class' => 'myapp\App',
		// namespace aliases to refer to your application
		'alias' => [
			'@myapp' => '@root/myapp'
		]
	]
];

