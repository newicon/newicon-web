{* default values *}
{$id={uuid}}
{$pluginClass=((isset($pluginClass)) ? $pluginClass : 'flexslider')}
{$container=((isset($container)) ? $container : null)}
{$initOnEvent = ((isset($initOnEvent))?$initOnEvent : 'load' ) }
{$slideType=((!empty($slideType))?$slideType:'')}

{if empty($pluginType)}
	{$pluginType='flexslider'}
	{$pluginClass='flexslider'}
	{$pluginSlides='slides'}
	{$controls=((isset($controls)) ? $controls :['iterator'=>'chevron'])}
{/if}

{$slidesClass = ((isset($slidesClass))?$slidesClass : '' ) }
{$pluginOptions = ((isset($pluginOptions))?$pluginOptions : [] ) }
{$defaultPluginOptions=['selector' => '.slides > li', 'controlsContainer' => '.carousel_controls']}
{assign 'pluginOptions' $defaultPluginOptions|array_merge:$pluginOptions}

{* output the carousel *}
<div class="{bemMix block='carousel' container=$container}" id="{$id}">
	{block "carouselSlidesContainer"}
		<div class="carousel_slidesContainer {$pluginClass}">
			<ul class="slides {$slidesClass}">
				{$labels = []}
				{foreach from=$slides item=$slide name=slidesLoop}
					{if isset($slide.label)}
						{$labels[] = $slide.label}
					{/if}
					{block "carouselSlide"}
						<li class="carousel_slide" id="{$id}-slide-{$smarty.foreach.slidesLoop.index}">
							{$slide.type=((isset($slide.type))?$slide.type:$slideType)}
							{if (!empty($slide.type))}
								{widget type="slide{$slide.type|ucfirst}" slide=$slide}
							{else}
								{slide slide=$slide}
							{/if}
						</li>
					{/block}
				{/foreach}
			</ul>
		</div>
	{/block}

	{if (!empty($controls))}
		{block "carouselControls"}
			<div class="carousel_controls">
				{if isset($controls.iterator)}
					{block "carouselControlsIterator"}
						<div class="carousel_controlsIterator">
							{if ($controls.iterator == 'chevron')}
								{block "carouselControlsIteratorChevron"}
									{$pluginOptions['customDirectionNav'] = "#{$id} .carousel_controlsIteratorChevron a"}
									<div class="carousel_controlsIteratorChevron">
										<a href="#" class="flex flex-prev"><i class="fa fa-chevron-left" aria-hidden="true"></i></a>
										<a href="#" class="flex flex-next"><i class="fa fa-chevron-right" aria-hidden="true"></i></a>
									</div>
								{/block}
							{else}
								{block "carouselControlsIterator{$controls.iterator|ucfirst}"}Override carouselControlsIterator{$controls.iterator|ucfirst} to specify this{/block}
							{/if}
						</div>
					{/block}
				{/if}
				{if isset($controls.goto)}
					{block "carouselControlsGoto"}
						<div class="carousel_controlsGoto">
							{if ($controls.goto == 'default')}
								{block "carouselControlsGotoDefault"}{/block}
							{else}
								{block "carouselControlsGoto{$controls.iterator|ucfirst}"}{/block}
							{/if}
						</div>
					{/block}
				{else}
					{block "carouselControlsGotoNone"}
						{$pluginOptions['controlNav']=false}
					{/block}
				{/if}
			</div>
		{/block}
	{/if}

	<script type="text/javascript">
		var newiconCarouselConfigs = newiconCarouselConfigs || [];
		newiconCarouselConfigs.push({
			initOn: "{$initOnEvent}",
			id:"{$id}",
			type:"{$pluginType}",
			configuration:{$pluginOptions|@json_encode}
		});
	</script>
</div>