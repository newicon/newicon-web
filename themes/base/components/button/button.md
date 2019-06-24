## Button 
This is the base button component.  

### Usage

#### Configuration

To configure the button the following parameters are available:

`$tag` - by default a button uses an `<a>` tag. If you want to change this set the $tag parameter to a
valid html tag name. e.g `$tag="button"`, `$tag="div"`.

`$id` - an identifier for the button

`$size` - the size of a button is determined by the font size. By default the button uses the class `fontBase`.
To change the size set the `$size` parameter 

```
xxSmall
xSmall
small
Large
xLarge
xxLarge
```

`$action` - sets the button's href attribute. If required set this parameter to a valid url.

`$color` - the color of the button is set by applying an additional class of the form `bgGradOnHoverTheme<SpecificName>`.
This applies a background colour together with a gradient effect on hovering over the button. By default the button uses
`bgGradOnHoverThemeGreyMedium`.

The foundation component exposes the following colours automatically 

```
dark, primary, mainActive, secondary, panelGrey
white, greyDarkest, greyDarker, greyDark, greyMedium, greyMediumLight, greyLight, greyLighter, greyLightest, greyMidLight, greyMidLightest
```

`$attributes` - an array:

```
[
    'data' => [ 'data-attribute-key' => 'data-attribute-value', ... ]
    'html' => ['html-attribute-name' => 'html-attribute-value', ....]
]
```

`$content` - the label and other content for the button. This could simply be a string e.g. "button name" or smarty captured content

#### Examples

Create a default button:

```smarty
{button content="My Button"}
```

Create a large primary theme colour button

```smarty
{button size=large colour=primary}
```

Create a button with favicon and custom modifier

```smarty
{capture "buttonContent"}
    <span>My Button</span><i class="fa fa-cc-paypal" aria-hidden="true"></i>
{/capture}

{button content=$smarty.capture.buttonContent modifier="myAwesomeButton"}
```


#### Themeing
Buttons can be themed as follows:

1. By overriding the foundation colour and font size variables
2. By defining your own colour and font size classes ....
3. By applying a modifier (or series of modifiers) to the button and overriding the default styles. For example  

```smarty
    {button content=$smarty.capture.buttonContent modifier="myAwesomeButton"}  
```

```html
    <style>
        .button_myAwesomeButton {

            /*style my awesome button here*/

            .fa-cc-paypal {
                /*syle my awesome buttons paypal icon*/
            }
        }
    </style>
```

### Extending

The button cannot be extended

### Dependancies

```
foundation
button
```
