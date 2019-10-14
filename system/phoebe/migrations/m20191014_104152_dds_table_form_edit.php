<?php

use yii\db\Migration;

class m20191014_104152_dds_table_form_edit extends Migration
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
m20191014_104152_dds_table_form_edit::addMigration('up', "SET foreign_key_checks = 0;");
m20191014_104152_dds_table_form_edit::addMigration('up', "REPLACE INTO `phoebe_class` (`phoebe_type`,`class_type`,`version`,`module`,`label`,`description`,`version_locked`,`volatile`,`object_history`,`created`,`updated`,`deleted`,`serialised_definition`) VALUES ('daedalus','form','1','phoebe',null,null,'0','0','0','2019-10-14 11:41:52',null,'0',null);");
m20191014_104152_dds_table_form_edit::addMigration('up', "REPLACE INTO `phoebe_class` (`phoebe_type`,`class_type`,`version`,`module`,`label`,`description`,`version_locked`,`volatile`,`object_history`,`created`,`updated`,`deleted`,`serialised_definition`) VALUES ('daedalus','form','1','phoebe',null,null,'0','1','0','2019-10-14 11:41:52','2019-10-14 11:41:52','0',null);");
m20191014_104152_dds_table_form_edit::addMigration('up', "REPLACE INTO `dds_class` (`class_type`,`label`,`description`,`module`,`deleted`,`count_total`,`count_deleted`,`definition`) VALUES ('form','form','form','phoebe','0','0','0','');");
m20191014_104152_dds_table_form_edit::addMigration('up', "CREATE TABLE IF NOT EXISTS `ddt_form` (`_uuid` CHAR(22) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL COMMENT 'object _uuid from the dds_object table', PRIMARY KEY (`_uuid`)) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci ENGINE=MYISAM;");
m20191014_104152_dds_table_form_edit::addMigration('up', "REPLACE INTO `dds_member` (`class_type`,`member_ref`,`data_type_ref`,`label`,`description`,`definition`,`choices`,`link_class`,`map_field`,`created`,`updated`,`deleted`) VALUES ('form','dynamic','link_uni','One to One','','',null,'contact','0','2019-10-14 11:41:52',null,'0');");
m20191014_104152_dds_table_form_edit::addMigration('up', "ALTER TABLE `ddt_form` ADD `dynamic` CHAR(150) CHARACTER SET latin1 COLLATE latin1_general_cs DEFAULT NULL ;");
m20191014_104152_dds_table_form_edit::addMigration('up', "ALTER TABLE `ddt_form` ADD INDEX(`dynamic`);");
m20191014_104152_dds_table_form_edit::addMigration('up', "REPLACE INTO `phoebe_class` (`phoebe_type`,`class_type`,`version`,`module`,`label`,`description`,`version_locked`,`volatile`,`object_history`,`created`,`updated`,`deleted`,`serialised_definition`) VALUES ('daedalus','form','1','phoebe',null,null,'0','1','0','2019-10-14 11:41:52','2019-10-14 11:41:52','0','{\"class\":\"neon\\\\\\\\core\\\\\\\\form\\\\\\\\Form\",\"id\":\"form\",\"name\":\"form\",\"enableAjaxValidation\":true,\"enableAjaxSubmission\":false,\"label\":null,\"hint\":null,\"inline\":false,\"visible\":true,\"order\":1,\"action\":\"\",\"readOnly\":false,\"printOnly\":false,\"validationUrl\":null,\"attributes\":[],\"fields\":{\"dynamic\":{\"memberRef\":\"dynamic\",\"name\":\"dynamic\",\"dataType\":\"link_uni\",\"label\":\"One to One\",\"description\":\"\",\"choices\":[],\"linkClass\":\"contact\",\"mapField\":false,\"deleted\":0,\"definition\":{\"class\":\"neon\\\\\\\\core\\\\\\\\form\\\\\\\\fields\\\\\\\\SelectDynamic\",\"classLabel\":\"Link list\",\"id\":null,\"name\":\"dynamic\",\"label\":\"One to One\",\"hint\":\"\",\"value\":null,\"required\":false,\"dataKey\":\"dynamic\",\"validators\":[],\"placeholder\":\"\",\"deleted\":0,\"order\":0,\"mapField\":false,\"errors\":[],\"visible\":true,\"inline\":false,\"readOnly\":false,\"attributes\":[],\"printOnly\":false,\"showIf\":[],\"placeholderLabel\":false,\"items\":[],\"allowClear\":true,\"create\":false,\"dataMapProvider\":\"dds\",\"dataMapKey\":\"contact\",\"dataMapFilters\":[]}}}}');");
m20191014_104152_dds_table_form_edit::addMigration('up', "SET foreign_key_checks = 1;");


//
// Down Migrations
//
m20191014_104152_dds_table_form_edit::addMigration('down', "SET foreign_key_checks = 0;");
m20191014_104152_dds_table_form_edit::addMigration('down', "REPLACE INTO `phoebe_class` (`phoebe_type`,`class_type`,`version`,`module`,`label`,`description`,`version_locked`,`volatile`,`object_history`,`created`,`updated`,`deleted`,`serialised_definition`) VALUES ('daedalus','form','1','phoebe',null,null,'0','1','0','2019-10-14 11:41:52','2019-10-14 11:41:52','0',null);");
m20191014_104152_dds_table_form_edit::addMigration('down', "ALTER TABLE `ddt_form` DROP INDEX `dynamic`;");
m20191014_104152_dds_table_form_edit::addMigration('down', "ALTER TABLE `ddt_form` DROP `dynamic`;");
m20191014_104152_dds_table_form_edit::addMigration('down', "DELETE FROM `dds_member` WHERE `class_type`='form' AND `member_ref`='dynamic';");
m20191014_104152_dds_table_form_edit::addMigration('down', "DELETE FROM `dds_object` WHERE `_class_type`='form';");
m20191014_104152_dds_table_form_edit::addMigration('down', "DROP TABLE IF EXISTS `ddt_form`;");
m20191014_104152_dds_table_form_edit::addMigration('down', "DELETE FROM `dds_class` WHERE `class_type`='form';");
m20191014_104152_dds_table_form_edit::addMigration('down', "REPLACE INTO `phoebe_class` (`phoebe_type`,`class_type`,`version`,`module`,`label`,`description`,`version_locked`,`volatile`,`object_history`,`created`,`updated`,`deleted`,`serialised_definition`) VALUES ('daedalus','form','1','phoebe',null,null,'0','0','0','2019-10-14 11:41:52',null,'0',null);");
m20191014_104152_dds_table_form_edit::addMigration('down', "DELETE FROM `phoebe_class` WHERE `phoebe_type`='daedalus' AND `class_type`='form' AND `version`=1;");
m20191014_104152_dds_table_form_edit::addMigration('down', "SET foreign_key_checks = 1;");
