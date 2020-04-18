<?php

use yii\db\Migration;

class m20200417_195722_dds_table_category_edit extends Migration
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
m20200417_195722_dds_table_category_edit::addMigration('up', "SET foreign_key_checks = 0;");
m20200417_195722_dds_table_category_edit::addMigration('up', "REPLACE INTO `phoebe_class` (`phoebe_type`,`class_type`,`version`,`module`,`label`,`description`,`version_locked`,`volatile`,`object_history`,`created`,`updated`,`deleted`,`serialised_definition`) VALUES ('daedalus','category','1','phoebe',null,null,'0','0','0','2020-04-17 20:57:23',null,'0',null);");
m20200417_195722_dds_table_category_edit::addMigration('up', "REPLACE INTO `phoebe_class` (`phoebe_type`,`class_type`,`version`,`module`,`label`,`description`,`version_locked`,`volatile`,`object_history`,`created`,`updated`,`deleted`,`serialised_definition`) VALUES ('daedalus','category','1','phoebe',null,null,'0','1','0','2020-04-17 20:57:23','2020-04-17 20:57:23','0',null);");
m20200417_195722_dds_table_category_edit::addMigration('up', "REPLACE INTO `dds_class` (`class_type`,`label`,`description`,`module`,`deleted`,`change_log`,`count_total`,`count_deleted`) VALUES ('category',null,null,'phoebe','0','0','0','0');");
m20200417_195722_dds_table_category_edit::addMigration('up', "CREATE TABLE IF NOT EXISTS `ddt_category` (`_uuid` CHAR(22) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL COMMENT 'object _uuid from the dds_object table', PRIMARY KEY (`_uuid`)) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci ENGINE=MYISAM;");
m20200417_195722_dds_table_category_edit::addMigration('up', "REPLACE INTO `dds_class` (`class_type`,`label`,`description`,`module`,`deleted`,`change_log`,`count_total`,`count_deleted`) VALUES ('category','Category',null,'phoebe','0','0','0','0');");
m20200417_195722_dds_table_category_edit::addMigration('up', "REPLACE INTO `dds_member` (`class_type`,`member_ref`,`data_type_ref`,`label`,`description`,`choices`,`link_class`,`map_field`,`created`,`updated`,`deleted`) VALUES ('category','title','textshort','Title','The category title',null,null,'0','2020-04-17 20:57:23',null,'0');");
m20200417_195722_dds_table_category_edit::addMigration('up', "ALTER TABLE `ddt_category` ADD `title` VARCHAR(150) DEFAULT NULL ;");
m20200417_195722_dds_table_category_edit::addMigration('up', "ALTER TABLE `ddt_category` ADD INDEX(`title`);");
m20200417_195722_dds_table_category_edit::addMigration('up', "UPDATE `dds_member` SET `map_field`=(IF (`member_ref`='title', 1, 0)) WHERE `class_type`='category';");
m20200417_195722_dds_table_category_edit::addMigration('up', "REPLACE INTO `phoebe_class` (`phoebe_type`,`class_type`,`version`,`module`,`label`,`description`,`version_locked`,`volatile`,`object_history`,`created`,`updated`,`deleted`,`serialised_definition`) VALUES ('daedalus','category','1','phoebe','Category',null,'0','1','0','2020-04-17 20:57:23','2020-04-17 20:57:23','0','{\"class\":\"neon\\\\\\\\core\\\\\\\\form\\\\\\\\Form\",\"id\":\"category\",\"name\":\"category\",\"enableAjaxValidation\":true,\"enableAjaxSubmission\":false,\"label\":\"Category\",\"hint\":null,\"inline\":false,\"visible\":true,\"order\":1,\"action\":\"\",\"readOnly\":false,\"printOnly\":false,\"validationUrl\":null,\"attributes\":[],\"objectToken\":\"M2Weecy-89W3ZrUR64fHJFNdxkFwYZmnX4vdVvvNlvIlFh8hj6aJJgZVrhr435K2hlCMKN_m_xNkbaMiQAX6lWy_u2PL9KfBQ3N8R-yRvhc=\",\"fields\":{\"title\":{\"memberRef\":\"title\",\"name\":\"title\",\"dataType\":\"textshort\",\"label\":\"Title\",\"description\":\"The category title\",\"choices\":null,\"linkClass\":null,\"mapField\":true,\"deleted\":0,\"definition\":{\"class\":\"neon\\\\\\\\core\\\\\\\\form\\\\\\\\fields\\\\\\\\Text\",\"classLabel\":\"Single Line Text\",\"id\":null,\"name\":\"title\",\"label\":\"Title\",\"hint\":\"The category title\",\"value\":null,\"required\":false,\"dataKey\":\"title\",\"validators\":[],\"placeholder\":\"\",\"deleted\":0,\"order\":0,\"mapField\":true,\"errors\":[],\"visible\":true,\"inline\":false,\"readOnly\":false,\"attributes\":[],\"printOnly\":false,\"showIf\":[],\"placeholderLabel\":false}}}}');");
m20200417_195722_dds_table_category_edit::addMigration('up', "SET foreign_key_checks = 1;");


//
// Down Migrations
//
m20200417_195722_dds_table_category_edit::addMigration('down', "SET foreign_key_checks = 0;");
m20200417_195722_dds_table_category_edit::addMigration('down', "REPLACE INTO `phoebe_class` (`phoebe_type`,`class_type`,`version`,`module`,`label`,`description`,`version_locked`,`volatile`,`object_history`,`created`,`updated`,`deleted`,`serialised_definition`) VALUES ('daedalus','category','1','phoebe',null,null,'0','1','0','2020-04-17 20:57:23','2020-04-17 20:57:23','0',null);");
m20200417_195722_dds_table_category_edit::addMigration('down', "");
m20200417_195722_dds_table_category_edit::addMigration('down', "ALTER TABLE `ddt_category` DROP INDEX `title`;");
m20200417_195722_dds_table_category_edit::addMigration('down', "ALTER TABLE `ddt_category` DROP `title`;");
m20200417_195722_dds_table_category_edit::addMigration('down', "DELETE FROM `dds_member` WHERE `class_type`='category' AND `member_ref`='title';");
m20200417_195722_dds_table_category_edit::addMigration('down', "REPLACE INTO `dds_class` (`class_type`,`label`,`description`,`module`,`deleted`,`change_log`,`count_total`,`count_deleted`) VALUES ('category',null,null,'phoebe','0','0','0','0');");
m20200417_195722_dds_table_category_edit::addMigration('down', "DELETE FROM `dds_object` WHERE `_class_type`='category';");
m20200417_195722_dds_table_category_edit::addMigration('down', "DROP TABLE IF EXISTS `ddt_category`;");
m20200417_195722_dds_table_category_edit::addMigration('down', "DELETE FROM `dds_class` WHERE `class_type`='category';");
m20200417_195722_dds_table_category_edit::addMigration('down', "REPLACE INTO `phoebe_class` (`phoebe_type`,`class_type`,`version`,`module`,`label`,`description`,`version_locked`,`volatile`,`object_history`,`created`,`updated`,`deleted`,`serialised_definition`) VALUES ('daedalus','category','1','phoebe',null,null,'0','0','0','2020-04-17 20:57:23',null,'0',null);");
m20200417_195722_dds_table_category_edit::addMigration('down', "DELETE FROM `phoebe_class` WHERE `phoebe_type`='daedalus' AND `class_type`='category' AND `version`=1;");
m20200417_195722_dds_table_category_edit::addMigration('down', "SET foreign_key_checks = 1;");
