<?php

use yii\helpers\ArrayHelper;

function smarty_modifier_translateDataToChartJs($chartData = [], $chartConfig = []) {
	$chartTypes = [
		'line' => 'line',
		'verticalBar' => 'bar',
		'horizontalBar' => 'horizontalBar',
		'spline' => 'line',
		'doughnut' => 'doughnut',
		'pie' => 'pie'
	];
	$chart = [];
	$chart['data'] = [];
	$chart['options'] = [];


	// Chart title
	if (!empty($chartConfig['title'])) {
		$chart['options']['title']['display'] = true;
		$chart['options']['title']['text'] = $chartConfig['title']['text'];
		$chart['options']['title']['position'] = !empty($chartConfig['title']['position']) ? $chartConfig['title']['position'] : 'top';

		// chart title font size
		if (!empty($chartConfig['title']['fontSize']))
			$chart['options']['title']['fontSize'] = $chartConfig['title']['fontSize'];

		// chart title font color
		if (!empty($chartConfig['title']['fontColor']))
			$chart['options']['title']['fontColor'] = $chartConfig['title']['fontColor'];

		// chart title font family
		if (!empty($chartConfig['title']['fontFamily']))
			$chart['options']['title']['fontFamily'] = $chartConfig['title']['fontFamily'];

	}

	// Chart X Axis
	if (!empty($chartConfig['xAxis'])) {
		// X Axis labels
		if (!empty($chartConfig['xAxis']['labels'])) {
			$chart['data']['labels'] = !empty($chartConfig['xAxis']['labels']) ? $chartConfig['xAxis']['labels'] : [];
		}

		// X Axis title
		// ticks for Y Axis
		$ticks['beginAtZero'] = (isset($chartConfig['xAxis']['startAtZero']) && $chartConfig['xAxis']['startAtZero'] === false) ? false : true;
		if (!empty($chartConfig['yAxis']['tickInterval'])) {
			$ticks['stepSize'] = $chartConfig['yAxis']['tickInterval'];
		}
		$chartXAxis = [
			'scaleLabel' => [
				'display' => true,
				'labelString' => !empty($chartConfig['xAxis']['title']) ? $chartConfig['xAxis']['title'] : ''
			],
			'position' => (isset($chartConfig['xAxis']['opposite']) && $chartConfig['xAxis']['opposite'] === true) ? 'top' : 'bottom',
			'gridLines' => [
				'display' =>  (isset($chartConfig['xAxis']['gridLines']) && $chartConfig['xAxis']['gridLines'] === false) ? false : true,
			],
			'ticks' => [
				'beginAtZero' => (isset($chartConfig['xAxis']['startAtZero']) && $chartConfig['xAxis']['startAtZero'] === false) ? false : true
			],
			'stacked' => (isset($chartData['stacked']) && $chartData['stacked'] === true) ? true : false
		];
		if (isset($chartConfig['options']['options']['scales']['xAxes'][0])) {
			$mergedXAxis = array_merge($chartXAxis, $chartConfig['options']['options']['scales']['xAxes'][0]);
			unset($chartConfig['options']['options']['scales']['xAxes']);
		}
		$chart['options']['scales']['xAxes'][] = isset($mergedXAxis) ? $mergedXAxis : $chartXAxis;
	}

	// Chart Y Axis
	if (!empty($chartConfig['yAxis'])) {
		// Y Axis labels
		if (!empty($chartConfig['yAxis']['labels'])) {
			$chart['data']['labels'] = !empty($chartConfig['yAxis']['labels']) ? $chartConfig['yAxis']['labels'] : [];
		}

		// ticks for Y Axis
		$ticks['beginAtZero'] = (isset($chartConfig['xAxis']['startAtZero']) && $chartConfig['xAxis']['startAtZero'] === false) ? false : true;
		if (!empty($chartConfig['yAxis']['tickInterval'])) {
			$ticks['stepSize'] = $chartConfig['yAxis']['tickInterval'];
		}
		$chartYAxis = [
			'scaleLabel' => [
				'display' => true,
				'labelString' => !empty($chartConfig['yAxis']['title']) ? $chartConfig['yAxis']['title'] : ''
			],
			'position' => (isset($chartConfig['yAxis']['opposite']) && $chartConfig['yAxis']['opposite'] === true) ? 'right' : 'left',
			'gridLines' => [
				'display' =>  (isset($chartConfig['xAxis']['gridLines']) && $chartConfig['xAxis']['gridLines'] === false) ? false : true,
			],
			'ticks' => $ticks,
			'stacked' => (isset($chartData['stacked']) && $chartData['stacked'] === true) ? true : false
		];
		if (isset($chartConfig['options']['options']['scales']['yAxes'][0])) {
			$mergedYAxis = array_merge($chartYAxis, $chartConfig['options']['options']['scales']['yAxes'][0]);
			unset($chartConfig['options']['options']['scales']['yAxes']);
		}
		$chart['options']['scales']['yAxes'][] = isset($mergedYAxis) ? $mergedYAxis : $chartYAxis;
	}

	// Chart Data
	if (!empty($chartData['data'])) {
		$chart['data']['datasets'] = [];
		foreach ($chartData['data'] as $key => $data) {
			if ($key === 0) {
				$chart['type'] = $chartTypes[$data['chartType']];
			}
			$suppliedData = [
				'type' => $chartTypes[$data['chartType']],
				'label' => !empty($data['name']) ? $data['name'] : 'Label',
				'data' => $data['values'],
				'backgroundColor' => $data['color'],
				'borderColor' => !empty($data['borderColor']) ? $data['borderColor'] : 'none',
			];
			unset($data['chartType'], $data['color'], $data['borderColor'], $data['name'], $data['values']);
			$chart['data']['datasets'][] = array_merge($suppliedData, $data);
		}
	}

	// Chart legend
	if (!empty($chartConfig['legend'])) {
		$chart['options']['legend']['display'] = (isset($chartConfig['legend']['display']) && $chartConfig['legend']['display'] === true) ? true : false;
		$chart['options']['legend']['position'] = (isset($chartConfig['legend']['position'])) ? $chartConfig['legend']['position'] : 'top';
	}

	// Chart tooltip
	$chart['tooltip']['enabled'] = isset($chartData['tooltip']) ? $chartData['tooltip'] : true;

	// Chart datalabels
	$chart['options']['plugins']['datalabels'] = [
		'display' => (isset($chartData['dataLabels']['display']) && $chartData['dataLabels']['display'] == true) ? true : false
	];

	if (!empty($chartData['dataLabels']['position'])) {
		$chart['options']['plugins']['datalabels'] = [
			'anchor' => $chartData['dataLabels']['position'],
			'align' => 'end'
		];
	}

	if (!empty($chartConfig['options']))
		$chart = ArrayHelper::merge($chart, $chartConfig['options']);
	return $chart;
}