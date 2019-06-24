<?php

/**
 * smarty_function_bemMix
 * Combines a set of bem blocks together to generate
 * the bem mix block name. This is written as container_block.
 * If either of these are missing then return nothing
 *
 * @param array $params
 *   'container' => the containing block
 *   'block' => the contained block
 * @param object $template  the template object
 */
function smarty_function_bemMix($params, $template) {
	if (!empty($params['container']) && !empty($params['block']))
		return "$params[container]_$params[block] $params[block]";
	return !empty($params['block']) ? $params['block'] : '';
}