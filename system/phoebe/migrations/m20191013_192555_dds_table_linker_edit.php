<?php

use yii\db\Migration;

class m20191013_192555_dds_table_linker_edit extends Migration
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
m20191013_192555_dds_table_linker_edit::addMigration('up', "SET foreign_key_checks = 0;");
m20191013_192555_dds_table_linker_edit::addMigration('up', "REPLACE INTO `dds_member` (`class_type`,`member_ref`,`data_type_ref`,`label`,`description`,`definition`,`choices`,`link_class`,`map_field`,`created`,`updated`,`deleted`) VALUES ('linker','dynamic_1','link_uni','One to One','','',null,'contact','0','2019-10-13 20:25:55',null,'0');");
m20191013_192555_dds_table_linker_edit::addMigration('up', "ALTER TABLE `ddt_linker` ADD `dynamic_1` CHAR(150) CHARACTER SET latin1 COLLATE latin1_general_cs DEFAULT NULL ;");
m20191013_192555_dds_table_linker_edit::addMigration('up', "ALTER TABLE `ddt_linker` ADD INDEX(`dynamic_1`);");
m20191013_192555_dds_table_linker_edit::addMigration('up', "REPLACE INTO `phoebe_class` (`phoebe_type`,`class_type`,`version`,`module`,`label`,`description`,`version_locked`,`volatile`,`object_history`,`created`,`updated`,`deleted`,`serialised_definition`) VALUES ('daedalus','linker','1','phoebe','Linker',null,'0','1','0','2019-07-12 20:26:36','2019-10-13 20:25:55','0','{\"class\":\"neon\\\\\\\\core\\\\\\\\form\\\\\\\\Form\",\"id\":\"linker\",\"name\":\"linker\",\"enableAjaxValidation\":true,\"enableAjaxSubmission\":false,\"label\":\"Linker\",\"hint\":null,\"inline\":false,\"visible\":true,\"order\":1,\"action\":\"\",\"readOnly\":false,\"printOnly\":false,\"validationUrl\":null,\"attributes\":[],\"fields\":{\"name\":{\"memberRef\":\"name\",\"name\":\"name\",\"dataType\":\"textshort\",\"label\":\"Name\",\"description\":\"\",\"choices\":null,\"linkClass\":null,\"mapField\":false,\"deleted\":0,\"definition\":{\"class\":\"neon\\\\\\\\core\\\\\\\\form\\\\\\\\fields\\\\\\\\Text\",\"classLabel\":\"Single Line Text\",\"id\":null,\"name\":\"name\",\"label\":\"Name\",\"hint\":\"\",\"value\":null,\"required\":false,\"dataKey\":\"name\",\"validators\":[],\"placeholder\":\"\",\"deleted\":0,\"order\":0,\"mapField\":false,\"errors\":[],\"visible\":true,\"inline\":false,\"readOnly\":false,\"attributes\":[],\"printOnly\":false,\"showIf\":[],\"placeholderLabel\":false}},\"image\":{\"memberRef\":\"image\",\"name\":\"image\",\"dataType\":\"image_ref\",\"label\":\"Image Browser\",\"description\":\"\",\"choices\":null,\"linkClass\":null,\"mapField\":false,\"deleted\":0,\"definition\":{\"class\":\"neon\\\\\\\\core\\\\\\\\form\\\\\\\\fields\\\\\\\\Image\",\"classLabel\":\"Image Selector\",\"id\":null,\"name\":\"image\",\"label\":\"Image Browser\",\"hint\":\"\",\"value\":null,\"required\":false,\"dataKey\":\"image\",\"validators\":[],\"placeholder\":\"\",\"deleted\":0,\"order\":1,\"mapField\":false,\"errors\":[],\"visible\":true,\"inline\":false,\"readOnly\":false,\"attributes\":[],\"printOnly\":false,\"showIf\":[],\"placeholderLabel\":false,\"crop\":false,\"cropWidth\":0,\"cropHeight\":0,\"fireflyUrl\":\"\",\"startPath\":\"\\\\/\"}},\"dynamic\":{\"memberRef\":\"dynamic\",\"name\":\"dynamic\",\"dataType\":\"link_uni\",\"label\":\"One to One\",\"description\":\"\",\"choices\":[],\"linkClass\":\"qwef\",\"mapField\":false,\"deleted\":0,\"definition\":{\"class\":\"neon\\\\\\\\core\\\\\\\\form\\\\\\\\fields\\\\\\\\SelectDynamic\",\"classLabel\":\"Link list\",\"id\":null,\"name\":\"dynamic\",\"label\":\"One to One\",\"hint\":\"\",\"value\":null,\"required\":false,\"dataKey\":\"dynamic\",\"validators\":[],\"placeholder\":\"\",\"deleted\":0,\"order\":2,\"mapField\":false,\"errors\":[],\"visible\":true,\"inline\":false,\"readOnly\":false,\"attributes\":[],\"printOnly\":false,\"showIf\":[],\"placeholderLabel\":false,\"items\":[],\"allowClear\":true,\"create\":true,\"dataMapProvider\":\"dds\",\"dataMapKey\":\"qwef\",\"dataMapFilters\":[]}},\"dynamic_1\":{\"memberRef\":\"dynamic_1\",\"name\":\"dynamic_1\",\"dataType\":\"link_uni\",\"label\":\"One to One\",\"description\":\"\",\"choices\":[],\"linkClass\":\"contact\",\"mapField\":false,\"deleted\":0,\"definition\":{\"class\":\"neon\\\\\\\\core\\\\\\\\form\\\\\\\\fields\\\\\\\\SelectDynamic\",\"classLabel\":\"Link list\",\"id\":null,\"name\":\"dynamic_1\",\"label\":\"One to One\",\"hint\":\"\",\"value\":null,\"required\":false,\"dataKey\":\"dynamic_1\",\"validators\":[],\"placeholder\":\"\",\"deleted\":0,\"order\":3,\"mapField\":false,\"errors\":[],\"visible\":true,\"inline\":false,\"readOnly\":false,\"attributes\":[],\"printOnly\":false,\"showIf\":[],\"placeholderLabel\":false,\"items\":[],\"allowClear\":true,\"create\":false,\"dataMapProvider\":\"dds\",\"dataMapKey\":\"contact\",\"dataMapFilters\":[]}}}}');");
m20191013_192555_dds_table_linker_edit::addMigration('up', "SET foreign_key_checks = 1;");


