{$library = $library|default:'chartJs'}

{* Check input parameters *}
{$hasErrors=false}
{if !isset($chartData['data'])}
	You need to pass in some chart data
	{$hasErrors = true}
{/if}


{* Set defaults *}
{$backgroundColor = $backgroundColor|default:''}
{$extraClass = $extraClass|default:''}
{$id = $id|default:{uuid}}

{if (!$hasErrors)}
	{* Chart configuration *}
	{$chartConfig = [
		'title' => $title|default:false,
		'xAxis' => $xAxis|default:false,
		'yAxis' => $yAxis|default:false,
		'legend' => $legend|default:false,
		'options' => $options|default:false
	]}
	{widget type=$library id=$id|default:'' chartData=$chartData chartConfig=$chartConfig extraClass=$extraClass}

{/if}