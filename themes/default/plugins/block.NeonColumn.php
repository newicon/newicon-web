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

function smarty_block_NeonColumn($params, $content, Smarty_Internal_Template $template, &$repeat)
{
	// only output on the closing tag
	if (!$repeat) {
		return '<div class="col">YOYOYO' . $content . '</div>';
	}
}
