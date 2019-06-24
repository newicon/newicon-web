<?php

/**
 * smarty_function_flattenTagAttributes
 * Flattens a set of HTML tag attributes returning them as a single
 * string to be added to a tag
 *
 * @param array $params
 *   'attributes'=> an array of [
 *	   'data' => [] an array of key value pairs that will be returned as data-$key=$value
 *     'html' => [] an array of key value pairs returned as $key=>$value
 *   ]
 *   'dataPrefix' => if set extend the data- prefix to data-{$dataPrefix}
 *   'serialise => If value is an array, use this serialise method.
 *     Options available are json [default] or ... er ... that's it for now.
 *
 * @return string
 */
function smarty_function_flattenTagAttributes($params, $template) {
	$flattenedAttributes = '';
	$dataPrefix = 'data-'.(!empty($params['dataPrefix'])?($params['dataPrefix'].'-'):'');
	$serialise = (!empty($params['serialise']) ? $params['serialise'] : 'json');
	if (!empty($params['attributes'])) {
		foreach ($params['attributes'] as $category => $attributes) {
			$prefix = '';
			switch ($category) {
				case 'data': $prefix=$dataPrefix; break;
				case 'html': $prefix=''; break;
				default:
					throw new \Exception("Unknown attribute category '$category'. Params passed in were ".print_r($params,true));
				break;
			}
			$atts = [];
			foreach ($attributes as $key => $value) {
				if (is_array($value)) {
					switch ($serialise) {
						case 'json': default:
							$atts[] = "$prefix$key=".json_encode($value);
						break;
					}
				} else {
					$atts[] = "$prefix$key=\"$value\"";
				}
			}
			$flattenedAttributes = ' '.implode($atts," ");
		}
	}
	return $flattenedAttributes;
}