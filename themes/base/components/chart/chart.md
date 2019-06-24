Base chart componet
Usage - extend this in your theme and redifine $library inside {block 'library'} {/block} to point at your charting library of choice

Charts expect - old:
	'id' (optional)
	'backgroundColor' (optional) - string a class providing a background color
	'extraClass' (optional) = string, white space seperated set of additional classes
		to apply to the elements DOM base
	'yAxes' => ['hide', 'hideGridLines', 'startAtZero'] - array of strings.
		pass if you want the described property eg yAxes['hide'] will hide the yAxis on the graph
	'xAxes' => ['display', 'gridLines', 'startAtZero'] - array of strings. pass if you want the described property
	'title' =>  [key => value] - all title config ie ['color' => '#fffff', fontSize => 24]
	'legend' => ['string top/bottom/left/right'] - configure the legend position
	'annotations' => ['key' => 'value'] - the style properties of labels drawn over the chart
	'chartData' (required) an array of chart data for drawing the chart.
		This is a generic neon format. It is this components job to convert the
		data into the correct format for your chosen library. This includes:

		'stacked' => true / false - if you have multiple data sets and would like to stack them
		'chartType' => the type of all charts if not set inside the dataSet
		'data' => the actual data to draw the graph. This should be supplied in the following format:
			[
				'dataset name' => [
					'chartType' => the type of chart e.g. bar, line
					'x axis value or label' => ['value' => '', 'mainColor'=>'',  'secondaryColor' => ''], where 'value' is the y-axis data value, and mainColor and secondaryColor are optional colours for drawing the datapoint /line/bar etc
					...
				]
				'dataset name' => [
					'chartType' => the type of chart e.g. bar, line
					'x axis value or label' => ['value' => '', 'mainColor'=>'',  'secondaryColor' => ''],
					...
				],
				...
			]


	To ease the task of configuring chart data Formatters are provided (or should be supplied) - so that data can be pipped like so
	{$chartData = $chartData|barChartOptions|setTitle:'Probability Weighted Hectares by 2020'|stackedChart}

Check for chart demo in neon base theme dev for examples.
For chartjs, you can specify canvas width and height in options as shown below
Charts expect - new:
	id - optional,
	'extraClass' (optional) - string, white space seperated set of additional classes to apply to the elements DOM base
	'title' - [
        text => text for the title (chart title)
        position => top|right|bottom|left
        color => color for the title
        fontSize => fontsize for the title
    ]
    'xAxis' - [
        title => 'Title for x axis',
        labels => [array of labels] e.g. ['Jan', 'Feb', 'Mar']. `Do not add this if data will be displayed on this axis`
        opposite => true|false e.g if you want x Axis to display on top
        gridLines => true|false - show/hide gridlines
        startAtZero => true|false - Add this property if applicable i.e. if data is numerical
        tickInterval => number
    ],
    'yAxis' - [
        title => 'Title for y axis',
        labels => [array of labels] e.g. ['Jan', 'Feb', 'Mar'] `Do not add this if data will be displayed on this axis`
        opposite => true|false e.g if you want y Axis to be displayed to the right
        gridLines => true|false - show/hide gridlines
        startAtZero => true|false - Add this property if applicable i.e. if data is numerical
        tickInterval => number
    ]
    legend => [
        position => '', top|bottom
        display => boolean  
    ]
    chartData - [
        tooltip - true/false
        dataLabels => [
            display => true/false,
            position => start/center/end
        ]
        stacked => true / false
        data => [
            [
                chartType => line|verticalBar|horizontalBar|spline,
                name => 'name that will appear on legend'
                color => hex code for a color (this color will be applied for line, bars)
                values => [] // array of data e.g [2, 3, 4]
                borderColor => optional
            ],
             [
                chartType => line|pie|verticalBar|horizontalBar|spline,
                name => 'name that will appear on legend'
                color => hex code for a color (this color will be applied for line, bars)
                values => [] // array of data e.g [2, 3, 4]
                borderColor => optional
            ]
        ]
    ]
	options - [
        'backgroundColor' (optional) - string a class providing a background color
    ]
    
    options passed in options array will be merged with the final chart configuration. The format inside options will be specific to library.
    For e.g. In chart js, you can use options as follows (//www.chartjs.org/docs):
    
    options = [
        'options' => [
            'scales' => [
                'xAxes' => [
                    'ticks' => [
                        'padding' => 10,
                        'fontSize' => 20
                    ]
                ]
            ]
        ],
        'canvasWidth' => 200
        'canvasHeight => 100
    ]
    
    For e.g. In highcharts, you can use options as follows (//api.highcharts.com/highcharts):
    
    options = [
        'credits' => [
            'enabled' => false
        ],
        'tooltip' => [
            'enabled' => false
        ]
    ]