//
// Down Migrations
//
m20191013_192555_dds_table_linker_edit::addMigration('down', "SET foreign_key_checks = 0;");
m20191013_192555_dds_table_linker_edit::addMigration('down', "REPLACE INTO `phoebe_class` (`phoebe_type`,`class_type`,`version`,`module`,`label`,`description`,`version_locked`,`volatile`,`object_history`,`created`,`updated`,`deleted`,`serialised_definition`) VALUES ('daedalus','linker','1','phoebe','Linker',null,'0','1','0','2019-07-12 20:26:36','2019-10-13 20:25:18','0','{\"class\":\"neon\\\\\\\\core\\\\\\\\form\\\\\\\\Form\",\"id\":\"linker\",\"name\":\"linker\",\"enableAjaxValidation\":true,\"enableAjaxSubmission\":false,\"label\":\"Linker\",\"hint\":null,\"inline\":false,\"visible\":true,\"order\":1,\"action\":\"\",\"readOnly\":false,\"printOnly\":false,\"validationUrl\":null,\"attributes\":[],\"fields\":{\"name\":{\"memberRef\":\"name\",\"name\":\"name\",\"dataType\":\"textshort\",\"label\":\"Name\",\"description\":\"\",\"choices\":null,\"linkClass\":null,\"mapField\":false,\"deleted\":0,\"definition\":{\"class\":\"neon\\\\\\\\core\\\\\\\\form\\\\\\\\fields\\\\\\\\Text\",\"classLabel\":\"Single Line Text\",\"id\":null,\"name\":\"name\",\"label\":\"Name\",\"hint\":\"\",\"value\":null,\"required\":false,\"dataKey\":\"name\",\"validators\":[],\"placeholder\":\"\",\"deleted\":0,\"order\":0,\"mapField\":false,\"errors\":[],\"visible\":true,\"inline\":false,\"readOnly\":false,\"attributes\":[],\"printOnly\":false,\"showIf\":[],\"placeholderLabel\":false}},\"image\":{\"memberRef\":\"image\",\"name\":\"image\",\"dataType\":\"image_ref\",\"label\":\"Image Browser\",\"description\":\"\",\"choices\":null,\"linkClass\":null,\"mapField\":false,\"deleted\":0,\"definition\":{\"class\":\"neon\\\\\\\\core\\\\\\\\form\\\\\\\\fields\\\\\\\\Image\",\"classLabel\":\"Image Selector\",\"id\":null,\"name\":\"image\",\"label\":\"Image Browser\",\"hint\":\"\",\"value\":null,\"required\":false,\"dataKey\":\"image\",\"validators\":[],\"placeholder\":\"\",\"deleted\":0,\"order\":1,\"mapField\":false,\"errors\":[],\"visible\":true,\"inline\":false,\"readOnly\":false,\"attributes\":[],\"printOnly\":false,\"showIf\":[],\"placeholderLabel\":false,\"crop\":false,\"cropWidth\":0,\"cropHeight\":0,\"fireflyUrl\":\"\",\"startPath\":\"\\\\/\"}},\"dynamic\":{\"memberRef\":\"dynamic\",\"name\":\"dynamic\",\"dataType\":\"link_uni\",\"label\":\"One to One\",\"description\":\"\",\"choices\":[],\"linkClass\":\"qwef\",\"mapField\":false,\"deleted\":0,\"definition\":{\"class\":\"neon\\\\\\\\core\\\\\\\\form\\\\\\\\fields\\\\\\\\SelectDynamic\",\"classLabel\":\"Link list\",\"id\":null,\"name\":\"dynamic\",\"label\":\"One to One\",\"hint\":\"\",\"value\":null,\"required\":false,\"dataKey\":\"dynamic\",\"validators\":[],\"placeholder\":\"\",\"deleted\":0,\"order\":2,\"mapField\":false,\"errors\":[],\"visible\":true,\"inline\":false,\"readOnly\":false,\"attributes\":[],\"printOnly\":false,\"showIf\":[],\"placeholderLabel\":false,\"items\":[],\"allowClear\":true,\"create\":true,\"dataMapProvider\":\"dds\",\"dataMapKey\":\"qwef\",\"dataMapFilters\":[]}}}}');");
m20191013_192555_dds_table_linker_edit::addMigration('down', "ALTER TABLE `ddt_linker` DROP INDEX `dynamic_1`;");
m20191013_192555_dds_table_linker_edit::addMigration('down', "ALTER TABLE `ddt_linker` DROP `dynamic_1`;");
m20191013_192555_dds_table_linker_edit::addMigration('down', "DELETE FROM `dds_member` WHERE `class_type`='linker' AND `member_ref`='dynamic_1';");
m20191013_192555_dds_table_linker_edit::addMigration('down', "SET foreign_key_checks = 1;");
