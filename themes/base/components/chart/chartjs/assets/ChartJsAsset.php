<?php

namespace root\themes\base\components\chart\chartjs\assets;

use yii\web\AssetBundle;
/**
 */
class ChartJsAsset extends AssetBundle
{
	public $sourcePath = __DIR__;

	public $js = [
		'chartJs/chart/dist/Chart.bundle.js',
		'chartJs/plugins/chartjs-plugin-datalabels.min.js',
	];
	public $depends = [

	];

}