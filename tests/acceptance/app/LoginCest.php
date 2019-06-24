<?php
/**
 * @link http://www.newicon.net/neon
 * @copyright Copyright (c) 29/11/2016 Newicon Ltd
 * @license http://www.newicon.net/neon/license/
 */

class LoginCest
{
	/**
	 * @var \neon\user\models\User
	 */
	public $user;

	public function _before(AcceptanceTester $I)
	{
		// delete all the users and create a fresh one.
		\neon\user\models\User::deleteAll();
		$user = new \neon\user\models\User();
		$user->username = 'testuser';
		$user->email = 'test@test.com';
		$user->password = 'testtesttest';
		$user->save();
		$this->user = $user;
	}

	public function _after(AcceptanceTester $I)
	{
		$this->user->delete();
	}

	/**
	 * @param AcceptanceTester $I
	 */
	protected function _login($I)
	{
		$I->amOnPage('/user/account/login');
		$I->seeInCurrentUrl('/login');
		$I->fillField('#login-username', 'test@test.com');
		$I->fillField('#login-password', 'testtesttest');
		$I->click('button[type="submit"]');
		$I->wait(1);
	}

	public function login(AcceptanceTester $I)
	{
		$this->_login($I);
		$I->see('dashboard');
	}

}





