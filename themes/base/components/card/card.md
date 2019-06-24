## Card

This is the base card component.

A card is a container with many sides - the base card has two - primary and secondary. Extensions of card could be clever enough to have n-ary sides.

The primary side can have a header, body and footer. The secondary side has a details section.

While a card can be used in isolation this is not the intended usage. Typically a card will be contained in a deck component.
The containing deck is responsible for implementing parts of the card functionality (i.e revealing the second side). This is because
how the card is revealed typically depends upon it's containing context i.e. how the card is layed out with other cards in the deck.

### Usage

#### Configuration

The card is configured by setting the following parameters:
 
```$card``` 
This is an array of data associated with the card. The base card component understands the following keys

	```$card.colour```  - the background colour to apply to the card. By default the 

    ```$card.reveal```  - the method for revealing the other side of the card. Currently you can choose between
                        'none', 'override', below' and 'link'. Link simply treats the other side as a seperate page so the 'reveal' simply links to the page you want.
                        below reveals the other side underneath the card. None or override let you add your own reveal into the card directly.
                        Note this functionality requires the cards to be contained inside a deck component
	
	```$card.attributes``` - an array of attributes that can be added to the top card container. These are either 'data' or 'html' for data attributes or
						html attributes as required. 'data' attributes will be prefixed with data-card-. 'html' attributes will be used as is.
						For example, $card.attributes.html.pink will assign a data-card-pink attribute to the card.

	```$card.revealAttributes``` - an array of attributes related to the reveal of the second side. These are added inside the card container and are similar
						to $card.attributes with data and html categories.

	```$card.link``` - a url. The card will link to this content on click. Note this property will be ignored unless the card is reveal is link ```$card.reveal = 'link'```

	```$card.unrevealText``` - optional text for the button which closes the revealed second side of the card. Defaults to an X 

	```$card.type``` - a optional type for the card

	```$card.header``` - the content for the card header (optional)

	```$card.body``` - the content for the card body (optional)

	```$card.footer``` - the content for the card footer (optiona)

	```$card.details``` - the content for the second side of the card (optional)

	```$card.class``` - an additional string of css class names to apply to the card

### CardImage

Create a card containing an image

	```$card.image``` - optional. The firefly image id if the image is stored in firefly
	```$card.imagePath``` - optional. The path for the image if stored on the filesystem
	```$card.aspectRatio``` - optional. Use as a background image
	```$card.width``` - optional image width. Default 600
	```$card.height``` - optional image height. Default 600

#### Examples

Create a single card. This can be useful but is not intended usage

```smarty
{$url = {$page_url nice='myId'}}
{card card=['colour' => 'secondary', 'reveal' => 'link', 'link' => "{$url}", body=>"I'm a simple card that links to a page"]
```

Use inside a deck (see the deck documentation for more information). Simply pass the card data to the deck

```smarty
{$deckOfCards = [
	['body' => 'One', 'details' => 'A', 'reveal' => 'below'],
	['body' => 'Two', 'details' => 'B', 'reveal' => 'below'],
	['body' => 'Three', 'details' => 'C', 'reveal' => 'below'],
	['body' => 'Four', 'details' => 'D', 'reveal' => 'below'],
	['body' => 'Five', 'details' => 'E', 'reveal' => 'below']
	['body' => 'Six', 'details' => 'F', 'reveal' => 'below']
]}

{$deck cards=$deckOfCards}
```

Other containers such as ```swimlane``` can also hold cards

#### Theming

the colour can be themed by passing a background colour class and by setting the values of the default colour variables

for more general themeing pass a css class name to the ```$card.class``` variable and modify the css within that namespace
e.g.

```smarty
{$card card=['class' => 'myClass']}
```

```less
	.myClass {
		.card_primary {
			//style the front of the card container
		}

		.card_header {
			//style the front of the card header
		}

		.card_body {
			//style the front of the card body
		}

		.card_footer {
			//style the front of the card container
		}

		.card_secondary {
			//style the back of the card container
		}

		.card_unreveal {
			//style the back of the card close button
		}

		.card_details {
			//style the back of the card content
		}
	}


```

### Extending

You can create your own components to extend and modify the card.
An extension should ne named using the following convention: ```card<MyNewCard>.tpl```
The deck expects card extensions to following this convention when dealing out cards

An extension has the following layout in smarty 

```smarty

{extends file="card.tpl"}

{* do this if you want to overide the front of the card markup *}
{block cardPrimary}
	{* New markup here *}
{block}

{* do this if you want to overide the back of the card markup *}
{block cardPrimary}
	{* New markup here *}
{block}

```

It is also possible to override the entire card

```smarty

{extends file="card.tpl"}

{* do this if you want to overide entire card markup
This will retain the logic for checking and setting the card parameters but otherwise
completely change the component
 *}
{block card}
	{* New markup here *}
{block}

```

Note - if you extend the card component you must set the ```$card.type``` appropriately if using the card inside a deck.
The deck uses the type to locate your component template.
If for example your extension template is ```card<MyNewCard.tpl>``` then the ```$card.type``` should be "myNewCard" (or "MyNewCard" -
the case of the first letter doesn't matter) 

As well as extending you can also create new cards that set up default data.
The same naming conventions and requirements on the card type apply in this case.
Simply create your template, set the data and call {card} from within your template.


### Dependancies

```
foundation
```