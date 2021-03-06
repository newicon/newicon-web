<?php

/**
 * Here you can set up any application wide configuration that is not local to your deployment
 */
return [
	'name' => 'APPLICATION NAME',
	'coreApps' => [

		'cms' => [
			// themeHierarchy - set the names of the themes in the theme directory
			// in the reverse order of precedence (first overrides second etc)
			'themeHierarchy' => [ 'THEME_NAME', 'base' ],
			// site data
			'siteData' => [
				'domain' => 'DOMAIN_NAME',
				'name' => 'SITE NAME',
				'languages' => 'en',
				'favicon' => [
					'favicon' => '',
					'thumbnail' => ''
				],
				// example public menu items
				// items have a label, a url and potentially an id if not created from the label
				'menu' => [
					'items' => [
						['label'=>'ITEM_1', 'url'=>'URL_1'],
						['label' => 'ITEM_2', 'url' => 'URL_2', 'items' => [
							['label' => 'ITEM_3', 'url' => 'URL_3', 'id' => 'ID_3'],
						]],
					],
					'navClass' => 'menu__list',
					'containerClass' => 'menu menu--main-nav',
				],
			],
		],
		'user'=> [
			/**
			 * roles and routes
			 * ----------------
			 * set up each role, what url routes they are restricted to and the
			 * default page once logged in. Routes should be regular expressions
			 * E.g. to restrict all users with role member to any URL
			 * beginning with /member and with a post login home URL of
			 * /member/home you can use
			 *
			 * 'roles' => [
			 *   'member' => [
			 *     'label' => 'Member',
			 *     'routes' => [ '^/member/?.*' ],
			 *     'homeUrl' => '/member/home'
			 *   ]
			 * ]
			 *
			 */
			'roles' => []
		],
	]
];