{* Translate data to ChartJs Format *}
{$highchartPluginOptions = $chartData|translateDataToHighcharts:$chartConfig}

{* Format it to JSON *}
{$jsonFormattedChart = $highchartPluginOptions|json_encode}

<div id="{$id}" class="chart neon-highcharts {$extraClass|default:''}"></div>

<script type="text/javascript">
	$(document).ready(function() {
		Highcharts.chart("{$id}", {$jsonFormattedChart})
	});
</script>
