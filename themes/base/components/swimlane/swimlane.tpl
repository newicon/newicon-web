{$layout = $layout|default:'vertical'}
{$containerId = $config.id|default:'swimlane_container'}
{$cardType=((!empty($cardType))?$cardType:'')}
{$scrollModifier = ((empty($noScroll))?'m_scroll':'')}

{block "swimlaneContainer"}
	<div class="swimlane_container m_{$layout} {$scrollModifier}" id="{$containerId}">
		<div class="swimlane_containerInner">
			{block "swimlane"}
				{if isset($lanes) && count($lanes) > 0}
					{foreach from=$lanes item=$lane key=$l}
						<div class="swimlane m_{$layout}">
							<div class="swimlane_inner">
								{* Start Swimlane toggle button *}
								{block "swimlaneToggle"}
									{if isset($config.toggle)}
										<button class="swimlane_toggle collapse_btn">
											{if isset($config.toggle.collapseText)}
												{$config.toggle.collapseText}
											{else if isset($config.toggle.collapseIcon)}
												<img src={$config.toggle.collapseIcon} class="swimlane_toggleIcon collapse_icon" />
											{/if}
										</button>
										<button class="swimlane_toggle expand_btn">
											{if isset($config.toggle.expandText)}
												{$config.toggle.expandText}
											{else if isset($config.toggle.expandIcon)}
												<img src={$config.toggle.expandIcon} class="swimlane_toggleIcon expand_icon" />
											{/if}
										</button>
									{/if}
								{/block}
								{* End Swimlane toggle button *}
								
								{* Start Swimlane filter dropdown *}
								{block "swimlaneFilter"}
									{if isset($config.filter) || isset($lane.filter)}
										<div class="swimlane_filter">
											<div class="dropdown swimlane_filterDropdown">
												<a class="btn btn-default dropdown-toggle swimlane_filterBtn" type="button" data-toggle="dropdown">
													{if isset($config.filter.text)}
														<span class="swimlane_filterText">{$config.filter.text}</span>
														<span class="caret"></span>
													{else if isset($config.filter.icon)}
														<img src={$config.filter.icon} class="swimlane_filterIcon" />
													{/if}
												</a>
												{* Start Render dropdown list *}
												<ul class="dropdown-menu swimlane_filterList">
													{$configFilterOptions = $config.filter.options|default:[]}
													{$filterOptions = $lane.filter.options|default:$configFilterOptions}
													{if isset($filterOptions) && count($filterOptions) > 0}
														{foreach from=$filterOptions item=$option}
															<li class="swimlane_filterOption">
																<a href="javascript:void(0)" class="swimlane_filterVal" data-filter={$option.attribute} data-option={$option.value}>
																	{$option.label}
																</a>
															</li>
														{/foreach}
													{/if}
												</ul>
												{* End Render dropdown list *}
											</div>
										</div>
									{/if}
									{* End Dropdown filter *}
								{/block}
								{* End Swimlane filter dropdown *}
											
								{* Start Swimlane Header *}
								{block "swimlaneHeader"}
									{if isset($lane.header)}
										<div class="swimlane_header">
											{if isset($lane.header.title)}<div class="header_title">{$lane.header.title}</div>{/if}
											{if isset($lane.header.subtitle)}<div class="header_subtitle">{$lane.header.subtitle}</div>{/if}
										</div>
									{/if}
								{/block}
								{* End Swimlane Header *}
								
								{* Start Swimlane Content *}
								{block "swimlaneContent"}
									<div class="swimlane_content">
										{if isset($lane.cards)}
											{foreach $lane.cards as $card}
												<div class="swimlaneCard">
													{$card.type=((isset($card.type))?$card.type:$cardType)}
													{$template="card{$card.type|ucfirst}"}
													{if {templateExists template=$template}}
														{widget type=$template card=$card}
													{else}
														{card card=$card}
													{/if}
												</div>
											{/foreach}
										{else if isset($config.noCards)}
											{block "swimlaneNoCards"}
												<div class="swimlane_noCards">{$config.noCards}</div>
											{/block}
										{/if} 
									</div>
								{/block}
								{* End Swimlane Content *}
								
								{* Start Swimlane Footer *}
								{block "swimlaneFooter"}
									{if isset($lane.footer)}
										<div class="swimlane_footer">
											{$lane.footer|default:''}
										</div>
									{/if}
								{/block}
								{* End Swimlane Footer *}
							</div>
						</div>
					{/foreach}
				{else if isset($config.noLanes)}
					{block "swimlaneNoLanes"}
						<div class="swimlane_noLanes">{$config.noLanes}</div>
					{/block}
				{/if}
			{/block}
		</div>
	</div>
	{block "swimlaneJsInit"}
		{if !empty($config.js)}
			<script type="text/javascript">
				$(document).ready(function () {
					var options = {$config.js.init|default:"''"};
					$("#{$containerId} .swimlane").neonSwimlane(options);
				});
			</script>
		{/if}
	{/block}
{/block}
