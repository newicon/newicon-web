<?php

use neon\core\helpers\Hash;


/**
 * smarty_function_uuid
 * Generates a UUID
 * return string $UUID
 */
function smarty_function_uuid($params, $template) {
	return Hash::uuid64();
}