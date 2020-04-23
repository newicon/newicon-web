<?php
use \neon\core\helpers\Arr;

/*
 * Smarty plugin
 * -------------------------------------------------------------
 * File:     modifier.wordCount.php
 * Type:     modifier
 * Name:     wordCount
 * Purpose:  count number of words in html string
 * -------------------------------------------------------------
 */
function smarty_modifier_wordCount($string)
{
	return \neon\core\helpers\Str::countWords(strip_tags($string));
}