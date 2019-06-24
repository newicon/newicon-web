<?php

/**
 * smarty_function_gridResponsive
 *
 * Takes a set of responsive column sizes and calculates the grid classes required
 * for each responsive state
 *
 * @param array $params
 *   'columns' => the set of break points and number of columns
 *      e.g. ['xs'=>2,'lg'=>4]
 *      to have 2 columns from xs to lg and 4 columns from lg and above
 *   'assign' => the variable to assign the result to
 *   'size' => the grid column divisor - defaults to 12
 * @param object $template  the template object
 */
function smarty_function_gridResponsive($params, $template)
{
	if (!(isset($params['assign']) && isset($params['columns'])))
		throw new \InvalidArgumentException("You must set the assign and columns parameters when using the gridResponsive widget. You passed in ".print_r($params,true));
	$size = empty($params['size'])?12:$params['size'];

	$cols = [];
	foreach ($params['columns'] as $breakpoint => $number)
		$cols[] = "col-{$breakpoint}-".floor($size/$number);
	$template->assign($params['assign'], implode(' ',$cols));
}