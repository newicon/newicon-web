<?php

use \neon\core\helpers\Url;

/**
 * smarty_function_modal
 * -------------------------------------------------------------
 * File:     function.modal.php
 * Type:     function
 * Name:     modal
 * Purpose:  renders a modal popup and returns a string data-target="your modal popup id"
 * -------------------------------------------------------------
 * @param array $params
 *   'type' => type of modal
 *   'id' => an id for the modal
 */
function smarty_function_modal($params, &$smarty)
{
	$type = isset($params['type']) ? $params['type'] : '';
	$modalTemplate = 'modal'.ucfirst($type).'.tpl';

	if ($smarty->templateExists($modalTemplate) && !($type == 'link')) {
		$smarty->assign($params);
		$smarty->display($modalTemplate);
	} else {
		$id = "#" . $params['id'];
		return "data-toggle='modal'" . " " . "data-backdrop='static'" . " " . "data-target=$id";
	}

}
