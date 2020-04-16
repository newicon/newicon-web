<?php

use yii\db\Migration;

class m20200415_113547_dds_table_person_edit extends Migration
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
m20200415_113547_dds_table_person_edit::addMigration('up', "SET foreign_key_checks = 0;");
m20200415_113547_dds_table_person_edit::addMigration('up', "REPLACE INTO `dds_member` (`class_type`,`member_ref`,`data_type_ref`,`label`,`description`,`choices`,`link_class`,`map_field`,`created`,`updated`,`deleted`) VALUES ('person','user_id','link_uni','User Account','A user account if the person has one',null,'users','0','2019-12-12 17:36:47',null,'0');");
m20200415_113547_dds_table_person_edit::addMigration('up', "REPLACE INTO `dds_member` (`class_type`,`member_ref`,`data_type_ref`,`label`,`description`,`choices`,`link_class`,`map_field`,`created`,`updated`,`deleted`) VALUES ('person','role','textshort','Role','The role at newicon',null,null,'0','2019-12-28 15:48:46',null,'0');");
m20200415_113547_dds_table_person_edit::addMigration('up', "REPLACE INTO `dds_member` (`class_type`,`member_ref`,`data_type_ref`,`label`,`description`,`choices`,`link_class`,`map_field`,`created`,`updated`,`deleted`) VALUES ('person','display_name','textshort','Display Name','The name of the person as you would like it displayed',null,null,'1','2019-12-12 17:36:47','2019-12-28 15:39:00','0');");
m20200415_113547_dds_table_person_edit::addMigration('up', "REPLACE INTO `dds_member` (`class_type`,`member_ref`,`data_type_ref`,`label`,`description`,`choices`,`link_class`,`map_field`,`created`,`updated`,`deleted`) VALUES ('person','avatar','image_ref','User Avatar Image','An image used to represent this person - a square image usually used in in small sections',null,null,'0','2019-12-12 17:36:47','2020-04-15 12:22:53','0');");
m20200415_113547_dds_table_person_edit::addMigration('up', "REPLACE INTO `dds_member` (`class_type`,`member_ref`,`data_type_ref`,`label`,`description`,`choices`,`link_class`,`map_field`,`created`,`updated`,`deleted`) VALUES ('person','profile_image','image_ref','Large profile image','Used as a large, almost full body, image on the team page',null,null,'0','2020-04-15 12:22:53',null,'0');");
m20200415_113547_dds_table_person_edit::addMigration('up', "REPLACE INTO `phoebe_class` (`phoebe_type`,`class_type`,`version`,`module`,`label`,`description`,`version_locked`,`volatile`,`object_history`,`created`,`updated`,`deleted`,`serialised_definition`) VALUES ('daedalus','person','1','phoebe','Person',null,'0','1','0','2019-12-12 17:36:32','2020-04-15 12:35:47','0','{\"class\":\"neon\\\\\\\\core\\\\\\\\form\\\\\\\\Form\",\"id\":\"person\",\"name\":\"person\",\"enableAjaxValidation\":true,\"enableAjaxSubmission\":false,\"label\":\"Person\",\"hint\":\"\",\"inline\":false,\"visible\":true,\"order\":1,\"action\":\"\",\"readOnly\":false,\"printOnly\":false,\"validationUrl\":null,\"attributes\":[],\"objectToken\":\"DzaVIjEXcn3dBZDlQmY-E4m0cfl9Cq3-ddBjxZ-8VnqUiisy_UiJrTtXrRsJJUAYuzGh13dSD3e71kOdGDidnxDkUveoi29L8roZBp8t65w=\",\"fields\":{\"user_id\":{\"memberRef\":\"user_id\",\"name\":\"user_id\",\"dataType\":\"link_uni\",\"label\":\"User Account\",\"description\":\"A user account if the person has one\",\"choices\":[],\"linkClass\":\"users\",\"mapField\":false,\"deleted\":0,\"definition\":{\"class\":\"neon\\\\\\\\core\\\\\\\\form\\\\\\\\fields\\\\\\\\SelectDynamic\",\"classLabel\":\"Link list\",\"id\":null,\"name\":\"user_id\",\"label\":\"User Account\",\"hint\":\"A user account if the person has one\",\"value\":null,\"required\":false,\"dataKey\":\"user_id\",\"validators\":[],\"placeholder\":\"\",\"deleted\":0,\"order\":0,\"mapField\":false,\"errors\":[],\"visible\":true,\"inline\":false,\"readOnly\":false,\"attributes\":[],\"printOnly\":false,\"showIf\":[],\"placeholderLabel\":false,\"items\":[],\"allowClear\":true,\"create\":false,\"dataMapProvider\":\"user\",\"dataMapKey\":\"users\",\"dataMapFilters\":[]}},\"role\":{\"memberRef\":\"role\",\"name\":\"role\",\"dataType\":\"textshort\",\"label\":\"Role\",\"description\":\"The role at newicon\",\"choices\":null,\"linkClass\":null,\"mapField\":false,\"deleted\":0,\"definition\":{\"class\":\"neon\\\\\\\\core\\\\\\\\form\\\\\\\\fields\\\\\\\\Text\",\"classLabel\":\"Single Line Text\",\"id\":null,\"name\":\"role\",\"label\":\"Role\",\"hint\":\"The role at newicon\",\"value\":null,\"required\":false,\"dataKey\":\"role\",\"validators\":[],\"placeholder\":\"e.g. CTCO - Chief Tea and Coffee Officer\",\"deleted\":0,\"order\":1,\"mapField\":false,\"errors\":[],\"visible\":true,\"inline\":false,\"readOnly\":false,\"attributes\":[],\"printOnly\":false,\"showIf\":[],\"placeholderLabel\":false}},\"display_name\":{\"memberRef\":\"display_name\",\"name\":\"display_name\",\"dataType\":\"textshort\",\"label\":\"Display Name\",\"description\":\"The name of the person as you would like it displayed\",\"choices\":null,\"linkClass\":null,\"mapField\":true,\"deleted\":0,\"definition\":{\"class\":\"neon\\\\\\\\core\\\\\\\\form\\\\\\\\fields\\\\\\\\Text\",\"classLabel\":\"Single Line Text\",\"id\":null,\"name\":\"display_name\",\"label\":\"Display Name\",\"hint\":\"The name of the person as you would like it displayed\",\"value\":null,\"required\":false,\"dataKey\":\"display_name\",\"validators\":[],\"placeholder\":\"\",\"deleted\":0,\"order\":2,\"mapField\":true,\"errors\":[],\"visible\":true,\"inline\":false,\"readOnly\":false,\"attributes\":[],\"printOnly\":false,\"showIf\":[],\"placeholderLabel\":false}},\"avatar\":{\"memberRef\":\"avatar\",\"name\":\"avatar\",\"dataType\":\"image_ref\",\"label\":\"User Avatar Image\",\"description\":\"An image used to represent this person - a square image usually used in in small sections\",\"choices\":null,\"linkClass\":null,\"mapField\":false,\"deleted\":0,\"definition\":{\"class\":\"neon\\\\\\\\core\\\\\\\\form\\\\\\\\fields\\\\\\\\Image\",\"classLabel\":\"Image Selector\",\"id\":null,\"name\":\"avatar\",\"label\":\"User Avatar Image\",\"hint\":\"An image used to represent this person - a square image usually used in in small sections\",\"value\":null,\"required\":false,\"dataKey\":\"avatar\",\"validators\":[],\"placeholder\":\"\",\"deleted\":0,\"order\":3,\"mapField\":false,\"errors\":[],\"visible\":true,\"inline\":false,\"readOnly\":false,\"attributes\":[],\"printOnly\":false,\"showIf\":[],\"placeholderLabel\":false,\"crop\":false,\"cropWidth\":0,\"cropHeight\":0,\"fireflyUrl\":\"\",\"startPath\":\"\\\\/\"}},\"profile_image\":{\"memberRef\":\"profile_image\",\"name\":\"profile_image\",\"dataType\":\"image_ref\",\"label\":\"Large profile image\",\"description\":\"Used as a large, almost full body, image on the team page\",\"choices\":null,\"linkClass\":null,\"mapField\":false,\"deleted\":0,\"definition\":{\"class\":\"neon\\\\\\\\core\\\\\\\\form\\\\\\\\fields\\\\\\\\Image\",\"classLabel\":\"Image Selector\",\"id\":null,\"name\":\"profile_image\",\"label\":\"Large profile image\",\"hint\":\"Used as a large, almost full body, image on the team page\",\"value\":null,\"required\":false,\"dataKey\":\"profile_image\",\"validators\":[],\"placeholder\":\"\",\"deleted\":0,\"order\":4,\"mapField\":false,\"errors\":[],\"visible\":true,\"inline\":false,\"readOnly\":false,\"attributes\":[],\"printOnly\":false,\"showIf\":[],\"placeholderLabel\":false,\"crop\":true,\"cropWidth\":1,\"cropHeight\":2,\"fireflyUrl\":\"\",\"startPath\":\"\\\\/\"}}}}');");
m20200415_113547_dds_table_person_edit::addMigration('up', "SET foreign_key_checks = 1;");


