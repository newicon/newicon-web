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

function smarty_block_layout_container($params, $content, Smarty_Internal_Template $template, &$repeat)
{
	// only output on the closing tag
	if (!$repeat) {
		$padding = \neon\core\helpers\Arr::get($params, 'padding', 'px-6% sm:px-1/12 2xl:px-24');
		$class = \neon\core\helpers\Arr::get($params, 'class', '');
		$style = \neon\core\helpers\Arr::get($params, 'style', '');
		return '<div class="max-w-screen-2xl '.$padding.' mx-auto '.$class.'" style="'.$style.'">' .
			$content .
		'</div>';
	}
}