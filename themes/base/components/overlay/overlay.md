## overlay
The overlay component is similar to a modal or lightbox, where any content can be launched via a link or button
and displayed full-screen over the body of the page.

### Version
0.1.0

### Object diagram

```
|-------------------|
| overlay           |
|===================|
| open              |
|-------------------|
| close             |
|-------------------|
| body              |
|-------------------|
```

### Usage

```smarty

{capture "menuOverlayOpen"}
    {hamburger lineCount=4}
{/capture}

{overlay
    open=$smarty.capture.hamburger
    openModifier="m_fixed"
    body="<h2 class='cThemeWhite centerObject'>This is the body content</h2>"
    animationType="fadeIn"}

```

### Configuration options

##### The following block options are available:

```open``` - The trigger that will reveal the overlay | default is the button/hamburger components.
If the 'close' block is empty, then this block will also close the overlay, behaving as a toggle.

```close``` – The trigger that will close the overlay | default is none

```body``` – The content of the overlay | default is none

To following block modifiers are available:

```openModifier``` - open block modifer class

```closeModifier``` - close block modifer class

```overlayModifier``` - overlay block modifer class

```bodyModifier``` - overlay body block modifer class

##### Animation reveal options:

```animationType``` - Defines the type of animation / transition to reveal the overlay, the following animation options are available:

*'revealLeft'* - default - slide the overlay in from the left of the page

*'revealRight'* – slide the overlay in from the right of the page

*'revealTop'* – slide the overlay in from the top of the page

*'revealBottom'* – slide the overlay in from the top of the bottom

*'fadeIn'* – fade in the overlay

### Default behaviour

The default trigger is the 'button/hamburger' component that will toggle the opening and closing of the overlay. There is no default overlay content

### Theming

##### Block selectors

Main block and block element selectors

'.overlay_open' and '.overlay_close' or '.overlay_toggle' are required for the overlay javascript

```html
    <style>
    	.overlay {}
        .overlay_trigger {}
        .overlay_toggle {}
        .overlay_open {}
        .overlay_close {}
        .overlay_body {}
    </style>
```

```html
    <style>
    	.overlay {}
        .overlay_trigger {}
        .overlay_toggle {}
        .overlay_open {}
        .overlay_close {}
        .overlay_body {}
    </style>
```

Selector classes added to the .overlay element responsible for the animation / reveal type

```html
    <style>
	    .overlay_revealLeft {}
	    .overlay_revealRight {}
	    .overlay_revealTop {}
	    .overlay_revealBottom {}
	    .overlay_fadeIn {}
    </style>
```

##### Block Modifiers

Active states for the trigger and the overlay element

```html
    <style>
        .overlay_trigger.m_active {}
        .overlay.m_active {}
    </style>
```

Fixed position state for the overlay trigger, typically when used for a nav menu

```html
    <style>
        .overlay_trigger.m_fixed {}
    </style>
```

Lower the z-index value under the default for a standard overlay

```html
    <style>
        .overlay_trigger.m_orderLower {}
        .overlay.m_orderLower {}
    </style>
```

### Extending

```smarty

{extends file="overlay.tpl"}

{* do this if you want to overide the overlay open trigger *}
{block "overlayOpen"}
    {* New markup here *}
{block}

{* do this if you want to overide the overlay close trigger *}
{block "overlayClose"}
    {* New markup here *}
{block}

{* do this if you want to overide the overlay body *}
{block "overlayBody"}
    {* New markup here *}
{block}

```

### Dependancies

```
foundation
```
