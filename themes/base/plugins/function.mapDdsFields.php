<?php

/**
 * smarty_function_mapDdsFields
 * Maps a set of Dds fields from the database names to whatever is passed in via @see map
 * 
 * @param array $params
 *   'source ' => the source dds data
 *   'map' => an array of source field to sink field names 
 *     e.g. 'name'=>'header' for a DDs field of name going to header
 *   'assign' => the name of the template variable to return the changed array to    
 *.  'additionalFields' => array of additional fields and their values to set in the new array e.g 'colour' => 'square' assigning the colour modifier to the string 'square'
 * @param object $template  the template object
 */
function smarty_function_mapDdsFields($params, $template) {

	if (!(isset($params['source']) && isset($params['map']) && isset($params['assign'])))
		throw new \InvalidParametersException("mapDdsFields - you need to supply a source, map and assign parameter. You passed in ".print_r($params,true));

	$source = $params['source']['data'];
	if (empty($source)) {
		$template->assign($params['assign'],null);
		return;
	}
	$map = $params['map'];
	$sink = [];
	$additionalFields = isset($params['additionalFields']) ? $params['additionalFields'] : [];
	foreach ($source as $i => $row) {
		foreach ($row as $key => $value) {
			if (isset($map[$key]))
				$sink[$i][$map[$key]] = $value;
			else
				$sink[$i][$key] = $value;
		}
		foreach($additionalFields as $additionalField => $value) {
			if (!isset($sink[$i][$additionalField])) // don't override
				$sink[$i][$additionalField] = $value;
		}
	}
	$template->assign($params['assign'], $sink);

}