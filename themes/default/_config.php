<?php

/**
 * Here you can set up any theme specific information that neon needs
 * For example, the set of base components that you are using or new components
 * within your theme.
 *
 * Components that required other components are responsible for including those
 * so you don't need to add everything in - just the top level one.
 * 
 * If you are seeing problems that tags aren't being included in smarty
 * then you need to include the appropriate component here
 * e.g. 'base' => ['deck']
 */
return [
	'extends' => 'base',
	'requires' => [
		'components' => [
			'base' => []
		]
	]
];