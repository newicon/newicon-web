Components Folder
=================

Components are complex bits of reusable code that have their own templates,
stylesheets, javascript etc so are more than a single template file. These
can extend off themes/base/components following the rules for defining 
component templates, css classes etc. Multiple different extensions of the
same components can exist in the same folder. Components should be named
in reverse adjective style. e.g. cardImage, cardVideo, cardPlaying so
that they can be generically managed by other components.

If you are writing a single template file which doesn't extend any
base components then you should be writing a widget instead.

Components should only deal with data they are provided. They should
*not* make any database calls themselves.
