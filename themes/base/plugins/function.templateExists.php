<?php

/**
 * smarty_function_templateExists
 * checks if a template exists
 *
 * @param array $params
 *  'template' => 'the template to check'
 * @param object $template  the template object
 * 
 * @return bool  the answer
 */
function smarty_function_templateExists($params, $template) {
    if (empty($params['template']))
        return true;
	return $template->smarty->templateExists($params['template'].'.tpl');
}