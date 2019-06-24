{$hasErrors=false}

{if empty($config)}
	You need to supply configuration for the map
	{$hasErrors=true}
{/if}

{* Set default id if not set *}
{$id = $id|default:{uuid}}
{$mapData = $mapData|default:[]}

{if !$hasErrors}
	{* Translate data to Google map Format *}
	{$mapOptions = [
		'config' => $config,
		'mapData' => $mapData|default:false
	]}

	{$jsonFormattedMap = $mapOptions|json_encode}

	<div id="{$id}" class="map" data-id="{$id}">

	</div>
{/if}
{block "googleMapJsInit"}
	<script type="text/javascript">
		$(document).ready(function () {
			$("#{$id}").neonGoogleMap({$jsonFormattedMap});
		});
	</script>
{/block}