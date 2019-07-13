<?php

use yii\db\Migration;

class m20190712_192636_dds_table_linker_edit extends Migration
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
m20190712_192636_dds_table_linker_edit::addMigration('up', "SET foreign_key_checks = 0;");
m20190712_192636_dds_table_linker_edit::addMigration('up', "REPLACE INTO `phoebe_class` (`phoebe_type`,`class_type`,`version`,`module`,`label`,`description`,`version_locked`,`volatile`,`object_history`,`created`,`updated`,`deleted`,`serialised_definition`) VALUES ('daedalus','linker','1','phoebe',null,null,'0','0','0','2019-07-12 20:26:36',null,'0',null);");
m20190712_192636_dds_table_linker_edit::addMigration('up', "REPLACE INTO `phoebe_class` (`phoebe_type`,`class_type`,`version`,`module`,`label`,`description`,`version_locked`,`volatile`,`object_history`,`created`,`updated`,`deleted`,`serialised_definition`) VALUES ('daedalus','linker','1','phoebe',null,null,'0','1','0','2019-07-12 20:26:36','2019-07-12 20:26:36','0',null);");
m20190712_192636_dds_table_linker_edit::addMigration('up', "REPLACE INTO `dds_class` (`class_type`,`label`,`description`,`module`,`deleted`,`count_total`,`count_deleted`,`definition`) VALUES ('linker','linker','linker','phoebe','0','0','0','');");
m20190712_192636_dds_table_linker_edit::addMigration('up', "CREATE TABLE IF NOT EXISTS `ddt_linker` (`_uuid` CHAR(22) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL COMMENT 'object _uuid from the dds_object table', PRIMARY KEY (`_uuid`)) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci ENGINE=MYISAM;");
m20190712_192636_dds_table_linker_edit::addMigration('up', "REPLACE INTO `dds_class` (`class_type`,`label`,`description`,`module`,`deleted`,`count_total`,`count_deleted`,`definition`) VALUES ('linker','Linker','linker','phoebe','0','0','0','');");
m20190712_192636_dds_table_linker_edit::addMigration('up', "REPLACE INTO `dds_member` (`class_type`,`member_ref`,`data_type_ref`,`label`,`description`,`definition`,`choices`,`link_class`,`map_field`,`created`,`updated`,`deleted`) VALUES ('linker','name','textshort','Name','','',null,null,'0','2019-07-12 20:26:36',null,'0');");
m20190712_192636_dds_table_linker_edit::addMigration('up', "ALTER TABLE `ddt_linker` ADD `name` VARCHAR(150) DEFAULT NULL ;");
m20190712_192636_dds_table_linker_edit::addMigration('up', "ALTER TABLE `ddt_linker` ADD INDEX(`name`);");
m20190712_192636_dds_table_linker_edit::addMigration('up', "REPLACE INTO `dds_member` (`class_type`,`member_ref`,`data_type_ref`,`label`,`description`,`definition`,`choices`,`link_class`,`map_field`,`created`,`updated`,`deleted`) VALUES ('linker','dynamic','link_uni','One to One','','',null,'qwef','0','2019-07-12 20:26:36',null,'0');");
m20190712_192636_dds_table_linker_edit::addMigration('up', "ALTER TABLE `ddt_linker` ADD `dynamic` CHAR(150) CHARACTER SET latin1 COLLATE latin1_general_cs DEFAULT NULL ;");
m20190712_192636_dds_table_linker_edit::addMigration('up', "ALTER TABLE `ddt_linker` ADD INDEX(`dynamic`);");
m20190712_192636_dds_table_linker_edit::addMigration('up', "REPLACE INTO `phoebe_class` (`phoebe_type`,`class_type`,`version`,`module`,`label`,`description`,`version_locked`,`volatile`,`object_history`,`created`,`updated`,`deleted`,`serialised_definition`) VALUES ('daedalus','linker','1','phoebe','Linker',null,'0','1','0','2019-07-12 20:26:36','2019-07-12 20:26:36','0','{\"class\":\"neon\\\\\\\\core\\\\\\\\form\\\\\\\\Form\",\"id\":\"linker\",\"name\":\"linker\",\"enableAjaxValidation\":true,\"enableAjaxSubmission\":false,\"label\":\"Linker\",\"hint\":null,\"inline\":false,\"visible\":true,\"order\":1,\"action\":\"\",\"readOnly\":false,\"printOnly\":false,\"validationUrl\":null,\"attributes\":[],\"fields\":{\"name\":{\"memberRef\":\"name\",\"name\":\"name\",\"dataType\":\"textshort\",\"label\":\"Name\",\"description\":\"\",\"choices\":null,\"linkClass\":null,\"mapField\":false,\"deleted\":0,\"definition\":{\"class\":\"neon\\\\\\\\core\\\\\\\\form\\\\\\\\fields\\\\\\\\Text\",\"classLabel\":\"Single Line Text\",\"id\":null,\"name\":\"name\",\"label\":\"Name\",\"hint\":\"\",\"value\":null,\"required\":false,\"dataKey\":\"name\",\"validators\":[],\"placeholder\":\"\",\"deleted\":0,\"order\":0,\"mapField\":false,\"errors\":[],\"visible\":true,\"inline\":false,\"readOnly\":false,\"attributes\":[],\"printOnly\":false,\"showIf\":[],\"placeholderLabel\":false}},\"dynamic\":{\"memberRef\":\"dynamic\",\"name\":\"dynamic\",\"dataType\":\"link_uni\",\"label\":\"One to One\",\"description\":\"\",\"choices\":[],\"linkClass\":\"qwef\",\"mapField\":false,\"deleted\":0,\"definition\":{\"class\":\"neon\\\\\\\\core\\\\\\\\form\\\\\\\\fields\\\\\\\\SelectDynamic\",\"classLabel\":\"Link list\",\"id\":null,\"name\":\"dynamic\",\"label\":\"One to One\",\"hint\":\"\",\"value\":null,\"required\":false,\"dataKey\":\"dynamic\",\"validators\":[],\"placeholder\":\"\",\"deleted\":0,\"order\":1,\"mapField\":false,\"errors\":[],\"visible\":true,\"inline\":false,\"readOnly\":false,\"attributes\":[],\"printOnly\":false,\"showIf\":[],\"placeholderLabel\":false,\"items\":[],\"allowClear\":true,\"create\":false,\"dataMapProvider\":\"dds\",\"dataMapKey\":\"qwef\",\"dataMapFilters\":[]}}}}');");
m20190712_192636_dds_table_linker_edit::addMigration('up', "SET foreign_key_checks = 1;");


