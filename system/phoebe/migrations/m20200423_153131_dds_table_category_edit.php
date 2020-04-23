<?php

use yii\db\Migration;

class m20200423_153131_dds_table_category_edit extends Migration
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
m20200423_153131_dds_table_category_edit::addMigration('up', "SET foreign_key_checks = 0;");
m20200423_153131_dds_table_category_edit::addMigration('up', "REPLACE INTO `dds_member` (`class_type`,`member_ref`,`data_type_ref`,`label`,`description`,`choices`,`link_class`,`map_field`,`created`,`updated`,`deleted`) VALUES ('category','title','textshort','Title','The category title',null,null,'1','2020-04-17 20:57:23','2020-04-17 20:57:23','0');");
m20200423_153131_dds_table_category_edit::addMigration('up', "REPLACE INTO `dds_member` (`class_type`,`member_ref`,`data_type_ref`,`label`,`description`,`choices`,`link_class`,`map_field`,`created`,`updated`,`deleted`) VALUES ('category','slug','textshort','Slug','',null,null,'0','2020-04-22 16:37:24',null,'0');");
m20200423_153131_dds_table_category_edit::addMigration('up', "REPLACE INTO `dds_member` (`class_type`,`member_ref`,`data_type_ref`,`label`,`description`,`choices`,`link_class`,`map_field`,`created`,`updated`,`deleted`) VALUES ('category','parent','link_uni','Parent','Parent category',null,'category','0','2020-04-17 20:58:07',null,'0');");
m20200423_153131_dds_table_category_edit::addMigration('up', "REPLACE INTO `dds_member` (`class_type`,`member_ref`,`data_type_ref`,`label`,`description`,`choices`,`link_class`,`map_field`,`created`,`updated`,`deleted`) VALUES ('category','order','integer','Order','The order this category should appear',null,null,'0','2020-04-23 16:31:31',null,'0');");
m20200423_153131_dds_table_category_edit::addMigration('up', "ALTER TABLE `ddt_category` ADD `order` INT DEFAULT NULL ;");
m20200423_153131_dds_table_category_edit::addMigration('up', "ALTER TABLE `ddt_category` ADD INDEX(`order`);");
m20200423_153131_dds_table_category_edit::addMigration('up', "REPLACE INTO `phoebe_class` (`phoebe_type`,`class_type`,`version`,`module`,`label`,`description`,`version_locked`,`volatile`,`object_history`,`created`,`updated`,`deleted`,`serialised_definition`) VALUES ('daedalus','category','1','phoebe','Category',null,'0','1','0','2020-04-17 20:57:23','2020-04-23 16:31:31','0','{\"class\":\"neon\\\\\\\\core\\\\\\\\form\\\\\\\\Form\",\"id\":\"category\",\"name\":\"category\",\"enableAjaxValidation\":true,\"enableAjaxSubmission\":false,\"label\":\"Category\",\"hint\":null,\"inline\":false,\"visible\":true,\"order\":1,\"action\":\"\",\"readOnly\":false,\"printOnly\":false,\"validationUrl\":null,\"attributes\":[],\"objectToken\":\"UpG0JkxerJmbCrFbB2OCLsm4fa3YredQy7KHGMxvULYKt5fhTjIIEGai0BYoaJmrqTqCOWZXtUz62U3IvZmEaarQ4Xr1VmSGa47xgi1WPXU=\",\"fields\":{\"title\":{\"memberRef\":\"title\",\"name\":\"title\",\"dataType\":\"textshort\",\"label\":\"Title\",\"description\":\"The category title\",\"choices\":null,\"linkClass\":null,\"mapField\":true,\"deleted\":0,\"definition\":{\"class\":\"neon\\\\\\\\core\\\\\\\\form\\\\\\\\fields\\\\\\\\Text\",\"classLabel\":\"Single Line Text\",\"id\":null,\"name\":\"title\",\"label\":\"Title\",\"hint\":\"The category title\",\"value\":null,\"required\":true,\"dataKey\":\"title\",\"validators\":{\"03dd89dd63804ae87e13c74161789a5d\":{\"class\":\"neon\\\\\\\\core\\\\\\\\validators\\\\\\\\RequiredValidator\",\"message\":\"This cannot be blank.\"}},\"placeholder\":\"\",\"deleted\":0,\"order\":0,\"mapField\":true,\"errors\":[],\"visible\":true,\"inline\":false,\"readOnly\":false,\"attributes\":[],\"printOnly\":false,\"showIf\":[],\"placeholderLabel\":false}},\"slug\":{\"memberRef\":\"slug\",\"name\":\"slug\",\"dataType\":\"textshort\",\"label\":\"Slug\",\"description\":\"\",\"choices\":null,\"linkClass\":null,\"mapField\":false,\"deleted\":0,\"definition\":{\"class\":\"neon\\\\\\\\cms\\\\\\\\form\\\\\\\\fields\\\\\\\\Slug\",\"classLabel\":null,\"id\":null,\"name\":\"slug\",\"label\":\"Slug\",\"hint\":\"\",\"value\":null,\"required\":true,\"dataKey\":\"slug\",\"validators\":{\"03dd89dd63804ae87e13c74161789a5d\":{\"class\":\"neon\\\\\\\\core\\\\\\\\validators\\\\\\\\RequiredValidator\",\"message\":\"This cannot be blank.\"}},\"placeholder\":\"\",\"deleted\":0,\"order\":1,\"mapField\":false,\"errors\":[],\"visible\":true,\"inline\":false,\"readOnly\":false,\"attributes\":[],\"printOnly\":false,\"showIf\":[],\"placeholderLabel\":false}},\"parent\":{\"memberRef\":\"parent\",\"name\":\"parent\",\"dataType\":\"link_uni\",\"label\":\"Parent\",\"description\":\"Parent category\",\"choices\":[],\"linkClass\":\"category\",\"mapField\":false,\"deleted\":0,\"definition\":{\"class\":\"neon\\\\\\\\core\\\\\\\\form\\\\\\\\fields\\\\\\\\SelectDynamic\",\"classLabel\":\"Link list\",\"id\":null,\"name\":\"parent\",\"label\":\"Parent\",\"hint\":\"Parent category\",\"value\":null,\"required\":false,\"dataKey\":\"parent\",\"validators\":[],\"placeholder\":\"\",\"deleted\":0,\"order\":2,\"mapField\":false,\"errors\":[],\"visible\":true,\"inline\":false,\"readOnly\":false,\"attributes\":[],\"printOnly\":false,\"showIf\":[],\"placeholderLabel\":false,\"items\":[],\"allowClear\":true,\"create\":false,\"dataMapProvider\":\"daedalus\",\"dataMapKey\":\"category\",\"dataMapFilters\":[],\"dataMapFields\":[]}},\"order\":{\"memberRef\":\"order\",\"name\":\"order\",\"dataType\":\"integer\",\"label\":\"Order\",\"description\":\"The order this category should appear\",\"choices\":null,\"linkClass\":null,\"mapField\":false,\"deleted\":0,\"definition\":{\"class\":\"neon\\\\\\\\core\\\\\\\\form\\\\\\\\fields\\\\\\\\Integer\",\"classLabel\":\"Integer\",\"id\":null,\"name\":\"order\",\"label\":\"Order\",\"hint\":\"The order this category should appear\",\"value\":null,\"required\":false,\"dataKey\":\"order\",\"validators\":[],\"placeholder\":\"\",\"deleted\":0,\"order\":3,\"mapField\":false,\"errors\":[],\"visible\":true,\"inline\":false,\"readOnly\":false,\"attributes\":[],\"printOnly\":false,\"showIf\":[],\"placeholderLabel\":false,\"decimal\":1}}}}');");
m20200423_153131_dds_table_category_edit::addMigration('up', "SET foreign_key_checks = 1;");


