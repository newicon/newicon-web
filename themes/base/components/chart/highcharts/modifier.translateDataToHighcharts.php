<?php

use yii\helpers\ArrayHelper;

function smarty_modifier_translateDataToHighcharts($chartData = [], $chartConfig = [])
{
	// do something here
	$chart = [];

	$chartTypes = [
		'line' => 'line',
		'verticalBar' => 'column',
		'horizontalBar' => 'bar',
		'spline' => 'spline'
	];
	if (isset($chartData['data'][0])) {
		$chartType = $chartTypes[$chartData['data'][0]['chartType']];
	}

	// Chart type
	$chart['chart']['type'] = $chartType;
	if ($chartType === 'column') {
		$stackColumn = 'column';
	} else {
		$stackColumn = 'series';
	}

	// Credits
	$chart['credits']['enabled'] = false;

	// Chart title
	$chart['title']['text'] = !empty($chartConfig['title']['text']) ? $chartConfig['title']['text'] : null;
	$chart['title']['verticalAlign'] = !empty($chartConfig['title']['position']) ? $chartConfig['title']['position'] : 'top';

	// chart title font size
	if (!empty($chartConfig['title']['fontSize']))
		$chart['title']['style']['fontSize'] = $chartConfig['title']['fontSize'];

	// chart title font color
	if (!empty($chartConfig['title']['fontColor']))
		$chart['title']['style']['color'] = $chartConfig['title']['fontColor'];

	if (!empty($chartConfig['title']['fontFamily']))
		$chart['title']['style']['fontFamily'] = $chartConfig['title']['fontFamily'];


	// Chart X Axis
	// X Axis title
	$chart['xAxis']['title']['text'] = isset($chartConfig['xAxis']['title']) ? $chartConfig['xAxis']['title'] : null;
	if (!empty($chartConfig['xAxis'])) {
		// X Axis labels
		if (!empty($chartConfig['xAxis']['labels'])) {
			$chart['xAxis']['categories'] = $chartConfig['xAxis']['labels'];
		}

		// X Axis position
		if (!empty($chartConfig['xAxis']['opposite'])) {
			$chart['xAxis']['opposite'] = $chartConfig['xAxis']['opposite'];
		}

		// X Axis tick interval
		if (!empty($chartConfig['xAxis']['tickInterval'])) {
			$chart['xAxis']['tickInterval'] = $chartConfig['xAxis']['tickInterval'];
		}
	}

	// Chart Y Axis
	// Y Axis title
	$chart['yAxis']['title']['text'] = isset($chartConfig['yAxis']['title']) ? $chartConfig['yAxis']['title'] : null;
	if (!empty($chartConfig['yAxis'])) {
		// Y Axis labels
		if (!empty($chartConfig['yAxis']['labels'])) {
			$chart['yAxis']['categories'] = $chartConfig['yAxis']['labels'];
		}

		// Y Axis position
		if (!empty($chartConfig['yAxis']['opposite'])) {
			$chart['yAxis']['opposite'] = $chartConfig['yAxis']['opposite'];
		}

		// Y Axis tick interval
		if (!empty($chartConfig['yAxis']['tickInterval'])) {
			$chart['yAxis']['tickInterval'] = $chartConfig['yAxis']['tickInterval'];
		}
	}

	// Chart Data
	if (!empty($chartData['data'])) {
		$chart['series'] = [];
		foreach ($chartData['data'] as $key => $data) {
			$chart['series'][] = [
				'type' => $chartTypes[$data['chartType']],
				'name' => !empty($data['name']) ? $data['name'] : 'Label',
				'data' => $data['values'],
				'color' => $data['color']
			];
		}

		// Chart stack
		if (isset($stackColumn) && !empty($chartData['stacked']) && $chartData['stacked'] === true) {
			$chart['plotOptions'][$stackColumn]['stacking'] = 'normal';
		}
	}

	// Chart legend
	if (!empty($chartConfig['legend'])) {
		$chart['legend']['enabled'] = (isset($chartConfig['legend']['display']) && $chartConfig['legend']['display'] === true) ? true : false;
		$chart['legend']['verticalAlign'] = (isset($chartConfig['legend']['position'])) ? $chartConfig['legend']['position'] : 'top';
	}

	// Chart tooltip
	$chart['tooltip']['enabled'] = isset($chartData['tooltip']) ? $chartData['tooltip'] : true;

	// Chart datalabels
	if (!empty($chartData['dataLabels'])) {
		$chart['plotOptions'][$chartType]['dataLabels']['enabled'] = (isset($chartData['dataLabels']['display']) && $chartData['dataLabels']['display'] == true) ? true : false;

		if (!empty($chartData['dataLabels']['position'])) {
			switch ($chartData['dataLabels']['position']) {
				case 'start':
					$chart['plotOptions'][$chartType]['dataLabels']['align'] = 'left';
					$chart['plotOptions'][$chartType]['dataLabels']['inside'] = true;
					break;
				case 'center':
					$chart['plotOptions'][$chartType]['dataLabels']['align'] = 'center';
					$chart['plotOptions'][$chartType]['dataLabels']['inside'] = true;
					break;
				default:
					$chart['plotOptions'][$chartType]['dataLabels']['align'] = 'left';
					break;
			}
		}
	}

	if (!empty($chartConfig['options'])) {
		$chart = ArrayHelper::merge($chart, $chartConfig['options']);
	}

	return $chart;
}