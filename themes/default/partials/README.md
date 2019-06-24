Partials Folder
===============

Partials should have an entry in the cms_page / cms_url database folders
but do not generate an entire page. If the partial requires assets e.g. 
javascript files then you should consider extending from the 
layouts/ajax.tpl file which should pull the required assets.

If you want to generate an entire page you should use the pages folder.
