## Foundation
This component is responsible for managing the following in the base theme

- CSS, LESS, JS, and fonts
- Third party CSS and JS frameworks
- Newicon CSS and JS frameworks

### Version
0.1.0

### Object diagram

#### CSS
```
|-----------------|    |----------------------------|
| stylesheets     |----| Newicon frameworks         |
|-----------------|    |============================|
                       | Newicon Helpers            |
                       |----------------------------|
                       | Global styles & Typography |
                       |----------------------------|
                                     |
                                     |
                       |----------------------------|
                       | Third party frameworks     |
                       |============================|
                       | Bootstrap                  |
                       |----------------------------|
                       | FontAwesome                |
                       |----------------------------|
```

#### LESS Variables hierarchy
```
|-------------------------------|
| Default theme variables       |
|-------------------------------|
              |
              |
|-------------------------------|
| Base theme variables          |
|-------------------------------|
              |
              |
|-------------------------------|
| FontAwesome variables         |
|-------------------------------|
              |
              |
|-------------------------------|
| Bootstrap framework variables |
|-------------------------------|
```

#### JS
Javascript libraries, plugins and polyfills are currently managed in the project Grunt.js file only

### Usage

### Configuration options
The majority of the CSS can be configured through the use of LESS variables and LESS mixins

LESS Variables are imported and can be overridden respectively defined in the LESS variables hierarchy object diagram:

### Default behaviour
See configuration options

### Theming
See configuration options

### Extending
selectors should be overriden / extending in the default theme using the same level of specitivity 