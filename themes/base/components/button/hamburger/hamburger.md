## hamburger
The hamburger component requires the button component and can be used as an action / trigger for a menu or tab.

### Version
0.1.0

### Object diagram

```
|----------------|
| Button         |
|----------------|
        |
        |
|----------------|
| hamburger      |
|----------------|
```

### Usage

```smarty

{hamburger lineCount=4}

```

### Configuration options

`$lineCount` - The number of lines to render within the container

`$class` - A css class that can be applied to the container - default none

For further configuration options, see the button component docs.

### Default behaviour

### Theming

##### Block selectors

Main block and block element selectors

```html
    <style>
    	.hamburger {}
        .hamburger_line {}
    </style>
```

##### Block Modifiers

Active states to transition the hamburger

```html
    <style>
        .hamburger.m_active {}
        .m_active .hamburger {}
    </style>
```

### Extending

### Dependancies

```
foundation, button
```
