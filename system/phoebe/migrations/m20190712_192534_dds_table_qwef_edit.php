<?php

use yii\db\Migration;

class m20190712_192534_dds_table_qwef_edit extends Migration
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
m20190712_192534_dds_table_qwef_edit::addMigration('up', "SET foreign_key_checks = 0;");
m20190712_192534_dds_table_qwef_edit::addMigration('up', "UPDATE `dds_member` SET `map_field`=(IF (`member_ref`='text', 1, 0)) WHERE `class_type`='qwef';");
m20190712_192534_dds_table_qwef_edit::addMigration('up', "REPLACE INTO `phoebe_class` (`phoebe_type`,`class_type`,`version`,`module`,`label`,`description`,`version_locked`,`volatile`,`object_history`,`created`,`updated`,`deleted`,`serialised_definition`) VALUES ('daedalus','qwef','1','phoebe','wqef',null,'0','1','0','2019-07-11 22:54:12','2019-07-12 20:25:34','0','{\"class\":\"neon\\\\\\\\core\\\\\\\\form\\\\\\\\Form\",\"id\":\"qwef\",\"name\":\"qwef\",\"enableAjaxValidation\":true,\"enableAjaxSubmission\":false,\"label\":\"wqef\",\"hint\":null,\"inline\":false,\"visible\":true,\"order\":1,\"action\":\"\",\"readOnly\":false,\"printOnly\":false,\"validationUrl\":null,\"attributes\":[],\"fields\":{\"text\":{\"memberRef\":\"text\",\"name\":\"text\",\"dataType\":\"textshort\",\"label\":\"Text\",\"description\":\"\",\"choices\":null,\"linkClass\":null,\"mapField\":true,\"deleted\":0,\"definition\":{\"class\":\"neon\\\\\\\\core\\\\\\\\form\\\\\\\\fields\\\\\\\\Text\",\"classLabel\":\"Single Line Text\",\"id\":null,\"name\":\"text\",\"label\":\"Text\",\"hint\":\"\",\"value\":null,\"required\":false,\"dataKey\":\"text\",\"validators\":[],\"placeholder\":\"\",\"deleted\":0,\"order\":0,\"mapField\":true,\"errors\":[],\"visible\":true,\"inline\":false,\"readOnly\":false,\"attributes\":[],\"printOnly\":false,\"showIf\":[],\"placeholderLabel\":false}},\"image\":{\"memberRef\":\"image\",\"name\":\"image\",\"dataType\":\"image_ref\",\"label\":\"Image Browser\",\"description\":\"\",\"choices\":null,\"linkClass\":null,\"mapField\":false,\"deleted\":0,\"definition\":{\"class\":\"neon\\\\\\\\core\\\\\\\\form\\\\\\\\fields\\\\\\\\Image\",\"classLabel\":\"Image Selector\",\"id\":null,\"name\":\"image\",\"label\":\"Image Browser\",\"hint\":\"\",\"value\":null,\"required\":false,\"dataKey\":\"image\",\"validators\":[],\"placeholder\":\"\",\"deleted\":0,\"order\":1,\"mapField\":false,\"errors\":[],\"visible\":true,\"inline\":false,\"readOnly\":false,\"attributes\":[],\"printOnly\":false,\"showIf\":[],\"placeholderLabel\":false,\"crop\":true,\"cropWidth\":512,\"cropHeight\":512,\"fireflyUrl\":\"\",\"startPath\":\"\\\\/\"}}}}');");
m20190712_192534_dds_table_qwef_edit::addMigration('up', "SET foreign_key_checks = 1;");


//
// Down Migrations
//
m20190712_192534_dds_table_qwef_edit::addMigration('down', "SET foreign_key_checks = 0;");
m20190712_192534_dds_table_qwef_edit::addMigration('down', "REPLACE INTO `phoebe_class` (`phoebe_type`,`class_type`,`version`,`module`,`label`,`description`,`version_locked`,`volatile`,`object_history`,`created`,`updated`,`deleted`,`serialised_definition`) VALUES ('daedalus','qwef','1','phoebe','wqef',null,'0','1','0','2019-07-11 22:54:12','2019-07-12 12:51:23','0','{\"class\":\"neon\\\\\\\\core\\\\\\\\form\\\\\\\\Form\",\"id\":\"qwef\",\"name\":\"qwef\",\"enableAjaxValidation\":true,\"enableAjaxSubmission\":false,\"label\":\"wqef\",\"hint\":null,\"inline\":false,\"visible\":true,\"order\":1,\"action\":\"\",\"readOnly\":false,\"printOnly\":false,\"validationUrl\":null,\"attributes\":[],\"fields\":{\"text\":{\"memberRef\":\"text\",\"name\":\"text\",\"dataType\":\"textshort\",\"label\":\"Text\",\"description\":\"\",\"choices\":null,\"linkClass\":null,\"mapField\":false,\"deleted\":0,\"definition\":{\"class\":\"neon\\\\\\\\core\\\\\\\\form\\\\\\\\fields\\\\\\\\Text\",\"classLabel\":\"Single Line Text\",\"id\":null,\"name\":\"text\",\"label\":\"Text\",\"hint\":\"\",\"value\":null,\"required\":false,\"dataKey\":\"text\",\"validators\":[],\"placeholder\":\"\",\"deleted\":0,\"order\":0,\"mapField\":false,\"errors\":[],\"visible\":true,\"inline\":false,\"readOnly\":false,\"attributes\":[],\"printOnly\":false,\"showIf\":[],\"placeholderLabel\":false}},\"image\":{\"memberRef\":\"image\",\"name\":\"image\",\"dataType\":\"image_ref\",\"label\":\"Image Browser\",\"description\":\"\",\"choices\":null,\"linkClass\":null,\"mapField\":false,\"deleted\":0,\"definition\":{\"class\":\"neon\\\\\\\\core\\\\\\\\form\\\\\\\\fields\\\\\\\\Image\",\"classLabel\":\"Image Selector\",\"id\":null,\"name\":\"image\",\"label\":\"Image Browser\",\"hint\":\"\",\"value\":null,\"required\":false,\"dataKey\":\"image\",\"validators\":[],\"placeholder\":\"\",\"deleted\":0,\"order\":1,\"mapField\":false,\"errors\":[],\"visible\":true,\"inline\":false,\"readOnly\":false,\"attributes\":[],\"printOnly\":false,\"showIf\":[],\"placeholderLabel\":false,\"crop\":true,\"cropWidth\":512,\"cropHeight\":512,\"fireflyUrl\":\"\",\"startPath\":\"\\\\/\"}}}}');");
m20190712_192534_dds_table_qwef_edit::addMigration('down', "");
m20190712_192534_dds_table_qwef_edit::addMigration('down', "SET foreign_key_checks = 1;");
