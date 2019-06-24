<?php

use \neon\core\helpers\Url;

/*
 * Smarty plugin
 * -------------------------------------------------------------
 * File:     function.carousel.php
 * Type:     function
 * Name:     carousel
 * Purpose:  configures and calls the appropriate carousel template
 * -------------------------------------------------------------
 */
function smarty_function_carousel($params, &$smarty)
{
	$type = isset($params['type']) ? $params['type'] : '';
	$carouselTemplate = 'carousel'.ucfirst($type).'.tpl';

	if ($smarty->templateExists($carouselTemplate)) {
		$params['pluginOptions'] = isset($params['pluginOptions']) ? $params['pluginOptions'] : [];
		smarty_function_carousel_configureControls($smarty, $params);
		$smarty->assign($params);
		$smarty->display($carouselTemplate);
	}
}

function smarty_function_carousel_configureControls(&$smarty, &$params) {
	if (isset($params['controls'])) {
		$controls = &$params['controls'];
		if (isset($controls['iterator'])) {
			$smarty->assign('iteratorControls', ucfirst($controls['iterator']));
		}
		if (isset($controls['goto'])) {
			$smarty->assign('gotoControls', ucfirst($controls['goto']));
		}
	}
}
