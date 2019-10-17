<?php

/**
 * smarty_function_flattenTagAttributes
 * Flattens a set of HTML tag attributes returning them as a single
 * string to be added to a tag
 *
 * @param array $params
 *   'attributes'=> an array of [
 *	   'data' => [] an array of key value pairs that will be returned as data-$key=$value
 *     'html' => [] an array of key value pairs returned as $key=>$value
 *   ]
 *   'dataPrefix' => if set extend the data- prefix to data-{$dataPrefix}
 *   'serialise => If value is an array, use this serialise method.
 *     Options available are json [default] or ... er ... that's it for now.
 *
 * @return string
 */
function smarty_block_nav_menu($params, $template) {
	dd('here');
}