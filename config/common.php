<?php

/**
 * Here you can set up any application wide configuration that is not local to your deployment
 */
return [
	'name' => 'Newicon',
	'coreApps' => [

		'dev' => [
			'allowedIPs' => ['*'],
		],

		'cms' => [
			// themeHierarchy - set the names of the themes in the theme directory
			// in the reverse order of precedence (first overrides second etc)
			'themeHierarchy' => [ 'default', 'base' ],
			'siteData' => [
				'contact' => [
					'email' => 'getstarted@newicon.co',
					'phone' => '0117 205 0425'
				],
				'languages' => 'en',
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

	],
	'components' => [
		'user' => [
			'class' => '\neon\user\services\User',
			'identityClass' => 'neon\user\models\User',
			'identityCookie' => ['name' => 'newicon', 'httpOnly' => true],
			'loginUrl' => ['user/account/login'],
			// Number of seconds the session will remain valid if the remember me option is set
			'rememberMeDuration' => 3600 * 24 * 30,
			'enableAutoLogin' => true,
		],

	]
];