//
// Down Migrations
//
m20200415_113547_dds_table_person_edit::addMigration('down', "SET foreign_key_checks = 0;");
m20200415_113547_dds_table_person_edit::addMigration('down', "REPLACE INTO `phoebe_class` (`phoebe_type`,`class_type`,`version`,`module`,`label`,`description`,`version_locked`,`volatile`,`object_history`,`created`,`updated`,`deleted`,`serialised_definition`) VALUES ('daedalus','person','1','phoebe','Person',null,'0','1','0','2019-12-12 17:36:32','2020-04-15 12:22:53','0','{\"class\":\"neon\\\\\\\\core\\\\\\\\form\\\\\\\\Form\",\"id\":\"person\",\"name\":\"person\",\"enableAjaxValidation\":true,\"enableAjaxSubmission\":false,\"label\":\"Person\",\"hint\":\"\",\"inline\":false,\"visible\":true,\"order\":1,\"action\":\"\",\"readOnly\":false,\"printOnly\":false,\"validationUrl\":null,\"attributes\":[],\"objectToken\":\"MVrFCT4gYUWWU_yaxue6k3J1rZ29Z3rasLLYlwg4Q_VZStsfPdQcjgM_8zxcFwN0pDHI-KDU2PVHEZStiQND74LQ6vY6AHDGa3jtfVvgf-w=\",\"fields\":{\"user_id\":{\"memberRef\":\"user_id\",\"name\":\"user_id\",\"dataType\":\"link_uni\",\"label\":\"User Account\",\"description\":\"A user account if the person has one\",\"choices\":[],\"linkClass\":\"users\",\"mapField\":false,\"deleted\":0,\"definition\":{\"class\":\"neon\\\\\\\\core\\\\\\\\form\\\\\\\\fields\\\\\\\\SelectDynamic\",\"classLabel\":\"Link list\",\"id\":null,\"name\":\"user_id\",\"label\":\"User Account\",\"hint\":\"A user account if the person has one\",\"value\":null,\"required\":false,\"dataKey\":\"user_id\",\"validators\":[],\"placeholder\":\"\",\"deleted\":0,\"order\":0,\"mapField\":false,\"errors\":[],\"visible\":true,\"inline\":false,\"readOnly\":false,\"attributes\":[],\"printOnly\":false,\"showIf\":[],\"placeholderLabel\":false,\"items\":[],\"allowClear\":true,\"create\":false,\"dataMapProvider\":\"user\",\"dataMapKey\":\"users\",\"dataMapFilters\":[]}},\"role\":{\"memberRef\":\"role\",\"name\":\"role\",\"dataType\":\"textshort\",\"label\":\"Role\",\"description\":\"The role at newicon\",\"choices\":null,\"linkClass\":null,\"mapField\":false,\"deleted\":0,\"definition\":{\"class\":\"neon\\\\\\\\core\\\\\\\\form\\\\\\\\fields\\\\\\\\Text\",\"classLabel\":\"Single Line Text\",\"id\":null,\"name\":\"role\",\"label\":\"Role\",\"hint\":\"The role at newicon\",\"value\":null,\"required\":false,\"dataKey\":\"role\",\"validators\":[],\"placeholder\":\"e.g. CTCO - Chief Tea and Coffee Officer\",\"deleted\":0,\"order\":1,\"mapField\":false,\"errors\":[],\"visible\":true,\"inline\":false,\"readOnly\":false,\"attributes\":[],\"printOnly\":false,\"showIf\":[],\"placeholderLabel\":false}},\"display_name\":{\"memberRef\":\"display_name\",\"name\":\"display_name\",\"dataType\":\"textshort\",\"label\":\"Display Name\",\"description\":\"The name of the person as you would like it displayed\",\"choices\":null,\"linkClass\":null,\"mapField\":true,\"deleted\":0,\"definition\":{\"class\":\"neon\\\\\\\\core\\\\\\\\form\\\\\\\\fields\\\\\\\\Text\",\"classLabel\":\"Single Line Text\",\"id\":null,\"name\":\"display_name\",\"label\":\"Display Name\",\"hint\":\"The name of the person as you would like it displayed\",\"value\":null,\"required\":false,\"dataKey\":\"display_name\",\"validators\":[],\"placeholder\":\"\",\"deleted\":0,\"order\":2,\"mapField\":true,\"errors\":[],\"visible\":true,\"inline\":false,\"readOnly\":false,\"attributes\":[],\"printOnly\":false,\"showIf\":[],\"placeholderLabel\":false}},\"avatar\":{\"memberRef\":\"avatar\",\"name\":\"avatar\",\"dataType\":\"image_ref\",\"label\":\"User Avatar Image\",\"description\":\"An image used to represent this person - a square image usually used in in small sections\",\"choices\":null,\"linkClass\":null,\"mapField\":false,\"deleted\":0,\"definition\":{\"class\":\"neon\\\\\\\\core\\\\\\\\form\\\\\\\\fields\\\\\\\\Image\",\"classLabel\":\"Image Selector\",\"id\":null,\"name\":\"avatar\",\"label\":\"User Avatar Image\",\"hint\":\"An image used to represent this person - a square image usually used in in small sections\",\"value\":null,\"required\":false,\"dataKey\":\"avatar\",\"validators\":[],\"placeholder\":\"\",\"deleted\":0,\"order\":3,\"mapField\":false,\"errors\":[],\"visible\":true,\"inline\":false,\"readOnly\":false,\"attributes\":[],\"printOnly\":false,\"showIf\":[],\"placeholderLabel\":false,\"crop\":false,\"cropWidth\":0,\"cropHeight\":0,\"fireflyUrl\":\"\",\"startPath\":\"\\\\/\"}},\"profile_image\":{\"memberRef\":\"profile_image\",\"name\":\"profile_image\",\"dataType\":\"image_ref\",\"label\":\"Large profile image\",\"description\":\"Used as a large, almost full body, image on the team page\",\"choices\":null,\"linkClass\":null,\"mapField\":false,\"deleted\":0,\"definition\":{\"class\":\"neon\\\\\\\\core\\\\\\\\form\\\\\\\\fields\\\\\\\\Image\",\"classLabel\":\"Image Selector\",\"id\":null,\"name\":\"profile_image\",\"label\":\"Large profile image\",\"hint\":\"Used as a large, almost full body, image on the team page\",\"value\":null,\"required\":false,\"dataKey\":\"profile_image\",\"validators\":[],\"placeholder\":\"\",\"deleted\":0,\"order\":4,\"mapField\":false,\"errors\":[],\"visible\":true,\"inline\":false,\"readOnly\":false,\"attributes\":[],\"printOnly\":false,\"showIf\":[],\"placeholderLabel\":false,\"crop\":true,\"cropWidth\":235,\"cropHeight\":475,\"fireflyUrl\":\"\",\"startPath\":\"\\\\/\"}}}}');");
m20200415_113547_dds_table_person_edit::addMigration('down', "REPLACE INTO `dds_member` (`class_type`,`member_ref`,`data_type_ref`,`label`,`description`,`choices`,`link_class`,`map_field`,`created`,`updated`,`deleted`) VALUES ('person','profile_image','image_ref','Large profile image','Used as a large, almost full body, image on the team page',null,null,'0','2020-04-15 12:22:53',null,'0');");
m20200415_113547_dds_table_person_edit::addMigration('down', "REPLACE INTO `dds_member` (`class_type`,`member_ref`,`data_type_ref`,`label`,`description`,`choices`,`link_class`,`map_field`,`created`,`updated`,`deleted`) VALUES ('person','avatar','image_ref','User Avatar Image','An image used to represent this person - a square image usually used in in small sections',null,null,'0','2019-12-12 17:36:47','2020-04-15 12:22:53','0');");
m20200415_113547_dds_table_person_edit::addMigration('down', "REPLACE INTO `dds_member` (`class_type`,`member_ref`,`data_type_ref`,`label`,`description`,`choices`,`link_class`,`map_field`,`created`,`updated`,`deleted`) VALUES ('person','display_name','textshort','Display Name','The name of the person as you would like it displayed',null,null,'1','2019-12-12 17:36:47','2019-12-28 15:39:00','0');");
m20200415_113547_dds_table_person_edit::addMigration('down', "REPLACE INTO `dds_member` (`class_type`,`member_ref`,`data_type_ref`,`label`,`description`,`choices`,`link_class`,`map_field`,`created`,`updated`,`deleted`) VALUES ('person','role','textshort','Role','The role at newicon',null,null,'0','2019-12-28 15:48:46',null,'0');");
m20200415_113547_dds_table_person_edit::addMigration('down', "REPLACE INTO `dds_member` (`class_type`,`member_ref`,`data_type_ref`,`label`,`description`,`choices`,`link_class`,`map_field`,`created`,`updated`,`deleted`) VALUES ('person','user_id','link_uni','User Account','A user account if the person has one',null,'users','0','2019-12-12 17:36:47',null,'0');");
m20200415_113547_dds_table_person_edit::addMigration('down', "SET foreign_key_checks = 1;");
