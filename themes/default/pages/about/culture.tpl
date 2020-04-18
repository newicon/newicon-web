{extends "layouts/layout.tpl"}
{block "header"}
    {navigation}
{/block}
{block "content"}

    {include file="../_cmps/section/hero/text.tpl"
        title="Culture"
        sub="People focused. Future thinking. Inventive."
        body="Our culture and brand go hand in ha nd. After all, a business is what its people make it. And our people are pretty great, even if we say so ourselves."}

	<img style="width:100%" src="{asset path='images/illustrations/Culture Illustration.svg'}" alt="Newicon culture - juggling, guitar playing maniacs!" width="581" height="532">



{/block}
