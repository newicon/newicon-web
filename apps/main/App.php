<?php

namespace main;

/**
 * Main app app class
 * @package app
 */
class App extends \neon\core\BaseApp
{
	/**
	 * @inheritdoc
	 */
	public function setup()
	{
		// e.g. url rules
		neon()->urlManager->addRules([
			[
				'pattern' => '/blog/category/<cat>',
				'route' => '/cms/render/page',
				'defaults' => ['nice_id' => 'blog'],
			]
		]);
	}

	/**
	 * @inheritdoc
	 */
	public function getName()
	{
		return 'main';
	}


}

