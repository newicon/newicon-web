## Wall 
This is the base wall component.
It uses jquery masonry to allow you to 'pin' items to a wall


### Usage 

#### Configuration

To configure the wall the following parameters are available:

```$items``` - an array of items to 'pin' to the wall. Typically this will be smarty captured content

```$columns``` - the number of columns to use. Defaults to 3.

```$masonryOptions``` - any options exposed by the jQuery masonry plugin that you wish to use
                    - provide the masonryOptions as an array [
                        'masonry plugin option name' => 'masonry plugin option value', ...
                    ]

By default the wall uses percentage widths to layout its content
To disable this you must explicitly set the option via ```$masonryOptions. i.e provide
```$masonryOptions = ['percentPosition' => false] ```

```modifier``` a css class modifier for styling the wall

```debugBorders``` - set this flag to true to see red borders around each wall item for debugging

The wall currently only supports items of the same width =- i.e if you set ```$columns = 2 ``` every
item in the wall will have ```width: 50%```


#### Examples

Assuming an array of data suitable for building cards  you could pin them to a wall like so:

```smarty
{foreach from=$cards item=$card}
	{capture append="wallCards"}
		{card card=$cards}
	{/capture}
{/foreach}

{ * pin the cars to the wall - four per row *}
{wall items=$wallCards columns=4}

```

#### Themeing

You can theme the wall by supplying a modifier class.

```smarty
    {wall modifier="myFancywall" items=$myItems}
```

```html
    <style>
        .wall_myFancywall {
            /* apply styles to wall*/
        }

        .wall_myFancywall .wall_itemWrapper {
            /* apply styles to the outer div containing the wall items */
        }

        .wall_myFancywall .wall_item {
            /* apply styles to the inner div containing the wall items */
        }
    </style>
```

### Extending

you can extend the wall by overriding the markup surrounding wall items

```smarty
    {extends file="wall.tpl"}

    {block "wallItem"}
        {*
            New markup here. This markup will be rendered once per item sent to the wall. Each item sent to the wall is exposed as $item.
        *}
    {/block}

```


### Dependancies

```
foundation
```