<?php

use yii\db\Migration;

class m20190715_105901_dds_table_person_edit extends Migration
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
m20190715_105901_dds_table_person_edit::addMigration('up', "SET foreign_key_checks = 0;");
m20190715_105901_dds_table_person_edit::addMigration('up', "REPLACE INTO `phoebe_class` (`phoebe_type`,`class_type`,`version`,`module`,`label`,`description`,`version_locked`,`volatile`,`object_history`,`created`,`updated`,`deleted`,`serialised_definition`) VALUES ('daedalus','person','1','phoebe',null,null,'0','0','0','2019-07-15 11:59:01',null,'0',null);");
m20190715_105901_dds_table_person_edit::addMigration('up', "REPLACE INTO `phoebe_class` (`phoebe_type`,`class_type`,`version`,`module`,`label`,`description`,`version_locked`,`volatile`,`object_history`,`created`,`updated`,`deleted`,`serialised_definition`) VALUES ('daedalus','person','1','phoebe',null,null,'0','1','0','2019-07-15 11:59:01','2019-07-15 11:59:01','0',null);");
m20190715_105901_dds_table_person_edit::addMigration('up', "REPLACE INTO `dds_class` (`class_type`,`label`,`description`,`module`,`deleted`,`count_total`,`count_deleted`,`definition`) VALUES ('person','person','person','phoebe','0','0','0','');");
m20190715_105901_dds_table_person_edit::addMigration('up', "CREATE TABLE IF NOT EXISTS `ddt_person` (`_uuid` CHAR(22) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL COMMENT 'object _uuid from the dds_object table', PRIMARY KEY (`_uuid`)) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci ENGINE=MYISAM;");
m20190715_105901_dds_table_person_edit::addMigration('up', "REPLACE INTO `dds_member` (`class_type`,`member_ref`,`data_type_ref`,`label`,`description`,`definition`,`choices`,`link_class`,`map_field`,`created`,`updated`,`deleted`) VALUES ('person','name','textshort','Name','','',null,null,'0','2019-07-15 11:59:01',null,'0');");
m20190715_105901_dds_table_person_edit::addMigration('up', "SET foreign_key_checks = 1;");


//
// Down Migrations
//
m20190715_105901_dds_table_person_edit::addMigration('down', "SET foreign_key_checks = 0;");
m20190715_105901_dds_table_person_edit::addMigration('down', "DELETE FROM `dds_member` WHERE `class_type`='person' AND `member_ref`='name';");
m20190715_105901_dds_table_person_edit::addMigration('down', "DELETE FROM `dds_object` WHERE `_class_type`='person';");
m20190715_105901_dds_table_person_edit::addMigration('down', "DROP TABLE IF EXISTS `ddt_person`;");
m20190715_105901_dds_table_person_edit::addMigration('down', "DELETE FROM `dds_class` WHERE `class_type`='person';");
m20190715_105901_dds_table_person_edit::addMigration('down', "REPLACE INTO `phoebe_class` (`phoebe_type`,`class_type`,`version`,`module`,`label`,`description`,`version_locked`,`volatile`,`object_history`,`created`,`updated`,`deleted`,`serialised_definition`) VALUES ('daedalus','person','1','phoebe',null,null,'0','0','0','2019-07-15 11:59:01',null,'0',null);");
m20190715_105901_dds_table_person_edit::addMigration('down', "DELETE FROM `phoebe_class` WHERE `phoebe_type`='daedalus' AND `class_type`='person' AND `version`=1;");
m20190715_105901_dds_table_person_edit::addMigration('down', "SET foreign_key_checks = 1;");
