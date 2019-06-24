## Swimlane
This is the base swimlane component.  

### Usage
It is used to create a lane(s) (vertical columns/horizontal rows) with header, footer and content. 
Each lane will have:
1) A header with title and sub-title.
2) A footer - this can contain text or component
3) Content - this will be collection of cards
4) A filter dropdown - this will filter the cards in the content area
5) A toggle button - this is used to collapse/expand the lane

#### Configuration

To configure the swimlane, the following parameters are available:

`$layout` – The layout of the swimlane. Should be either - 'horizontal'|'vertical' - defaults to vertical if not supplied.

`$lanes` – This contains the data for cards. Should be array of cards. Check for the format below.

`$config` – This will contain the configuration for the swimlane. Should be Array. Check for the format below. **Must be supplied**

The formats for the parameters:

`filter`
[
	text => ''
	icon => icon for filter
	options => [
		0 => [
			attribute => theFieldName (the one used with lanes data)
			value => The value for the dropdown option,
			label => The Label for dropdown option
		]
	]
]

`lanes` - Array of
[
	header => [
		title => 'The Title for the swimlane',
		subtitle => 'The Sub title for the swimlane'
	]
	cards => Check the 'Cards' Api for details. Parameters for filtering should be passed into the card.attributes.data array as key=>value pairs and can be accessed using data-card-key
	cardType => if all cards are of the same type you can supply it here
	footer => text|component,
	filter => Check the format for filter format above
]

`config`
[
	id => The id for the swimlanes container (required)
	filter => Check the format for filter format above,
	toggle => [
		collapseText: '-',
		collapseIcon: 'burger',
		expandText: '+',
		expandIcon: 'burger'
	],
	messages => [
		noLanes => The placeholder text when there are no lanes to display,
		noCards => The Placeholder text when there are no cards to display for the swimlane
	],
	js => [
		init => js init params (json encoded)
	]
],
`noScroll` - set to true if no horizontal scroll is required for the vertical swimlane


#### Examples

Create vertical swimlane(s):

```smarty
{swimlane lanes=$lanes config=$config}
```

Create horizontal swimlane(s):

```smarty
{swimlane layout='horizontal' lanes=$lanes config=$config}
```


#### Themeing
Swimlanes can be themed by overriding the classes already applied for each and every element.

### Extending

You can create your own components to extend and modify the swimlane.
An extension should ne named using the following convention: ```swimlane<MyNewSwimlane>.tpl```
An extension has the following layout in smarty 

```smarty

{extends "components/swimlane/swimlane.tpl"}

{* do this if you want to overide the swimlane *}
{block swimlane}
	{* New markup here *}
{block}

{* do this if you want to overide the swimlane toggle button*}
{block swimlaneToggle}
	{* New markup here *}
{block}

{* do this if you want to overide the swimlane filter dropdown*}
{block swimlaneFilter}
	{* New markup here *}
{block}

{* do this if you want to overide the swimlane header section*}
{block swimlaneHeader}
	{* New markup here *}
{block}

{* do this if you want to overide the swimlane content*}
{block swimlaneContent}
	{* New markup here *}
{block}

{* do this if you want to overide the swimlane no lanes message block*}
{block swimlaneNoLanes}
	{* New markup here *}
{block}

{* do this if you want to overide the swimlane no cards message block*}
{block swimlaneNoCards}
	{* New markup here *}
{block}

{* do this if you want to overide the swimlane footer *}
{block swimlaneFooter}
	{* New markup here *}
{block}

```
### JS

The Filter and toggle functionality is triggered by the jQuery.

By default, the swimlane will be initialised with the default options.
e.g 

The default options are:
laneSelector: '.swimlane'  - default selector for swimlane
toggleSelector: '.swimlane_toggle' - default selector for toggle button
filterSelector: '.swimlane_filterVal' - default selector for filter dropdown
cardWrapper: '.swimlaneCard' - default selector for swimlane card 
resetFilterAttr: {
	name: 'all',
	value: 'all'
},
dropdownTextSelector: '.swimlane_filterText' - default selector for the dropdown text
beforeFilter: '' - js function you need to execute before the cards are filtered
afterFilter: '' - js function you need to execute after the cards are filtered

you can overide the block of js by using
{block "swimlaneJsInit"}

{/block}

You can initialize multiple swimlane containers by using the foll. code:
$("#swimlane_container1 .swimlane, #swimlane_container2 .swimlane").neonSwimlane();






