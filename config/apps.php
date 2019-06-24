<?php
/**
 * The apps.php file is where you can set up your application specific apps
 */
return [
	/**
	 * Extend the apps
	 */
	'main' => [
		// namespace path to the application file
		'class' => 'main\App',
		// namespace aliases to refer to your application
		'alias' => [
			'@main' => '@root/apps/main'
		]
	]
];

