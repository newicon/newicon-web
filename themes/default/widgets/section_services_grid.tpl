{layout_section}
	{layout_container}
	{include file="../pages/_cmps/headers/center.tpl"
		title="Our expertise"
		sub="The things we do for our clients and their people"
		body="Our software design and development focuses on the things that matter, the insights, interactions, integrations and innovations that make extraordinary things happen for brands, businesses and customers"
		hr=true
	}
	<div class="grid md:grid-cols-2 gap-4 mb-16">
		{include file="home_service_hero_square.tpl"
            link="architecture"
            title="Architecture &amp; UX Design"
            body="User experience design and<br>interactive prototyping"
            image="/images/icons/max/architecture.svg"
            imageHover="/images/icons/max/white/architecture.svg"
            attrs=["data-aos" =>'fade-up-right']
        }
        {include file="home_service_hero_square.tpl"
            link="software"
            title="Software Development"
            body="Custom software applications for startups, SMEs and enterprise"
            image="/images/icons/max/software-development.svg"
            imageHover="/images/icons/max/white/software-development.svg"
            attrs=["data-aos" =>'fade-up-left']
        }
        {include file="home_service_hero_square.tpl"
            link="web-development"
            title="Web Development"
            body="Websites, web apps and e-commerce for <br/>desktop, tablet and mobile devices"
            image="/images/icons/max/web-development.svg"
            imageHover="/images/icons/max/white/web-development.svg"
            attrs=["data-aos" =>'fade-up-right']
        }
        {include file="home_service_hero_square.tpl"
            link="digital-marketing"
            title="Digital Marketing"
            body="Pay Per Click, Search Engine Optimisation<br>and Converstion Rate Optimisation"
            image="/images/icons/max/digital-marketing.svg"
            imageHover="/images/icons/max/white/digital-marketing.svg"
            attrs=["data-aos" =>'fade-up-left']
        }
	</div>
	{/layout_container}
{/layout_section}