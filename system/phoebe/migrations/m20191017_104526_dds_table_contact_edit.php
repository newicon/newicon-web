<?php

use yii\db\Migration;

class m20191017_104526_dds_table_contact_edit extends Migration
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
m20191017_104526_dds_table_contact_edit::addMigration('up', "SET foreign_key_checks = 0;");
m20191017_104526_dds_table_contact_edit::addMigration('up', "REPLACE INTO `dds_member` (`class_type`,`member_ref`,`data_type_ref`,`label`,`description`,`definition`,`choices`,`link_class`,`map_field`,`created`,`updated`,`deleted`) VALUES ('contact','dynamic','link_uni','One to One','','',null,'form','0','2019-10-17 11:45:26',null,'0');");
m20191017_104526_dds_table_contact_edit::addMigration('up', "ALTER TABLE `ddt_contact` ADD `dynamic` CHAR(150) CHARACTER SET latin1 COLLATE latin1_general_cs DEFAULT NULL ;");
m20191017_104526_dds_table_contact_edit::addMigration('up', "ALTER TABLE `ddt_contact` ADD INDEX(`dynamic`);");
m20191017_104526_dds_table_contact_edit::addMigration('up', "REPLACE INTO `phoebe_class` (`phoebe_type`,`class_type`,`version`,`module`,`label`,`description`,`version_locked`,`volatile`,`object_history`,`created`,`updated`,`deleted`,`serialised_definition`) VALUES ('daedalus','contact','1','phoebe','Contact',null,'0','1','0','2019-07-15 12:00:14','2019-10-17 11:45:26','0','{\"class\":\"neon\\\\\\\\core\\\\\\\\form\\\\\\\\Form\",\"id\":\"contact\",\"name\":\"contact\",\"enableAjaxValidation\":true,\"enableAjaxSubmission\":false,\"label\":\"Contact\",\"hint\":null,\"inline\":false,\"visible\":true,\"order\":1,\"action\":\"\",\"readOnly\":false,\"printOnly\":false,\"validationUrl\":null,\"attributes\":[],\"fields\":{\"name\":{\"memberRef\":\"name\",\"name\":\"name\",\"dataType\":\"textshort\",\"label\":\"Name\",\"description\":\"\",\"choices\":null,\"linkClass\":null,\"mapField\":true,\"deleted\":0,\"definition\":{\"class\":\"neon\\\\\\\\core\\\\\\\\form\\\\\\\\fields\\\\\\\\Text\",\"classLabel\":\"Single Line Text\",\"id\":null,\"name\":\"name\",\"label\":\"Name\",\"hint\":\"\",\"value\":null,\"required\":true,\"dataKey\":\"name\",\"validators\":{\"03dd89dd63804ae87e13c74161789a5d\":{\"class\":\"neon\\\\\\\\core\\\\\\\\validators\\\\\\\\RequiredValidator\",\"message\":\"This cannot be blank.\"}},\"placeholder\":\"\",\"deleted\":0,\"order\":0,\"mapField\":true,\"errors\":[],\"visible\":true,\"inline\":false,\"readOnly\":false,\"attributes\":[],\"printOnly\":false,\"showIf\":[],\"placeholderLabel\":false}},\"dynamic\":{\"memberRef\":\"dynamic\",\"name\":\"dynamic\",\"dataType\":\"link_uni\",\"label\":\"One to One\",\"description\":\"\",\"choices\":[],\"linkClass\":\"form\",\"mapField\":false,\"deleted\":0,\"definition\":{\"class\":\"neon\\\\\\\\core\\\\\\\\form\\\\\\\\fields\\\\\\\\SelectDynamic\",\"classLabel\":\"Link list\",\"id\":null,\"name\":\"dynamic\",\"label\":\"One to One\",\"hint\":\"\",\"value\":null,\"required\":false,\"dataKey\":\"dynamic\",\"validators\":[],\"placeholder\":\"\",\"deleted\":0,\"order\":1,\"mapField\":false,\"errors\":[],\"visible\":true,\"inline\":false,\"readOnly\":false,\"attributes\":[],\"printOnly\":false,\"showIf\":[],\"placeholderLabel\":false,\"items\":[],\"allowClear\":true,\"create\":false,\"dataMapProvider\":\"dds\",\"dataMapKey\":\"form\",\"dataMapFilters\":[]}},\"switch\":{\"memberRef\":\"switch\",\"name\":\"switch\",\"dataType\":\"boolean\",\"label\":\"Switch\",\"description\":\"\",\"choices\":null,\"linkClass\":null,\"mapField\":false,\"deleted\":0,\"definition\":{\"class\":\"neon\\\\\\\\core\\\\\\\\form\\\\\\\\fields\\\\\\\\SwitchButton\",\"classLabel\":\"Switch Button\",\"id\":null,\"name\":\"switch\",\"label\":\"Switch\",\"hint\":\"\",\"value\":null,\"required\":false,\"dataKey\":\"switch\",\"validators\":[],\"placeholder\":\"\",\"deleted\":0,\"order\":2,\"mapField\":false,\"errors\":[],\"visible\":true,\"inline\":false,\"readOnly\":false,\"attributes\":[],\"printOnly\":false,\"showIf\":[],\"placeholderLabel\":false,\"checkboxLabel\":null,\"trueLabel\":\"Yes\",\"falseLabel\":\"No\"}}}}');");
m20191017_104526_dds_table_contact_edit::addMigration('up', "SET foreign_key_checks = 1;");


