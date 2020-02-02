<?php

use yii\db\Migration;

class m20200116_213450_dds_table_contact_edit extends Migration
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
m20200116_213450_dds_table_contact_edit::addMigration('up', "SET foreign_key_checks = 0;");
m20200116_213450_dds_table_contact_edit::addMigration('up', "REPLACE INTO `dds_class` (`class_type`,`label`,`description`,`module`,`deleted`,`change_log`,`count_total`,`count_deleted`) VALUES ('contact','Contact',null,'phoebe','0','0','0','0');");
m20200116_213450_dds_table_contact_edit::addMigration('up', "REPLACE INTO `dds_member` (`class_type`,`member_ref`,`data_type_ref`,`label`,`description`,`choices`,`link_class`,`map_field`,`created`,`updated`,`deleted`) VALUES ('contact','name','textshort','Name','',null,null,'1','2019-07-15 12:00:14','2019-09-13 18:02:54','0');");
m20200116_213450_dds_table_contact_edit::addMigration('up', "REPLACE INTO `dds_member` (`class_type`,`member_ref`,`data_type_ref`,`label`,`description`,`choices`,`link_class`,`map_field`,`created`,`updated`,`deleted`) VALUES ('contact','wysiwyg','textlong','Label','',null,null,'0','2020-01-16 21:34:50',null,'0');");
m20200116_213450_dds_table_contact_edit::addMigration('up', "ALTER TABLE `ddt_contact` ADD `wysiwyg` MEDIUMTEXT DEFAULT NULL ;");
m20200116_213450_dds_table_contact_edit::addMigration('up', "REPLACE INTO `phoebe_class` (`phoebe_type`,`class_type`,`version`,`module`,`label`,`description`,`version_locked`,`volatile`,`object_history`,`created`,`updated`,`deleted`,`serialised_definition`) VALUES ('daedalus','contact','1','phoebe','Contact',null,'0','1','0','2019-07-15 12:00:14','2020-01-16 21:34:51','0','{\"class\":\"neon\\\\\\\\core\\\\\\\\form\\\\\\\\Form\",\"id\":\"contact\",\"name\":\"contact\",\"enableAjaxValidation\":true,\"enableAjaxSubmission\":false,\"label\":\"Contact\",\"hint\":null,\"inline\":false,\"visible\":true,\"order\":1,\"action\":\"\",\"readOnly\":false,\"printOnly\":false,\"validationUrl\":null,\"attributes\":[],\"objectToken\":\"CDTYyYhrl5yW1cEZDwa1lc-7EMbU2prtnG8E04D3v4mKgkdHIi6SFG0G6fy_XvL4oOfyL25i1qepjCb07eKo3aRXM-Cyz9nq6LpyJEMeqnc=\",\"fields\":{\"name\":{\"memberRef\":\"name\",\"name\":\"name\",\"dataType\":\"textshort\",\"label\":\"Name\",\"description\":\"\",\"choices\":null,\"linkClass\":null,\"mapField\":true,\"deleted\":0,\"definition\":{\"class\":\"neon\\\\\\\\core\\\\\\\\form\\\\\\\\fields\\\\\\\\Text\",\"classLabel\":\"Single Line Text\",\"id\":null,\"name\":\"name\",\"label\":\"Name\",\"hint\":\"\",\"value\":null,\"required\":false,\"dataKey\":\"name\",\"validators\":[],\"placeholder\":\"\",\"deleted\":0,\"order\":0,\"mapField\":true,\"errors\":[],\"visible\":true,\"inline\":false,\"readOnly\":false,\"attributes\":[],\"printOnly\":false,\"showIf\":[],\"placeholderLabel\":false}},\"wysiwyg\":{\"memberRef\":\"wysiwyg\",\"name\":\"wysiwyg\",\"dataType\":\"textlong\",\"label\":\"Label\",\"description\":\"\",\"choices\":null,\"linkClass\":null,\"mapField\":false,\"deleted\":0,\"definition\":{\"class\":\"neon\\\\\\\\core\\\\\\\\form\\\\\\\\fields\\\\\\\\Wysiwyg\",\"classLabel\":\"Wysiwyg Multiline Text\",\"id\":null,\"name\":\"wysiwyg\",\"label\":\"Label\",\"hint\":\"\",\"value\":null,\"required\":false,\"dataKey\":\"wysiwyg\",\"validators\":[],\"placeholder\":\"\",\"deleted\":0,\"order\":1,\"mapField\":false,\"errors\":[],\"visible\":true,\"inline\":false,\"readOnly\":false,\"attributes\":[],\"printOnly\":false,\"showIf\":[],\"placeholderLabel\":false}}}}');");
m20200116_213450_dds_table_contact_edit::addMigration('up', "SET foreign_key_checks = 1;");


