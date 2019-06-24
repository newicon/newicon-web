## Modal
This is the base menu component.

### Usage
It can be used to render a menu as either inline-block links or list items. The active menu item is automatically set with an m_active modifier.

#### Configuration

To configure the menu the following parameters are available:

`$tag` – The HTML tag to render the menu items as e.g. 'span', 'li'. By default it is 'div'. If it is 'li', then `<ul>` will encapsulate them.

`$action` – The absolute or relative link for the `href` attribute.

`$items` – An array of key-value pairs of menu items. `attributes` is an array of attributes which will be expanded into `data-<name>`. HTML can be used in the label e.g. FontAwesome.

`$activeOnChildUrl` - if true (default) then a menu item is set as active if the url is a child of the menus url. E.g. if true, then the menu item with url /parent will be set as active if the url is /parent/child. If set to false, then an exact match on url is used.

```smarty
['home' => ['attributes' => '', 'label' => 'Home', 'href' => '/home'],
'about' => ['attributes' => '', 'label' => 'About', 'href' => '/about'],
]

```


#### Examples

Create a menu from the sitemap global var:

```smarty
{if isset($site.menu.items)}
    {$items = $site.menu.items}
    {foreach from=$items item=$i key=$k}
        {$items[$k]['label']=((isset($i.label))?$i.label:((isset($i.niceId))?$i.niceId:''))}
        {$items[$k]['action']=((isset($i.url))?$i.url:((isset($i.niceId))?{page_url nice=$i.niceId}:''))}
    {/foreach}
    {menu items=$items}
{/if}
```

Create a menu with items supplied from a variable.

```smarty
{$menuItems = ['home' => ['attributes' => '', 'label' => 'Home', 'action' => '/home'],
'about' => ['attributes' => '', 'label' => 'About', 'action' => '/about']]}
{menu items=$menuItems tag="li"}
```


#### Themeing
Menus can be themed as follows:

1. By overriding the foundation colour and font size variables
2. By defining your own colour and font size classes ....
3. By applying a modifier (or series of modifiers) to the menuand overriding the default styles. For example:

```smarty
    {menu items=$menuItems tag="li"}
    {menu items=$menuItems tag="span"}
```

```html
    <style>
        .menu_item {
        }
        li.menu_item {
        }
        span.menu_item {
        }

        .menu_inline {
        	.menu_item {
        	}
        	li.menu_item {
        	}
        	span.menu_item {
        	}
        }
    </style>
```

### Extending