<?php

use yii\db\Migration;

class m20191017_104427_dds_table_form_edit extends Migration
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
m20191017_104427_dds_table_form_edit::addMigration('up', "SET foreign_key_checks = 0;");
m20191017_104427_dds_table_form_edit::addMigration('up', "REPLACE INTO `dds_member` (`class_type`,`member_ref`,`data_type_ref`,`label`,`description`,`definition`,`choices`,`link_class`,`map_field`,`created`,`updated`,`deleted`) VALUES ('form','name','textshort','Name','','',null,null,'0','2019-10-17 11:44:27',null,'0');");
m20191017_104427_dds_table_form_edit::addMigration('up', "ALTER TABLE `ddt_form` ADD `name` VARCHAR(150) DEFAULT NULL ;");
m20191017_104427_dds_table_form_edit::addMigration('up', "ALTER TABLE `ddt_form` ADD INDEX(`name`);");
m20191017_104427_dds_table_form_edit::addMigration('up', "REPLACE INTO `phoebe_class` (`phoebe_type`,`class_type`,`version`,`module`,`label`,`description`,`version_locked`,`volatile`,`object_history`,`created`,`updated`,`deleted`,`serialised_definition`) VALUES ('daedalus','form','1','phoebe',null,null,'0','1','0','2019-10-14 11:41:52','2019-10-17 11:44:27','0','{\"class\":\"neon\\\\\\\\core\\\\\\\\form\\\\\\\\Form\",\"id\":\"form\",\"name\":\"form\",\"enableAjaxValidation\":true,\"enableAjaxSubmission\":false,\"label\":null,\"hint\":null,\"inline\":false,\"visible\":true,\"order\":1,\"action\":\"\",\"readOnly\":false,\"printOnly\":false,\"validationUrl\":null,\"attributes\":[],\"fields\":{\"name\":{\"memberRef\":\"name\",\"name\":\"name\",\"dataType\":\"textshort\",\"label\":\"Name\",\"description\":\"\",\"choices\":null,\"linkClass\":null,\"mapField\":false,\"deleted\":0,\"definition\":{\"class\":\"neon\\\\\\\\core\\\\\\\\form\\\\\\\\fields\\\\\\\\Text\",\"classLabel\":\"Single Line Text\",\"id\":null,\"name\":\"name\",\"label\":\"Name\",\"hint\":\"\",\"value\":null,\"required\":false,\"dataKey\":\"name\",\"validators\":[],\"placeholder\":\"\",\"deleted\":0,\"order\":0,\"mapField\":false,\"errors\":[],\"visible\":true,\"inline\":false,\"readOnly\":false,\"attributes\":[],\"printOnly\":false,\"showIf\":[],\"placeholderLabel\":false}},\"dynamic\":{\"memberRef\":\"dynamic\",\"name\":\"dynamic\",\"dataType\":\"link_uni\",\"label\":\"One to One\",\"description\":\"\",\"choices\":[],\"linkClass\":\"contact\",\"mapField\":false,\"deleted\":0,\"definition\":{\"class\":\"neon\\\\\\\\core\\\\\\\\form\\\\\\\\fields\\\\\\\\SelectDynamic\",\"classLabel\":\"Link list\",\"id\":null,\"name\":\"dynamic\",\"label\":\"One to One\",\"hint\":\"\",\"value\":null,\"required\":false,\"dataKey\":\"dynamic\",\"validators\":[],\"placeholder\":\"\",\"deleted\":0,\"order\":1,\"mapField\":false,\"errors\":[],\"visible\":true,\"inline\":false,\"readOnly\":false,\"attributes\":[],\"printOnly\":false,\"showIf\":[],\"placeholderLabel\":false,\"items\":[],\"allowClear\":true,\"create\":true,\"dataMapProvider\":\"dds\",\"dataMapKey\":\"contact\",\"dataMapFilters\":[]}}}}');");
m20191017_104427_dds_table_form_edit::addMigration('up', "SET foreign_key_checks = 1;");


//
// Down Migrations
//
m20191017_104427_dds_table_form_edit::addMigration('down', "SET foreign_key_checks = 0;");
m20191017_104427_dds_table_form_edit::addMigration('down', "REPLACE INTO `phoebe_class` (`phoebe_type`,`class_type`,`version`,`module`,`label`,`description`,`version_locked`,`volatile`,`object_history`,`created`,`updated`,`deleted`,`serialised_definition`) VALUES ('daedalus','form','1','phoebe',null,null,'0','1','0','2019-10-14 11:41:52','2019-10-17 11:18:45','0','{\"class\":\"neon\\\\\\\\core\\\\\\\\form\\\\\\\\Form\",\"id\":\"form\",\"name\":\"form\",\"enableAjaxValidation\":true,\"enableAjaxSubmission\":false,\"label\":null,\"hint\":null,\"inline\":false,\"visible\":true,\"order\":1,\"action\":\"\",\"readOnly\":false,\"printOnly\":false,\"validationUrl\":null,\"attributes\":[],\"fields\":{\"dynamic\":{\"memberRef\":\"dynamic\",\"name\":\"dynamic\",\"dataType\":\"link_uni\",\"label\":\"One to One\",\"description\":\"\",\"choices\":[],\"linkClass\":\"contact\",\"mapField\":false,\"deleted\":0,\"definition\":{\"class\":\"neon\\\\\\\\core\\\\\\\\form\\\\\\\\fields\\\\\\\\SelectDynamic\",\"classLabel\":\"Link list\",\"id\":null,\"name\":\"dynamic\",\"label\":\"One to One\",\"hint\":\"\",\"value\":null,\"required\":false,\"dataKey\":\"dynamic\",\"validators\":[],\"placeholder\":\"\",\"deleted\":0,\"order\":0,\"mapField\":false,\"errors\":[],\"visible\":true,\"inline\":false,\"readOnly\":false,\"attributes\":[],\"printOnly\":false,\"showIf\":[],\"placeholderLabel\":false,\"items\":[],\"allowClear\":true,\"create\":true,\"dataMapProvider\":\"dds\",\"dataMapKey\":\"contact\",\"dataMapFilters\":[]}}}}');");
m20191017_104427_dds_table_form_edit::addMigration('down', "ALTER TABLE `ddt_form` DROP INDEX `name`;");
m20191017_104427_dds_table_form_edit::addMigration('down', "ALTER TABLE `ddt_form` DROP `name`;");
m20191017_104427_dds_table_form_edit::addMigration('down', "DELETE FROM `dds_member` WHERE `class_type`='form' AND `member_ref`='name';");
m20191017_104427_dds_table_form_edit::addMigration('down', "SET foreign_key_checks = 1;");
