<?php

use yii\db\Migration;

class m20200422_153724_dds_table_category_edit extends Migration
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
m20200422_153724_dds_table_category_edit::addMigration('up', "SET foreign_key_checks = 0;");
m20200422_153724_dds_table_category_edit::addMigration('up', "REPLACE INTO `dds_member` (`class_type`,`member_ref`,`data_type_ref`,`label`,`description`,`choices`,`link_class`,`map_field`,`created`,`updated`,`deleted`) VALUES ('category','title','textshort','Title','The category title',null,null,'1','2020-04-17 20:57:23','2020-04-17 20:57:23','0');");
m20200422_153724_dds_table_category_edit::addMigration('up', "REPLACE INTO `dds_member` (`class_type`,`member_ref`,`data_type_ref`,`label`,`description`,`choices`,`link_class`,`map_field`,`created`,`updated`,`deleted`) VALUES ('category','slug','textshort','Slug','',null,null,'0','2020-04-22 16:37:24',null,'0');");
m20200422_153724_dds_table_category_edit::addMigration('up', "ALTER TABLE `ddt_category` ADD `slug` VARCHAR(150) DEFAULT NULL ;");
m20200422_153724_dds_table_category_edit::addMigration('up', "ALTER TABLE `ddt_category` ADD INDEX(`slug`);");
m20200422_153724_dds_table_category_edit::addMigration('up', "REPLACE INTO `dds_member` (`class_type`,`member_ref`,`data_type_ref`,`label`,`description`,`choices`,`link_class`,`map_field`,`created`,`updated`,`deleted`) VALUES ('category','parent','link_uni','Parent','Parent category',null,'category','0','2020-04-17 20:58:07',null,'0');");
m20200422_153724_dds_table_category_edit::addMigration('up', "REPLACE INTO `phoebe_class` (`phoebe_type`,`class_type`,`version`,`module`,`label`,`description`,`version_locked`,`volatile`,`object_history`,`created`,`updated`,`deleted`,`serialised_definition`) VALUES ('daedalus','category','1','phoebe','Category',null,'0','1','0','2020-04-17 20:57:23','2020-04-22 16:37:24','0','{\"class\":\"neon\\\\\\\\core\\\\\\\\form\\\\\\\\Form\",\"id\":\"category\",\"name\":\"category\",\"enableAjaxValidation\":true,\"enableAjaxSubmission\":false,\"label\":\"Category\",\"hint\":null,\"inline\":false,\"visible\":true,\"order\":1,\"action\":\"\",\"readOnly\":false,\"printOnly\":false,\"validationUrl\":null,\"attributes\":[],\"objectToken\":\"6cTT3WY9sBIGByygjqDIpOS8AfKcduyIqAS3tQP1Thvb78wY5LwGqI_9srwADdF3NDVPlerBrpLdjDKXpELVv58yhdE6xnt_6Ir-fdaIP5E=\",\"fields\":{\"title\":{\"memberRef\":\"title\",\"name\":\"title\",\"dataType\":\"textshort\",\"label\":\"Title\",\"description\":\"The category title\",\"choices\":null,\"linkClass\":null,\"mapField\":true,\"deleted\":0,\"definition\":{\"class\":\"neon\\\\\\\\core\\\\\\\\form\\\\\\\\fields\\\\\\\\Text\",\"classLabel\":\"Single Line Text\",\"id\":null,\"name\":\"title\",\"label\":\"Title\",\"hint\":\"The category title\",\"value\":null,\"required\":true,\"dataKey\":\"title\",\"validators\":{\"03dd89dd63804ae87e13c74161789a5d\":{\"class\":\"neon\\\\\\\\core\\\\\\\\validators\\\\\\\\RequiredValidator\",\"message\":\"This cannot be blank.\"}},\"placeholder\":\"\",\"deleted\":0,\"order\":0,\"mapField\":true,\"errors\":[],\"visible\":true,\"inline\":false,\"readOnly\":false,\"attributes\":[],\"printOnly\":false,\"showIf\":[],\"placeholderLabel\":false}},\"slug\":{\"memberRef\":\"slug\",\"name\":\"slug\",\"dataType\":\"textshort\",\"label\":\"Slug\",\"description\":\"\",\"choices\":null,\"linkClass\":null,\"mapField\":false,\"deleted\":0,\"definition\":{\"class\":\"neon\\\\\\\\cms\\\\\\\\form\\\\\\\\fields\\\\\\\\Slug\",\"classLabel\":null,\"id\":null,\"name\":\"slug\",\"label\":\"Slug\",\"hint\":\"\",\"value\":null,\"required\":false,\"dataKey\":\"slug\",\"validators\":[],\"placeholder\":\"\",\"deleted\":0,\"order\":1,\"mapField\":false,\"errors\":[],\"visible\":true,\"inline\":false,\"readOnly\":false,\"attributes\":[],\"printOnly\":false,\"showIf\":[],\"placeholderLabel\":false}},\"parent\":{\"memberRef\":\"parent\",\"name\":\"parent\",\"dataType\":\"link_uni\",\"label\":\"Parent\",\"description\":\"Parent category\",\"choices\":[],\"linkClass\":\"category\",\"mapField\":false,\"deleted\":0,\"definition\":{\"class\":\"neon\\\\\\\\core\\\\\\\\form\\\\\\\\fields\\\\\\\\SelectDynamic\",\"classLabel\":\"Link list\",\"id\":null,\"name\":\"parent\",\"label\":\"Parent\",\"hint\":\"Parent category\",\"value\":null,\"required\":false,\"dataKey\":\"parent\",\"validators\":[],\"placeholder\":\"\",\"deleted\":0,\"order\":2,\"mapField\":false,\"errors\":[],\"visible\":true,\"inline\":false,\"readOnly\":false,\"attributes\":[],\"printOnly\":false,\"showIf\":[],\"placeholderLabel\":false,\"items\":[],\"allowClear\":true,\"create\":false,\"dataMapProvider\":\"daedalus\",\"dataMapKey\":\"category\",\"dataMapFilters\":[],\"dataMapFields\":[]}}}}');");
m20200422_153724_dds_table_category_edit::addMigration('up', "SET foreign_key_checks = 1;");


