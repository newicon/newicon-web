## buttonModal ##
A base button with some default state set to allow the button to function as a trigger to open modals

```smarty
{buttonModal id='myId'}
```
is equivalent to

```smarty
{button attributes=['data' => ['toggle' => 'modal', 'backdrop' => 'static', 'target' => 'myId']]}
```

The modal and modalButton components use bootstrap behind the scenes
[see here](https://v4-alpha.getbootstrap.com/components/modal/)

By default the attribute ```data-backdrop='static'``` is set. This prevents the modal from closing when the user
clicks outside the dialog

### Usage

#### Configuration

To configure the buttonModal the following parameters are available:

`$target` - **required**. the data attrribute used to select the target modal. 

`$id` - the identifier of the button.

In addition all parameters available to the button component are available to the buttonModal

The default data attributes set by buttonModal can be overridden by passing values into the 
attributes parameter (see example below)

#### Examples

Basic usage

```smarty
{* Create a simple modal *}
{modal body="Im a Modal" id="myModal"}

{* and a button to open it *}
{buttonModal id="myModal" content="My Modal Button"}
```

Override the ```data-backdrop='static'``` property

```smarty
{buttonModal id="myModal" attributes=['data' => ['backdrop' => 'true']]}
```

#### Themeing

the buttonModal can be themed in the same way as the button component

### Extending

the buttonModal cannot be extended

### Dependancies

1. foundation
2. button



