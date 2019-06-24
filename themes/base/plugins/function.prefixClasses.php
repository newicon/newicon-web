<?php

/**
 * smarty_function_prefixClasses
 * Prefixes a class namespace to all elements of a whitespace seperated string
 *
 * @param array $params
 *   'prefix' => string the prefix to apply
 *   'classes' => string whitespace seperated list of classes to prefix
 * @param object $template  the template object
 *
 * @return string the prefixed string of class names
 */
function smarty_function_prefixClasses($params, $template) {
	$params['prefix'] = isset($params['prefix']) ? $params['prefix'] : '';
    if (isset($params['classes'])) {
        $classes = explode(' ', $params['classes']);
        return $params['prefix'].'_'.implode(' '.$params['prefix'].'_', $classes);
    } else {
        return '';
    }
}