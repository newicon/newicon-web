{requireAsset name='root\themes\base\components\chart\chartjs\assets\ChartJsAsset'}

{* Translate data to ChartJs Format *}
{$chartPluginOptions = $chartData|translateDataToChartJs:$chartConfig}

{* Format it to JSON *}
{$jsonFormattedChart = $chartPluginOptions|json_encode}

<div class="chart neon-chartjs {$extraClass|default:''}" data-id="{$id}">
	<canvas id="{$id}" width="{$chartConfig.options.canvasWidth|default:false}" height="{$chartConfig.options.canvasHeight|default:false}"></canvas>
</div>

<script type="text/javascript">
	$(document).ready(function() {
		var neonCharts = [];
		neonCharts["{$id}"] = new Chart(document.getElementById("{$id}").getContext('2d'), {$jsonFormattedChart});
	});
</script>
