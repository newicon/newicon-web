## Deck ##

This is the base deck component.

### Description ###

A deck is a container that can lay out its components like a dealt pack of cards, or as a pack ready to be revealed (maybe???)

## Deck

A deck is a container that can lay out its components like a dealt pack of cards.
It is a container of card components.
The deck is responsible for laying the cards out on the page and for adjusting that layout as appropriate when cards
reveal their other side(s).

### Usage

#### Configuration

The deck is configured by setting the following parameters:


`$columns` - an array specifying the grid layout to use at each breakpoint.

`$columns` = [
    `xxs` => 'num columns at xxs breakpoint',
    `xs` => 'num columns at xs breakpoint',
    `sm` => 'num columns at sm breakpoint',
    `md` => 'num columns at md breakpoint',
    `lg` => 'num columns at lg breakpoint',
    `xl` => 'num columns at xl breakpoint',
]

you do not have to set columns at every breakpoint. The default setting is

`$columns` = [
    `xxs` => '1',
    `sm` => '2',
    `lg` => '3',
    `xl` => '4',
]

`$cardType` - if all the cards in a deck are of the same type you can supply it here. This will set `$card.type` to `$cardType` on all cards in the deck unless otherwise set on the card
`$cardReveal` - if all the cards in a deck are of the same revel type you can supply it here. This will set `$card.reveal` to `$cardReveal` on all cards in the deck
`$cardClass` - if all the cards in a deck have the same extra css classes you can supply it here. This will set `$card.class` to `$cardClass` on all cards in the deck
`$cardUnrevealText` - optional text for the button which closes the revealed second side of the cards. Defaults to an X and can be overriden by `unrevealText` in the individual card.

#### Examples

Create a deck of cards. All the cards have the same reveal type

```smarty
{$deckOfCards = [
    ['body' => 'One', 'details' => 'A'],
    ['body' => 'Two', 'details' => 'B'],
    ['body' => 'Three', 'details' => 'C'],
    ['body' => 'Four', 'details' => 'D'],
    ['body' => 'Five', 'details' => 'E']
    ['body' => 'Six', 'details' => 'F']
]}

{$deck cards=$deckOfCards cardReveal='below'}
```

#### Theming

the deck cannot currently be themed effectively.

### Extending

You can create your own components to extend and modify the deck
An extension should ne named using the following convention: ```deck<MyNewDeck>.tpl```


An extension has the following layout in smarty

```smarty

{extends file="deck.tpl"}

{* do this if you want to overide all the deck markup including the grid layout *}
{block deckCard}
    {* New markup here. This markup will execute once per card. The card is exposed as $card *}
    {* You are responsidle for calling the card component *}
    {* e.g *}
    <div class="col-xs-6">
        {$card.header = "I'm in a fancy new deck"}
        {card card=$card}
    </div>
{block}

{* do this if you want to overide all the deck markup but not the grid layout *}
{block deckCardContent}
    {* New markup here. This markup will execute once per card. The card is exposed as $card *}
    {* You are responsidle for calling the card component *}
    {* e.g *}
        {$card.header = "I'm in a fancy new deck"}
        {card card=$card}
{block}

```

### Dependancies

```
foundation
```
