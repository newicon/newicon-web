<?php

use yii\db\Migration;

class m20191017_124538_dds_table_form_edit extends Migration
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
m20191017_124538_dds_table_form_edit::addMigration('up', "SET foreign_key_checks = 0;");
m20191017_124538_dds_table_form_edit::addMigration('up', "REPLACE INTO `phoebe_class` (`phoebe_type`,`class_type`,`version`,`module`,`label`,`description`,`version_locked`,`volatile`,`object_history`,`created`,`updated`,`deleted`,`serialised_definition`) VALUES ('daedalus','form','1','phoebe',null,null,'0','1','0','2019-10-14 11:41:52','2019-10-17 13:45:38','0','{\"class\":\"neon\\\\\\\\core\\\\\\\\form\\\\\\\\Form\",\"id\":\"form\",\"name\":\"form\",\"enableAjaxValidation\":true,\"enableAjaxSubmission\":false,\"label\":null,\"hint\":null,\"inline\":false,\"visible\":true,\"order\":1,\"action\":\"\",\"readOnly\":false,\"printOnly\":false,\"validationUrl\":null,\"attributes\":[],\"objectToken\":\"waduALFo3nJd8sUf1ZUnmKteAdWz3mBJ3qXO6h8LUizOOFB6DcA18_aUDziCDO8QPJamL7elHqCcP2Ptg-ZYKueU_9stajZO_A80SW_xV5c=\",\"fields\":{\"name\":{\"memberRef\":\"name\",\"name\":\"name\",\"dataType\":\"textshort\",\"label\":\"Name\",\"description\":\"\",\"choices\":null,\"linkClass\":null,\"mapField\":true,\"deleted\":0,\"definition\":{\"class\":\"neon\\\\\\\\core\\\\\\\\form\\\\\\\\fields\\\\\\\\Text\",\"classLabel\":\"Single Line Text\",\"id\":null,\"name\":\"name\",\"label\":\"Name\",\"hint\":\"\",\"value\":null,\"required\":false,\"dataKey\":\"name\",\"validators\":[],\"placeholder\":\"\",\"deleted\":0,\"order\":0,\"mapField\":true,\"errors\":[],\"visible\":true,\"inline\":false,\"readOnly\":false,\"attributes\":[],\"printOnly\":false,\"showIf\":[],\"placeholderLabel\":false}},\"dynamic\":{\"memberRef\":\"dynamic\",\"name\":\"dynamic\",\"dataType\":\"link_uni\",\"label\":\"One to One\",\"description\":\"\",\"choices\":[],\"linkClass\":\"contact\",\"mapField\":false,\"deleted\":0,\"definition\":{\"class\":\"neon\\\\\\\\core\\\\\\\\form\\\\\\\\fields\\\\\\\\SelectDynamic\",\"classLabel\":\"Link list\",\"id\":null,\"name\":\"dynamic\",\"label\":\"One to One\",\"hint\":\"\",\"value\":null,\"required\":false,\"dataKey\":\"dynamic\",\"validators\":[],\"placeholder\":\"\",\"deleted\":0,\"order\":1,\"mapField\":false,\"errors\":[],\"visible\":true,\"inline\":false,\"readOnly\":false,\"attributes\":[],\"printOnly\":false,\"showIf\":[],\"placeholderLabel\":false,\"items\":[],\"allowClear\":true,\"create\":true,\"dataMapProvider\":\"dds\",\"dataMapKey\":\"contact\",\"dataMapFilters\":[]}}}}');");
m20191017_124538_dds_table_form_edit::addMigration('up', "SET foreign_key_checks = 1;");


//
// Down Migrations
//
m20191017_124538_dds_table_form_edit::addMigration('down', "SET foreign_key_checks = 0;");
m20191017_124538_dds_table_form_edit::addMigration('down', "REPLACE INTO `phoebe_class` (`phoebe_type`,`class_type`,`version`,`module`,`label`,`description`,`version_locked`,`volatile`,`object_history`,`created`,`updated`,`deleted`,`serialised_definition`) VALUES ('daedalus','form','1','phoebe',null,null,'0','1','0','2019-10-14 11:41:52','2019-10-17 11:45:06','0','{\"class\":\"neon\\\\\\\\core\\\\\\\\form\\\\\\\\Form\",\"id\":\"form\",\"name\":\"form\",\"enableAjaxValidation\":true,\"enableAjaxSubmission\":false,\"label\":null,\"hint\":null,\"inline\":false,\"visible\":true,\"order\":1,\"action\":\"\",\"readOnly\":false,\"printOnly\":false,\"validationUrl\":null,\"attributes\":[],\"fields\":{\"name\":{\"memberRef\":\"name\",\"name\":\"name\",\"dataType\":\"textshort\",\"label\":\"Name\",\"description\":\"\",\"choices\":null,\"linkClass\":null,\"mapField\":true,\"deleted\":0,\"definition\":{\"class\":\"neon\\\\\\\\core\\\\\\\\form\\\\\\\\fields\\\\\\\\Text\",\"classLabel\":\"Single Line Text\",\"id\":null,\"name\":\"name\",\"label\":\"Name\",\"hint\":\"\",\"value\":null,\"required\":false,\"dataKey\":\"name\",\"validators\":[],\"placeholder\":\"\",\"deleted\":0,\"order\":0,\"mapField\":true,\"errors\":[],\"visible\":true,\"inline\":false,\"readOnly\":false,\"attributes\":[],\"printOnly\":false,\"showIf\":[],\"placeholderLabel\":false}},\"dynamic\":{\"memberRef\":\"dynamic\",\"name\":\"dynamic\",\"dataType\":\"link_uni\",\"label\":\"One to One\",\"description\":\"\",\"choices\":[],\"linkClass\":\"contact\",\"mapField\":false,\"deleted\":0,\"definition\":{\"class\":\"neon\\\\\\\\core\\\\\\\\form\\\\\\\\fields\\\\\\\\SelectDynamic\",\"classLabel\":\"Link list\",\"id\":null,\"name\":\"dynamic\",\"label\":\"One to One\",\"hint\":\"\",\"value\":null,\"required\":false,\"dataKey\":\"dynamic\",\"validators\":[],\"placeholder\":\"\",\"deleted\":0,\"order\":1,\"mapField\":false,\"errors\":[],\"visible\":true,\"inline\":false,\"readOnly\":false,\"attributes\":[],\"printOnly\":false,\"showIf\":[],\"placeholderLabel\":false,\"items\":[],\"allowClear\":true,\"create\":true,\"dataMapProvider\":\"dds\",\"dataMapKey\":\"contact\",\"dataMapFilters\":[]}}}}');");
m20191017_124538_dds_table_form_edit::addMigration('down', "SET foreign_key_checks = 1;");
