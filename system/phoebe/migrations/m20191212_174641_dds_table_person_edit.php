<?php

use yii\db\Migration;

class m20191212_174641_dds_table_person_edit extends Migration
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
m20191212_174641_dds_table_person_edit::addMigration('up', "SET foreign_key_checks = 0;");
m20191212_174641_dds_table_person_edit::addMigration('up', "UPDATE `dds_member` SET `map_field`=(IF (`member_ref`='display_name', 1, 0)) WHERE `class_type`='person';");
m20191212_174641_dds_table_person_edit::addMigration('up', "REPLACE INTO `phoebe_class` (`phoebe_type`,`class_type`,`version`,`module`,`label`,`description`,`version_locked`,`volatile`,`object_history`,`created`,`updated`,`deleted`,`serialised_definition`) VALUES ('daedalus','person','1','phoebe','Person',null,'0','1','0','2019-12-12 17:36:32','2019-12-12 17:46:41','0','{\"class\":\"neon\\\\\\\\core\\\\\\\\form\\\\\\\\Form\",\"id\":\"person\",\"name\":\"person\",\"enableAjaxValidation\":true,\"enableAjaxSubmission\":false,\"label\":\"Person\",\"hint\":\"\",\"inline\":false,\"visible\":true,\"order\":1,\"action\":\"\",\"readOnly\":false,\"printOnly\":false,\"validationUrl\":null,\"attributes\":[],\"objectToken\":\"fmHY_xOR6oGHqK7ixaTbBpm3u5JdJSV6nKJdhDj4tw9PKvW71sQm8htT7Zt3o4ywtJiY0fCUvTD4jtqmbRccQv2QO7cOndM8fknEiuKmEsY=\",\"fields\":{\"user_id\":{\"memberRef\":\"user_id\",\"name\":\"user_id\",\"dataType\":\"link_uni\",\"label\":\"User Account\",\"description\":\"A user account if the person has one\",\"choices\":[],\"linkClass\":\"users\",\"mapField\":false,\"deleted\":0,\"definition\":{\"class\":\"neon\\\\\\\\core\\\\\\\\form\\\\\\\\fields\\\\\\\\SelectDynamic\",\"classLabel\":\"Link list\",\"id\":null,\"name\":\"user_id\",\"label\":\"User Account\",\"hint\":\"A user account if the person has one\",\"value\":null,\"required\":false,\"dataKey\":\"user_id\",\"validators\":[],\"placeholder\":\"\",\"deleted\":0,\"order\":0,\"mapField\":false,\"errors\":[],\"visible\":true,\"inline\":false,\"readOnly\":false,\"attributes\":[],\"printOnly\":false,\"showIf\":[],\"placeholderLabel\":false,\"items\":[],\"allowClear\":true,\"create\":false,\"dataMapProvider\":\"user\",\"dataMapKey\":\"users\",\"dataMapFilters\":[]}},\"display_name\":{\"memberRef\":\"display_name\",\"name\":\"display_name\",\"dataType\":\"textshort\",\"label\":\"Display Name\",\"description\":\"The name of the person as you would like it displayed\",\"choices\":null,\"linkClass\":null,\"mapField\":true,\"deleted\":0,\"definition\":{\"class\":\"neon\\\\\\\\core\\\\\\\\form\\\\\\\\fields\\\\\\\\Text\",\"classLabel\":\"Single Line Text\",\"id\":null,\"name\":\"display_name\",\"label\":\"Display Name\",\"hint\":\"The name of the person as you would like it displayed\",\"value\":null,\"required\":false,\"dataKey\":\"display_name\",\"validators\":[],\"placeholder\":\"\",\"deleted\":0,\"order\":1,\"mapField\":true,\"errors\":[],\"visible\":true,\"inline\":false,\"readOnly\":false,\"attributes\":[],\"printOnly\":false,\"showIf\":[],\"placeholderLabel\":false}},\"avatar\":{\"memberRef\":\"avatar\",\"name\":\"avatar\",\"dataType\":\"image_ref\",\"label\":\"User Avatar Image\",\"description\":\"An image used to represent this person\",\"choices\":null,\"linkClass\":null,\"mapField\":false,\"deleted\":0,\"definition\":{\"class\":\"neon\\\\\\\\core\\\\\\\\form\\\\\\\\fields\\\\\\\\Image\",\"classLabel\":\"Image Selector\",\"id\":null,\"name\":\"avatar\",\"label\":\"User Avatar Image\",\"hint\":\"An image used to represent this person\",\"value\":null,\"required\":false,\"dataKey\":\"avatar\",\"validators\":[],\"placeholder\":\"\",\"deleted\":0,\"order\":2,\"mapField\":false,\"errors\":[],\"visible\":true,\"inline\":false,\"readOnly\":false,\"attributes\":[],\"printOnly\":false,\"showIf\":[],\"placeholderLabel\":false,\"crop\":false,\"cropWidth\":0,\"cropHeight\":0,\"fireflyUrl\":\"\",\"startPath\":\"\\\\/\"}}}}');");
m20191212_174641_dds_table_person_edit::addMigration('up', "SET foreign_key_checks = 1;");


