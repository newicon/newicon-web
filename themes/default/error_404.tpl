{extends "layouts/layout.tpl"}
{block "header"}
    {navigation white=['about','approach','contact','burger'] inactiveClass="text-black" activeClass="text-blue-500" }
{/block}
{block "content"}
    {home_hero class="-mt-25"}

    {section_services_grid}

    {include file='./_cmps/section/contact/got-a-project.tpl'}
    {include file='./_cmps/section/contact/book-meeting.tpl'}
    {include file="./_cmps/section/slider/portfolio-twister.tpl"}

    {section_trusted_by_brands}

    {include file='./_cmps/section/slider/testimonials.tpl'}
    {include file='./_cmps/section/contact/footer.tpl'}
{/block}