//
// Down Migrations
//
m20200422_153724_dds_table_category_edit::addMigration('down', "SET foreign_key_checks = 0;");
m20200422_153724_dds_table_category_edit::addMigration('down', "REPLACE INTO `phoebe_class` (`phoebe_type`,`class_type`,`version`,`module`,`label`,`description`,`version_locked`,`volatile`,`object_history`,`created`,`updated`,`deleted`,`serialised_definition`) VALUES ('daedalus','category','1','phoebe','Category',null,'0','1','0','2020-04-17 20:57:23','2020-04-21 12:12:19','0','{\"class\":\"neon\\\\\\\\core\\\\\\\\form\\\\\\\\Form\",\"id\":\"category\",\"name\":\"category\",\"enableAjaxValidation\":true,\"enableAjaxSubmission\":false,\"label\":\"Category\",\"hint\":null,\"inline\":false,\"visible\":true,\"order\":1,\"action\":\"\",\"readOnly\":false,\"printOnly\":false,\"validationUrl\":null,\"attributes\":[],\"objectToken\":\"kSkzd1AnfFi9GkZa0L2gaD_fk-2UCvTDdykwLUuhVGOZd4XVf3tIYPdKUEBjFx45jnkjY7HbxlEOvvCLpGiQ8EFNBhwomWAHr0fg5UhJeQM=\",\"fields\":{\"title\":{\"memberRef\":\"title\",\"name\":\"title\",\"dataType\":\"textshort\",\"label\":\"Title\",\"description\":\"The category title\",\"choices\":null,\"linkClass\":null,\"mapField\":true,\"deleted\":0,\"definition\":{\"class\":\"neon\\\\\\\\core\\\\\\\\form\\\\\\\\fields\\\\\\\\Text\",\"classLabel\":\"Single Line Text\",\"id\":null,\"name\":\"title\",\"label\":\"Title\",\"hint\":\"The category title\",\"value\":null,\"required\":true,\"dataKey\":\"title\",\"validators\":{\"03dd89dd63804ae87e13c74161789a5d\":{\"class\":\"neon\\\\\\\\core\\\\\\\\validators\\\\\\\\RequiredValidator\",\"message\":\"This cannot be blank.\"}},\"placeholder\":\"\",\"deleted\":0,\"order\":0,\"mapField\":true,\"errors\":[],\"visible\":true,\"inline\":false,\"readOnly\":false,\"attributes\":[],\"printOnly\":false,\"showIf\":[],\"placeholderLabel\":false}},\"parent\":{\"memberRef\":\"parent\",\"name\":\"parent\",\"dataType\":\"link_uni\",\"label\":\"Parent\",\"description\":\"Parent category\",\"choices\":[],\"linkClass\":\"category\",\"mapField\":false,\"deleted\":0,\"definition\":{\"class\":\"neon\\\\\\\\core\\\\\\\\form\\\\\\\\fields\\\\\\\\SelectDynamic\",\"classLabel\":\"Link list\",\"id\":null,\"name\":\"parent\",\"label\":\"Parent\",\"hint\":\"Parent category\",\"value\":null,\"required\":false,\"dataKey\":\"parent\",\"validators\":[],\"placeholder\":\"\",\"deleted\":0,\"order\":1,\"mapField\":false,\"errors\":[],\"visible\":true,\"inline\":false,\"readOnly\":false,\"attributes\":[],\"printOnly\":false,\"showIf\":[],\"placeholderLabel\":false,\"items\":[],\"allowClear\":true,\"create\":false,\"dataMapProvider\":\"daedalus\",\"dataMapKey\":\"category\",\"dataMapFilters\":[]}}}}');");
m20200422_153724_dds_table_category_edit::addMigration('down', "REPLACE INTO `dds_member` (`class_type`,`member_ref`,`data_type_ref`,`label`,`description`,`choices`,`link_class`,`map_field`,`created`,`updated`,`deleted`) VALUES ('category','parent','link_uni','Parent','Parent category',null,'category','0','2020-04-17 20:58:07',null,'0');");
m20200422_153724_dds_table_category_edit::addMigration('down', "ALTER TABLE `ddt_category` DROP INDEX `slug`;");
m20200422_153724_dds_table_category_edit::addMigration('down', "ALTER TABLE `ddt_category` DROP `slug`;");
m20200422_153724_dds_table_category_edit::addMigration('down', "DELETE FROM `dds_member` WHERE `class_type`='category' AND `member_ref`='slug';");
m20200422_153724_dds_table_category_edit::addMigration('down', "REPLACE INTO `dds_member` (`class_type`,`member_ref`,`data_type_ref`,`label`,`description`,`choices`,`link_class`,`map_field`,`created`,`updated`,`deleted`) VALUES ('category','title','textshort','Title','The category title',null,null,'1','2020-04-17 20:57:23','2020-04-17 20:57:23','0');");
m20200422_153724_dds_table_category_edit::addMigration('down', "SET foreign_key_checks = 1;");