//
// Down Migrations
//
m20191017_104526_dds_table_contact_edit::addMigration('down', "SET foreign_key_checks = 0;");
m20191017_104526_dds_table_contact_edit::addMigration('down', "REPLACE INTO `phoebe_class` (`phoebe_type`,`class_type`,`version`,`module`,`label`,`description`,`version_locked`,`volatile`,`object_history`,`created`,`updated`,`deleted`,`serialised_definition`) VALUES ('daedalus','contact','1','phoebe','Contact',null,'0','1','0','2019-07-15 12:00:14','2019-10-17 11:19:25','0','{\"class\":\"neon\\\\\\\\core\\\\\\\\form\\\\\\\\Form\",\"id\":\"contact\",\"name\":\"contact\",\"enableAjaxValidation\":true,\"enableAjaxSubmission\":false,\"label\":\"Contact\",\"hint\":null,\"inline\":false,\"visible\":true,\"order\":1,\"action\":\"\",\"readOnly\":false,\"printOnly\":false,\"validationUrl\":null,\"attributes\":[],\"fields\":{\"name\":{\"memberRef\":\"name\",\"name\":\"name\",\"dataType\":\"textshort\",\"label\":\"Name\",\"description\":\"\",\"choices\":null,\"linkClass\":null,\"mapField\":true,\"deleted\":0,\"definition\":{\"class\":\"neon\\\\\\\\core\\\\\\\\form\\\\\\\\fields\\\\\\\\Text\",\"classLabel\":\"Single Line Text\",\"id\":null,\"name\":\"name\",\"label\":\"Name\",\"hint\":\"\",\"value\":null,\"required\":true,\"dataKey\":\"name\",\"validators\":{\"03dd89dd63804ae87e13c74161789a5d\":{\"class\":\"neon\\\\\\\\core\\\\\\\\validators\\\\\\\\RequiredValidator\",\"message\":\"This cannot be blank.\"}},\"placeholder\":\"\",\"deleted\":0,\"order\":0,\"mapField\":true,\"errors\":[],\"visible\":true,\"inline\":false,\"readOnly\":false,\"attributes\":[],\"printOnly\":false,\"showIf\":[],\"placeholderLabel\":false}},\"switch\":{\"memberRef\":\"switch\",\"name\":\"switch\",\"dataType\":\"boolean\",\"label\":\"Switch\",\"description\":\"\",\"choices\":null,\"linkClass\":null,\"mapField\":false,\"deleted\":0,\"definition\":{\"class\":\"neon\\\\\\\\core\\\\\\\\form\\\\\\\\fields\\\\\\\\SwitchButton\",\"classLabel\":\"Switch Button\",\"id\":null,\"name\":\"switch\",\"label\":\"Switch\",\"hint\":\"\",\"value\":null,\"required\":false,\"dataKey\":\"switch\",\"validators\":[],\"placeholder\":\"\",\"deleted\":0,\"order\":1,\"mapField\":false,\"errors\":[],\"visible\":true,\"inline\":false,\"readOnly\":false,\"attributes\":[],\"printOnly\":false,\"showIf\":[],\"placeholderLabel\":false,\"checkboxLabel\":null,\"trueLabel\":\"Yes\",\"falseLabel\":\"No\"}}}}');");
m20191017_104526_dds_table_contact_edit::addMigration('down', "ALTER TABLE `ddt_contact` DROP INDEX `dynamic`;");
m20191017_104526_dds_table_contact_edit::addMigration('down', "ALTER TABLE `ddt_contact` DROP `dynamic`;");
m20191017_104526_dds_table_contact_edit::addMigration('down', "DELETE FROM `dds_member` WHERE `class_type`='contact' AND `member_ref`='dynamic';");
m20191017_104526_dds_table_contact_edit::addMigration('down', "SET foreign_key_checks = 1;");
