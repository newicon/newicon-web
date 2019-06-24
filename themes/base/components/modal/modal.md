## Modal
This is the base modal component.  

### Usage
It can be used to open some content in a modal or function as a lightbox.

#### Configuration

To configure the modal the following parameters are available:

`$id` – The modal ID. **Must be supplied**

`$header` – The modal header. Can be a string or HTML.

`$body` – The modal body. Can be a string or HTML.

`$footer` – The modal body. Can be a string or HTML.

`$closeText` – Text for the close link. Can be a string (e.g. 'close', 'x') or HTML (e.g. FontAwesome).

`$container` – ID selector for its parent element.

`$dataModifier` – The value in `data-modal-modifier`. It is used as the selector for the modal's jQuery behaviour.

`$showTransition` – If set to true, then the modal will fade in.

`$ariaLabelledBy` – The value for the `aria-labelledby` attribute (Yes this accessiblity attribute is in British English "Note: The expected spelling of this property in U.S. English is "labeledby." However, the accessibility API features to which this property is mapped have established the "labelledby" spelling. This property is spelled that way to match the convention and minimize the difficulty for developers.").


#### Examples

Create a button that opens a text modal:

```smarty
{capture "modalBody"}
	<p>Lorem ipsum body </p>
{/capture}
{modal body=$smarty.capture.modalBody id="htmlModal"}
{buttonModal content="text modal" id="htmlModalLink" target="htmlModal"}
```

Create a lightbox using a modal. Showing that two buttons can open the same modal by supplying the *same target* but *different IDs*.

```smarty
{capture "fullImage"}
    <img src="{{firefly_url id='FA35veN7cjudoompBt6bM0'}}" alt="full image" style="width: 500px" />
{/capture}
{capture "thumbnail"}
    <img src="{{firefly_url id='FA35veN7cjudoompBt6bM0'}}" alt="Thumbnail" style="width: 50px" />
{/capture}
{$attributes = ['data' => [
	'target' => 'myModal']
]}
{modal body=$smarty.capture.fullImage id="myModal"}
{buttonModal content="Click me" id="myModalLink1" target="myModal"}
{buttonModal content="Click me again" id="myModalLink2" target="myModal"}
```


#### Themeing
Modals can be themed as follows:

1. By overriding the foundation colour and font size variables
2. By defining your own colour and font size classes ....
3. **Modifiers not supported** By applying a modifier (or series of modifiers) to the modal and overriding the default styles. For example:

```smarty
    {modal body=$smarty.capture.fullImage id="myModal"}
```

```html
    <style>
        .modal_body {
        }
    </style>
```

### Extending