//
// Down Migrations
//
m20190712_192636_dds_table_linker_edit::addMigration('down', "SET foreign_key_checks = 0;");
m20190712_192636_dds_table_linker_edit::addMigration('down', "REPLACE INTO `phoebe_class` (`phoebe_type`,`class_type`,`version`,`module`,`label`,`description`,`version_locked`,`volatile`,`object_history`,`created`,`updated`,`deleted`,`serialised_definition`) VALUES ('daedalus','linker','1','phoebe',null,null,'0','1','0','2019-07-12 20:26:36','2019-07-12 20:26:36','0',null);");
m20190712_192636_dds_table_linker_edit::addMigration('down', "ALTER TABLE `ddt_linker` DROP INDEX `dynamic`;");
m20190712_192636_dds_table_linker_edit::addMigration('down', "ALTER TABLE `ddt_linker` DROP `dynamic`;");
m20190712_192636_dds_table_linker_edit::addMigration('down', "DELETE FROM `dds_member` WHERE `class_type`='linker' AND `member_ref`='dynamic';");
m20190712_192636_dds_table_linker_edit::addMigration('down', "ALTER TABLE `ddt_linker` DROP INDEX `name`;");
m20190712_192636_dds_table_linker_edit::addMigration('down', "ALTER TABLE `ddt_linker` DROP `name`;");
m20190712_192636_dds_table_linker_edit::addMigration('down', "DELETE FROM `dds_member` WHERE `class_type`='linker' AND `member_ref`='name';");
m20190712_192636_dds_table_linker_edit::addMigration('down', "REPLACE INTO `dds_class` (`class_type`,`label`,`description`,`module`,`deleted`,`count_total`,`count_deleted`,`definition`) VALUES ('linker','linker','linker','phoebe','0','0','0','');");
m20190712_192636_dds_table_linker_edit::addMigration('down', "DELETE FROM `dds_object` WHERE `_class_type`='linker';");
m20190712_192636_dds_table_linker_edit::addMigration('down', "DROP TABLE IF EXISTS `ddt_linker`;");
m20190712_192636_dds_table_linker_edit::addMigration('down', "DELETE FROM `dds_class` WHERE `class_type`='linker';");
m20190712_192636_dds_table_linker_edit::addMigration('down', "REPLACE INTO `phoebe_class` (`phoebe_type`,`class_type`,`version`,`module`,`label`,`description`,`version_locked`,`volatile`,`object_history`,`created`,`updated`,`deleted`,`serialised_definition`) VALUES ('daedalus','linker','1','phoebe',null,null,'0','0','0','2019-07-12 20:26:36',null,'0',null);");
m20190712_192636_dds_table_linker_edit::addMigration('down', "DELETE FROM `phoebe_class` WHERE `phoebe_type`='daedalus' AND `class_type`='linker' AND `version`=1;");
m20190712_192636_dds_table_linker_edit::addMigration('down', "SET foreign_key_checks = 1;");
