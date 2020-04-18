<?php

/**
 * Get the theme styles
 * @return string
 */
function smarty_function_slug($params, $template) {
	neon()->cms->getPage()->getUrl();
}