## Slide
This is the slide component. A slide can have a background image as well as
a header, body and footer component.

|----------|
| Slide    |
|----------|
| type     |
| class    |
| modifier |
| colour   |
| image    |
| header   |
| body     |
| footer   |
|----------|

### Usage
An array of slides is passed to a carousel component.

#### Configuration

To configure the slide pass in a slide array with the following parameters:

`$slide.image` – The slide background image.

`$slide.imageWidth` – The slide background image width.

`$slide.imageHeight` – The slide background image height.

`$slide.header` – The slide header. Can be a string or HTML

`$slide.body`– The slide body content. Can be a string or HTML

`$slide.footer` – The slide footer. Can be a string or HTML

#### Examples

Create a new slide component (e.g. Box) with required HTML content.

```smarty in file default/components/slide/slideBox.tpl
{capture "header"}
	<h2> Experience <br> + creativity </h2>
{/capture}
{capture "body"}
	<p>I deliver change by applying <br> creative thinking to proven practice</p>
{/capture}
{slide slide=['header'=>$smarty.capture.header, 'body'=>$smarty.capture.body, 'modifier'=>"backgroundImage"]}
```
Then you can include those in your templates simply as {slideBox slide=[...]}

There is a toy class of SlideColour (a solid block of colour) used for testing. It doesn't accept `$header`, `$body` or `$footer`.

```smarty
{slideColour slide=['colour' => 'green']}
```

#### Themeing
Slides can be themed as follows:

1. By overriding the foundation colour and font size variables
2. By defining your own colour and font size classes ....
3. By applying a modifier (or series of modifiers) to the slide and overriding the default styles. For example

```smarty
    {slide slide=['body'=>$smarty.capture.banner, 'modifier'="backgroundImage"]}
```

```html
    <style>
        .slide_backgroundImage {
            height: 500px;
            background-image: url("../../images/TheWaterfront_01.jpg");
            background-repeat: no-repeat;
            background-position: repeat repeat;
            -webkit-background-size: cover;
            -moz-background-size: cover;
            -o-background-size: cover;
            background-size: cover;
        }
    </style>
```

### Extending