//
// Down Migrations
//
m20191212_174641_dds_table_person_edit::addMigration('down', "SET foreign_key_checks = 0;");
m20191212_174641_dds_table_person_edit::addMigration('down', "REPLACE INTO `phoebe_class` (`phoebe_type`,`class_type`,`version`,`module`,`label`,`description`,`version_locked`,`volatile`,`object_history`,`created`,`updated`,`deleted`,`serialised_definition`) VALUES ('daedalus','person','1','phoebe','Person',null,'0','1','0','2019-12-12 17:36:32','2019-12-12 17:36:47','0','{\"class\":\"neon\\\\\\\\core\\\\\\\\form\\\\\\\\Form\",\"id\":\"person\",\"name\":\"person\",\"enableAjaxValidation\":true,\"enableAjaxSubmission\":false,\"label\":\"Person\",\"hint\":\"\",\"inline\":false,\"visible\":true,\"order\":1,\"action\":\"\",\"readOnly\":false,\"printOnly\":false,\"validationUrl\":null,\"attributes\":[],\"objectToken\":\"PXATahbbS8dZThPfjZ_EDsIRBSR1C2HmcQUz0xpe1pn7QuciuFdDNgwScA51unPzPH4q6Oz89Tb0dWEQTT9Q30Q2ALAjOLSomHLfQYExcwM=\",\"fields\":{\"user_id\":{\"memberRef\":\"user_id\",\"name\":\"user_id\",\"dataType\":\"link_uni\",\"label\":\"User Account\",\"description\":\"A user account if the person has one\",\"choices\":[],\"linkClass\":\"users\",\"mapField\":false,\"deleted\":0,\"definition\":{\"class\":\"neon\\\\\\\\core\\\\\\\\form\\\\\\\\fields\\\\\\\\SelectDynamic\",\"classLabel\":\"Link list\",\"id\":null,\"name\":\"user_id\",\"label\":\"User Account\",\"hint\":\"A user account if the person has one\",\"value\":null,\"required\":false,\"dataKey\":\"user_id\",\"validators\":[],\"placeholder\":\"\",\"deleted\":0,\"order\":0,\"mapField\":false,\"errors\":[],\"visible\":true,\"inline\":false,\"readOnly\":false,\"attributes\":[],\"printOnly\":false,\"showIf\":[],\"placeholderLabel\":false,\"items\":[],\"allowClear\":true,\"create\":false,\"dataMapProvider\":\"user\",\"dataMapKey\":\"users\",\"dataMapFilters\":[]}},\"display_name\":{\"memberRef\":\"display_name\",\"name\":\"display_name\",\"dataType\":\"textshort\",\"label\":\"Display Name\",\"description\":\"The name of the person as you would like it displayed\",\"choices\":null,\"linkClass\":null,\"mapField\":false,\"deleted\":0,\"definition\":{\"class\":\"neon\\\\\\\\core\\\\\\\\form\\\\\\\\fields\\\\\\\\Text\",\"classLabel\":\"Single Line Text\",\"id\":null,\"name\":\"display_name\",\"label\":\"Display Name\",\"hint\":\"The name of the person as you would like it displayed\",\"value\":null,\"required\":false,\"dataKey\":\"display_name\",\"validators\":[],\"placeholder\":\"\",\"deleted\":0,\"order\":1,\"mapField\":false,\"errors\":[],\"visible\":true,\"inline\":false,\"readOnly\":false,\"attributes\":[],\"printOnly\":false,\"showIf\":[],\"placeholderLabel\":false}},\"avatar\":{\"memberRef\":\"avatar\",\"name\":\"avatar\",\"dataType\":\"image_ref\",\"label\":\"User Avatar Image\",\"description\":\"An image used to represent this person\",\"choices\":null,\"linkClass\":null,\"mapField\":false,\"deleted\":0,\"definition\":{\"class\":\"neon\\\\\\\\core\\\\\\\\form\\\\\\\\fields\\\\\\\\Image\",\"classLabel\":\"Image Selector\",\"id\":null,\"name\":\"avatar\",\"label\":\"User Avatar Image\",\"hint\":\"An image used to represent this person\",\"value\":null,\"required\":false,\"dataKey\":\"avatar\",\"validators\":[],\"placeholder\":\"\",\"deleted\":0,\"order\":2,\"mapField\":false,\"errors\":[],\"visible\":true,\"inline\":false,\"readOnly\":false,\"attributes\":[],\"printOnly\":false,\"showIf\":[],\"placeholderLabel\":false,\"crop\":false,\"cropWidth\":0,\"cropHeight\":0,\"fireflyUrl\":\"\",\"startPath\":\"\\\\/\"}}}}');");
m20191212_174641_dds_table_person_edit::addMigration('down', "");
m20191212_174641_dds_table_person_edit::addMigration('down', "SET foreign_key_checks = 1;");