//
// Down Migrations
//
m20200116_213450_dds_table_contact_edit::addMigration('down', "SET foreign_key_checks = 0;");
m20200116_213450_dds_table_contact_edit::addMigration('down', "REPLACE INTO `phoebe_class` (`phoebe_type`,`class_type`,`version`,`module`,`label`,`description`,`version_locked`,`volatile`,`object_history`,`created`,`updated`,`deleted`,`serialised_definition`) VALUES ('daedalus','contact','1','phoebe','Contact',null,'0','1','0','2019-07-15 12:00:14','2019-07-15 12:00:20','0','{\"class\":\"neon\\\\\\\\core\\\\\\\\form\\\\\\\\Form\",\"id\":\"contact\",\"name\":\"contact\",\"enableAjaxValidation\":true,\"enableAjaxSubmission\":false,\"label\":\"Contact\",\"hint\":null,\"inline\":false,\"visible\":true,\"order\":1,\"action\":\"\",\"readOnly\":false,\"printOnly\":false,\"validationUrl\":null,\"attributes\":[],\"fields\":{\"name\":{\"memberRef\":\"name\",\"name\":\"name\",\"dataType\":\"textshort\",\"label\":\"Name\",\"description\":\"\",\"choices\":null,\"linkClass\":null,\"mapField\":true,\"deleted\":0,\"definition\":{\"class\":\"neon\\\\\\\\core\\\\\\\\form\\\\\\\\fields\\\\\\\\Text\",\"classLabel\":\"Single Line Text\",\"id\":null,\"name\":\"name\",\"label\":\"Name\",\"hint\":\"\",\"value\":null,\"required\":false,\"dataKey\":\"name\",\"validators\":[],\"placeholder\":\"\",\"deleted\":0,\"order\":0,\"mapField\":true,\"errors\":[],\"visible\":true,\"inline\":false,\"readOnly\":false,\"attributes\":[],\"printOnly\":false,\"showIf\":[],\"placeholderLabel\":false}}}}');");
m20200116_213450_dds_table_contact_edit::addMigration('down', "ALTER TABLE `ddt_contact` DROP `wysiwyg`;");
m20200116_213450_dds_table_contact_edit::addMigration('down', "DELETE FROM `dds_member` WHERE `class_type`='contact' AND `member_ref`='wysiwyg';");
m20200116_213450_dds_table_contact_edit::addMigration('down', "REPLACE INTO `dds_member` (`class_type`,`member_ref`,`data_type_ref`,`label`,`description`,`choices`,`link_class`,`map_field`,`created`,`updated`,`deleted`) VALUES ('contact','name','textshort','Name','',null,null,'1','2019-07-15 12:00:14','2019-09-13 18:02:54','0');");
m20200116_213450_dds_table_contact_edit::addMigration('down', "REPLACE INTO `dds_class` (`class_type`,`label`,`description`,`module`,`deleted`,`change_log`,`count_total`,`count_deleted`) VALUES ('contact','Contact','contact','phoebe','0','0','0','0');");
m20200116_213450_dds_table_contact_edit::addMigration('down', "SET foreign_key_checks = 1;");
