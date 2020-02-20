<?php

/**
 * Get the theme styles
 * @return string
 */
function smarty_function_styles($params, $template) {
	$stylesJson = file_get_contents(dirname(__DIR__).'/styles.json');
	$styles = json_decode($stylesJson, true);
	$template->assign('styles', $styles);
}