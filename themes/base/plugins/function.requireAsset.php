<?php
/*
 * Smarty plugin
 * -------------------------------------------------------------
 * File:     function.requireAsset.php
 * Type:     function
 * Name:     requireAsset
 * Purpose:  require asset
 * -------------------------------------------------------------
 */
function smarty_function_requireAsset($params, $template) {
	if (!isset($params['name']))
		return null;
	neon()->view->registerAssetBundle($params['name'], \neon\core\web\View::POS_END);
}