<?php

/**
 * Truncate a html string without breaking the html
 * @return string
 */
function smarty_modifier_truncateHtml($string, $length=200) {
	return \neon\core\helpers\Str::truncate($string, $length);
}