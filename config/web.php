<?php
/**
 * @link http://www.newicon.net/neon
 * @copyright Copyright (c) 2017 Newicon Ltd
 * @license http://www.newicon.net/neon/license/
 * @author Steve O'Brien <steve.obrien@newicon.net> 02/04/2020
 * @package neon
 */

return [
	'components' => [
		'view' => [
			'class' => 'neon\core\web\View',
			// Whether css files should be concatenated
			'cssConcatenate' => true,
			// Whether to process the css for variables using the registered css renderer
			// currently only applicable id cssConcatenate is true
			'cssProcess' => false,
			// whether to minify the css content
			// It may be useful to set this to false in development mode
			// applies to css blocks and only to concatenated file
			'cssMinify' => true,
			// Whether to concatenate js files
			'jsConcatenate' => true,
		]
	]
];