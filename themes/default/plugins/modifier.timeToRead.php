<?php
use \neon\core\helpers\Arr;

/*
 * Smarty plugin
 * -------------------------------------------------------------
 * File:     modifier.timeToRead.php
 * Type:     modifier
 * Name:     timeToRead
 * Purpose:  return a number representing the number of minutes the string takes to read
 * -------------------------------------------------------------
 */
function smarty_modifier_timeToRead($string)
{
	$wordCount = \neon\core\helpers\Str::countWords(strip_tags($string));
	$averageWordsPerMinute = 265;
	$mins = $wordCount / $averageWordsPerMinute;
	return round($mins);
}