//
// Down Migrations
//
m20200423_153131_dds_table_category_edit::addMigration('down', "SET foreign_key_checks = 0;");
m20200423_153131_dds_table_category_edit::addMigration('down', "REPLACE INTO `phoebe_class` (`phoebe_type`,`class_type`,`version`,`module`,`label`,`description`,`version_locked`,`volatile`,`object_history`,`created`,`updated`,`deleted`,`serialised_definition`) VALUES ('daedalus','category','1','phoebe','Category',null,'0','1','0','2020-04-17 20:57:23','2020-04-23 00:38:35','0','{\"class\":\"neon\\\\\\\\core\\\\\\\\form\\\\\\\\Form\",\"id\":\"category\",\"name\":\"category\",\"enableAjaxValidation\":true,\"enableAjaxSubmission\":false,\"label\":\"Category\",\"hint\":null,\"inline\":false,\"visible\":true,\"order\":1,\"action\":\"\",\"readOnly\":false,\"printOnly\":false,\"validationUrl\":null,\"attributes\":[],\"objectToken\":\"ujwOkeSXkforGaF6op2BmsZg4BLM4oh2wdZ0FztIIn6ZKJcRr8vg19hfPqaBr6OcTynFTJKu5_j1VtMq_4awFfCwRSVdcBZHrUunIM79g-8=\",\"fields\":{\"title\":{\"memberRef\":\"title\",\"name\":\"title\",\"dataType\":\"textshort\",\"label\":\"Title\",\"description\":\"The category title\",\"choices\":null,\"linkClass\":null,\"mapField\":true,\"deleted\":0,\"definition\":{\"class\":\"neon\\\\\\\\core\\\\\\\\form\\\\\\\\fields\\\\\\\\Text\",\"classLabel\":\"Single Line Text\",\"id\":null,\"name\":\"title\",\"label\":\"Title\",\"hint\":\"The category title\",\"value\":null,\"required\":true,\"dataKey\":\"title\",\"validators\":{\"03dd89dd63804ae87e13c74161789a5d\":{\"class\":\"neon\\\\\\\\core\\\\\\\\validators\\\\\\\\RequiredValidator\",\"message\":\"This cannot be blank.\"}},\"placeholder\":\"\",\"deleted\":0,\"order\":0,\"mapField\":true,\"errors\":[],\"visible\":true,\"inline\":false,\"readOnly\":false,\"attributes\":[],\"printOnly\":false,\"showIf\":[],\"placeholderLabel\":false}},\"slug\":{\"memberRef\":\"slug\",\"name\":\"slug\",\"dataType\":\"textshort\",\"label\":\"Slug\",\"description\":\"\",\"choices\":null,\"linkClass\":null,\"mapField\":false,\"deleted\":0,\"definition\":{\"class\":\"neon\\\\\\\\cms\\\\\\\\form\\\\\\\\fields\\\\\\\\Slug\",\"classLabel\":null,\"id\":null,\"name\":\"slug\",\"label\":\"Slug\",\"hint\":\"\",\"value\":null,\"required\":true,\"dataKey\":\"slug\",\"validators\":{\"03dd89dd63804ae87e13c74161789a5d\":{\"class\":\"neon\\\\\\\\core\\\\\\\\validators\\\\\\\\RequiredValidator\",\"message\":\"This cannot be blank.\"}},\"placeholder\":\"\",\"deleted\":0,\"order\":1,\"mapField\":false,\"errors\":[],\"visible\":true,\"inline\":false,\"readOnly\":false,\"attributes\":[],\"printOnly\":false,\"showIf\":[],\"placeholderLabel\":false}},\"parent\":{\"memberRef\":\"parent\",\"name\":\"parent\",\"dataType\":\"link_uni\",\"label\":\"Parent\",\"description\":\"Parent category\",\"choices\":[],\"linkClass\":\"category\",\"mapField\":false,\"deleted\":0,\"definition\":{\"class\":\"neon\\\\\\\\core\\\\\\\\form\\\\\\\\fields\\\\\\\\SelectDynamic\",\"classLabel\":\"Link list\",\"id\":null,\"name\":\"parent\",\"label\":\"Parent\",\"hint\":\"Parent category\",\"value\":null,\"required\":false,\"dataKey\":\"parent\",\"validators\":[],\"placeholder\":\"\",\"deleted\":0,\"order\":2,\"mapField\":false,\"errors\":[],\"visible\":true,\"inline\":false,\"readOnly\":false,\"attributes\":[],\"printOnly\":false,\"showIf\":[],\"placeholderLabel\":false,\"items\":[],\"allowClear\":true,\"create\":false,\"dataMapProvider\":\"daedalus\",\"dataMapKey\":\"category\",\"dataMapFilters\":[],\"dataMapFields\":[]}}}}');");
m20200423_153131_dds_table_category_edit::addMigration('down', "ALTER TABLE `ddt_category` DROP INDEX `order`;");
m20200423_153131_dds_table_category_edit::addMigration('down', "ALTER TABLE `ddt_category` DROP `order`;");
m20200423_153131_dds_table_category_edit::addMigration('down', "DELETE FROM `dds_member` WHERE `class_type`='category' AND `member_ref`='order';");
m20200423_153131_dds_table_category_edit::addMigration('down', "REPLACE INTO `dds_member` (`class_type`,`member_ref`,`data_type_ref`,`label`,`description`,`choices`,`link_class`,`map_field`,`created`,`updated`,`deleted`) VALUES ('category','parent','link_uni','Parent','Parent category',null,'category','0','2020-04-17 20:58:07',null,'0');");
m20200423_153131_dds_table_category_edit::addMigration('down', "REPLACE INTO `dds_member` (`class_type`,`member_ref`,`data_type_ref`,`label`,`description`,`choices`,`link_class`,`map_field`,`created`,`updated`,`deleted`) VALUES ('category','slug','textshort','Slug','',null,null,'0','2020-04-22 16:37:24',null,'0');");
m20200423_153131_dds_table_category_edit::addMigration('down', "REPLACE INTO `dds_member` (`class_type`,`member_ref`,`data_type_ref`,`label`,`description`,`choices`,`link_class`,`map_field`,`created`,`updated`,`deleted`) VALUES ('category','title','textshort','Title','The category title',null,null,'1','2020-04-17 20:57:23','2020-04-17 20:57:23','0');");
m20200423_153131_dds_table_category_edit::addMigration('down', "SET foreign_key_checks = 1;");
