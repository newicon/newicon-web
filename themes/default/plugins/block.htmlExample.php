<?php

/*
 * Smarty plugin
 * -------------------------------------------------------------
 * File:     block.translate.php
 * Type:     block
 * Name:     translate
 * Purpose:  translate a block of text
 * -------------------------------------------------------------
 */

use neon\core\helpers\Html;

function smarty_block_htmlExample($params, $content, Smarty_Internal_Template $template, &$repeat)
{
	// only output on the closing tag
	if(!$repeat){
		if (isset($content)) {
			return $content . highlight_string($content, true);
		}
	}
}