<?php

use yii\db\Migration;

class m20190715_105927_dds_table_person_edit extends Migration
{
	public static $upMigrations = [];
	public static $downMigrations = [];

	public function safeUp()
	{
		$connection = neon()->db;
		foreach (self::$upMigrations as $migration) {
			$connection->createCommand($migration)->execute();
		}
	}

	public function safeDown()
	{
		$connection = neon()->db;
		foreach (self::$downMigrations as $migration) {
			$connection->createCommand($migration)->execute();
		}
	}

	public static function addMigration($direction, $migration)
	{
		switch($direction) {
			case 'up':
				self::$upMigrations[] = $migration;
			break;
			case 'down':
				self::$downMigrations[] = $migration;
			break;
		}
	}
}



//
// Up Migrations
//
m20190715_105927_dds_table_person_edit::addMigration('up', "SET foreign_key_checks = 0;");
m20190715_105927_dds_table_person_edit::addMigration('up', "REPLACE INTO `dds_member` (`class_type`,`member_ref`,`data_type_ref`,`label`,`description`,`definition`,`choices`,`link_class`,`map_field`,`created`,`updated`,`deleted`) VALUES ('person','name','textshort','Name','','',null,null,'0','2019-07-15 11:59:27',null,'0');");
m20190715_105927_dds_table_person_edit::addMigration('up', "SET foreign_key_checks = 1;");


//
// Down Migrations
//
m20190715_105927_dds_table_person_edit::addMigration('down', "SET foreign_key_checks = 0;");
m20190715_105927_dds_table_person_edit::addMigration('down', "DELETE FROM `dds_member` WHERE `class_type`='person' AND `member_ref`='name';");
m20190715_105927_dds_table_person_edit::addMigration('down', "SET foreign_key_checks = 1;");
