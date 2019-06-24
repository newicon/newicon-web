Plugins Folder
==============

These are php functions that can be used within templates. If these are
doing any complex data manipulations, you should consider putting that
code into a service behind an interface that can be tested and then this
code calls the service interface instead. Plugins are used whenever you 
are trying to do anything complicated with data in the template. 

This folder must only contain php files and no template, css etc.
