## menuOverlay
The menuOverlay component draws a menu in an overlay component which can be
accessed via a trigger such as a burger button.
It requires the overlay component.

### Version
0.1.0

### Object diagram

```
|---------------|               |---------------|
| menu          |---------------| overlay       |
|---------------|       |       |---------------|
                        |
                        |
                |---------------|
                | menuOverlay   |
                |---------------|
```

### Usage

```smarty example

{menuOverlay
    items=$items
    openModifier="m_fixed m_orderLower"
    animationType="fadeIn"}

```

### Configuration options

See the overlay component documentation for overlay options.
Additional menu ones are:

### Configuration options

```preMenuItems``` - set this to any code that you want to appear before the menu items in the overlay.

```postMenuItems``` - set this to any code you want to appear after the menu items


### Default behaviour

### Theming

##### Block selectors

Main block and block element selectors

```html
    <style>
    	.menuOverlay {}
        .menuOverlay_items {}
    </style>
```

### Extending

If the configuration options don't provide enough flexibility then you can override
the entire menu options by extending the overlayBody and adding your own markup.

```smarty

{extends file="menuOverlay.tpl"}

{* do this if you want to overide the overlay body *}
{block "overlayBody"}
    {* New markup here *}
{block}

```

### Dependancies

```
overlay
```
