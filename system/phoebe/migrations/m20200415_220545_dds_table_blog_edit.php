<?php

use yii\db\Migration;

class m20200415_220545_dds_table_blog_edit extends Migration
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
m20200415_220545_dds_table_blog_edit::addMigration('up', "SET foreign_key_checks = 0;");
m20200415_220545_dds_table_blog_edit::addMigration('up', "REPLACE INTO `phoebe_class` (`phoebe_type`,`class_type`,`version`,`module`,`label`,`description`,`version_locked`,`volatile`,`object_history`,`created`,`updated`,`deleted`,`serialised_definition`) VALUES ('daedalus','blog','1','phoebe',null,null,'0','0','0','2020-04-15 23:05:45',null,'0',null);");
m20200415_220545_dds_table_blog_edit::addMigration('up', "REPLACE INTO `phoebe_class` (`phoebe_type`,`class_type`,`version`,`module`,`label`,`description`,`version_locked`,`volatile`,`object_history`,`created`,`updated`,`deleted`,`serialised_definition`) VALUES ('daedalus','blog','1','phoebe',null,null,'0','1','0','2020-04-15 23:05:45','2020-04-15 23:05:45','0',null);");
m20200415_220545_dds_table_blog_edit::addMigration('up', "REPLACE INTO `dds_class` (`class_type`,`label`,`description`,`module`,`deleted`,`change_log`,`count_total`,`count_deleted`) VALUES ('blog',null,null,'phoebe','0','0','0','0');");
m20200415_220545_dds_table_blog_edit::addMigration('up', "CREATE TABLE IF NOT EXISTS `ddt_blog` (`_uuid` CHAR(22) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL COMMENT 'object _uuid from the dds_object table', PRIMARY KEY (`_uuid`)) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci ENGINE=MYISAM;");
m20200415_220545_dds_table_blog_edit::addMigration('up', "REPLACE INTO `dds_class` (`class_type`,`label`,`description`,`module`,`deleted`,`change_log`,`count_total`,`count_deleted`) VALUES ('blog','Blog','Blog posts','phoebe','0','0','0','0');");
m20200415_220545_dds_table_blog_edit::addMigration('up', "REPLACE INTO `dds_member` (`class_type`,`member_ref`,`data_type_ref`,`label`,`description`,`choices`,`link_class`,`map_field`,`created`,`updated`,`deleted`) VALUES ('blog','title','textshort','Title','',null,null,'0','2020-04-15 23:05:45',null,'0');");
m20200415_220545_dds_table_blog_edit::addMigration('up', "ALTER TABLE `ddt_blog` ADD `title` VARCHAR(150) DEFAULT NULL ;");
m20200415_220545_dds_table_blog_edit::addMigration('up', "ALTER TABLE `ddt_blog` ADD INDEX(`title`);");
m20200415_220545_dds_table_blog_edit::addMigration('up', "REPLACE INTO `dds_member` (`class_type`,`member_ref`,`data_type_ref`,`label`,`description`,`choices`,`link_class`,`map_field`,`created`,`updated`,`deleted`) VALUES ('blog','slug','url','Url slug','',null,null,'0','2020-04-15 23:05:45',null,'0');");
m20200415_220545_dds_table_blog_edit::addMigration('up', "ALTER TABLE `ddt_blog` ADD `slug` VARCHAR(150) DEFAULT NULL ;");
m20200415_220545_dds_table_blog_edit::addMigration('up', "ALTER TABLE `ddt_blog` ADD INDEX(`slug`);");
m20200415_220545_dds_table_blog_edit::addMigration('up', "REPLACE INTO `dds_member` (`class_type`,`member_ref`,`data_type_ref`,`label`,`description`,`choices`,`link_class`,`map_field`,`created`,`updated`,`deleted`) VALUES ('blog','status','choice','Post status - Published / Draft','','{\"published\":\"Published\",\"draft\":\"Draft\"}',null,'0','2020-04-15 23:05:45',null,'0');");
m20200415_220545_dds_table_blog_edit::addMigration('up', "ALTER TABLE `ddt_blog` ADD `status` VARCHAR(150) DEFAULT NULL ;");
m20200415_220545_dds_table_blog_edit::addMigration('up', "ALTER TABLE `ddt_blog` ADD INDEX(`status`);");
m20200415_220545_dds_table_blog_edit::addMigration('up', "REPLACE INTO `dds_member` (`class_type`,`member_ref`,`data_type_ref`,`label`,`description`,`choices`,`link_class`,`map_field`,`created`,`updated`,`deleted`) VALUES ('blog','content','textlong','Post content','',null,null,'0','2020-04-15 23:05:46',null,'0');");
m20200415_220545_dds_table_blog_edit::addMigration('up', "ALTER TABLE `ddt_blog` ADD `content` MEDIUMTEXT DEFAULT NULL ;");
m20200415_220545_dds_table_blog_edit::addMigration('up', "REPLACE INTO `dds_member` (`class_type`,`member_ref`,`data_type_ref`,`label`,`description`,`choices`,`link_class`,`map_field`,`created`,`updated`,`deleted`) VALUES ('blog','summary','text','Post summary','A summary of the blog post that appears on blog post grid',null,null,'0','2020-04-15 23:05:46',null,'0');");
m20200415_220545_dds_table_blog_edit::addMigration('up', "ALTER TABLE `ddt_blog` ADD `summary` TEXT DEFAULT NULL ;");
m20200415_220545_dds_table_blog_edit::addMigration('up', "REPLACE INTO `dds_member` (`class_type`,`member_ref`,`data_type_ref`,`label`,`description`,`choices`,`link_class`,`map_field`,`created`,`updated`,`deleted`) VALUES ('blog','image_main','image_ref','Main image','',null,null,'0','2020-04-15 23:05:46',null,'0');");
m20200415_220545_dds_table_blog_edit::addMigration('up', "ALTER TABLE `ddt_blog` ADD `image_main` CHAR(22) CHARACTER SET latin1 COLLATE latin1_general_cs DEFAULT NULL ;");
m20200415_220545_dds_table_blog_edit::addMigration('up', "ALTER TABLE `ddt_blog` ADD INDEX(`image_main`);");
m20200415_220545_dds_table_blog_edit::addMigration('up', "REPLACE INTO `dds_member` (`class_type`,`member_ref`,`data_type_ref`,`label`,`description`,`choices`,`link_class`,`map_field`,`created`,`updated`,`deleted`) VALUES ('blog','image_thumbnail','image_ref','Thumbnail image','Smaller version of main image that is used on blog post grid',null,null,'0','2020-04-15 23:05:46',null,'0');");
m20200415_220545_dds_table_blog_edit::addMigration('up', "ALTER TABLE `ddt_blog` ADD `image_thumbnail` CHAR(22) CHARACTER SET latin1 COLLATE latin1_general_cs DEFAULT NULL ;");
m20200415_220545_dds_table_blog_edit::addMigration('up', "ALTER TABLE `ddt_blog` ADD INDEX(`image_thumbnail`);");
m20200415_220545_dds_table_blog_edit::addMigration('up', "REPLACE INTO `dds_member` (`class_type`,`member_ref`,`data_type_ref`,`label`,`description`,`choices`,`link_class`,`map_field`,`created`,`updated`,`deleted`) VALUES ('blog','author','link_uni','Author','',null,'person','0','2020-04-15 23:05:46',null,'0');");
m20200415_220545_dds_table_blog_edit::addMigration('up', "ALTER TABLE `ddt_blog` ADD `author` CHAR(150) CHARACTER SET latin1 COLLATE latin1_general_cs DEFAULT NULL ;");
m20200415_220545_dds_table_blog_edit::addMigration('up', "ALTER TABLE `ddt_blog` ADD INDEX(`author`);");
m20200415_220545_dds_table_blog_edit::addMigration('up', "REPLACE INTO `phoebe_class` (`phoebe_type`,`class_type`,`version`,`module`,`label`,`description`,`version_locked`,`volatile`,`object_history`,`created`,`updated`,`deleted`,`serialised_definition`) VALUES ('daedalus','blog','1','phoebe','Blog','Blog posts','0','1','0','2020-04-15 23:05:45','2020-04-15 23:05:46','0','{\"class\":\"neon\\\\\\\\core\\\\\\\\form\\\\\\\\Form\",\"id\":\"blog\",\"name\":\"blog\",\"enableAjaxValidation\":true,\"enableAjaxSubmission\":false,\"label\":\"Blog\",\"hint\":\"Blog posts\",\"inline\":false,\"visible\":true,\"order\":1,\"action\":\"\",\"readOnly\":false,\"printOnly\":false,\"validationUrl\":null,\"attributes\":[],\"objectToken\":\"zGWi7YzpFbldCzcMYkgkWUVgBTRqRK2MfnxTb0ZsDrH4xKlZUuvr9q8Dw9TtinaNazxRagB8HG5yWDBSWyGUvUtEYV4nDTzQwPCQP2re0pA=\",\"fields\":{\"title\":{\"memberRef\":\"title\",\"name\":\"title\",\"dataType\":\"textshort\",\"label\":\"Title\",\"description\":\"\",\"choices\":null,\"linkClass\":null,\"mapField\":false,\"deleted\":0,\"definition\":{\"class\":\"neon\\\\\\\\core\\\\\\\\form\\\\\\\\fields\\\\\\\\Text\",\"classLabel\":\"Single Line Text\",\"id\":null,\"name\":\"title\",\"label\":\"Title\",\"hint\":\"\",\"value\":null,\"required\":false,\"dataKey\":\"title\",\"validators\":[],\"placeholder\":\"\",\"deleted\":0,\"order\":0,\"mapField\":false,\"errors\":[],\"visible\":true,\"inline\":false,\"readOnly\":false,\"attributes\":[],\"printOnly\":false,\"showIf\":[],\"placeholderLabel\":false}},\"slug\":{\"memberRef\":\"slug\",\"name\":\"slug\",\"dataType\":\"url\",\"label\":\"Url slug\",\"description\":\"\",\"choices\":null,\"linkClass\":null,\"mapField\":false,\"deleted\":0,\"definition\":{\"class\":\"neon\\\\\\\\core\\\\\\\\form\\\\\\\\fields\\\\\\\\UrlLink\",\"classLabel\":\"Url Link\",\"id\":null,\"name\":\"slug\",\"label\":\"Url slug\",\"hint\":\"\",\"value\":\"\",\"required\":false,\"dataKey\":\"slug\",\"validators\":[],\"placeholder\":\"\",\"deleted\":0,\"order\":1,\"mapField\":false,\"errors\":[],\"visible\":true,\"inline\":false,\"readOnly\":false,\"attributes\":[],\"printOnly\":false,\"showIf\":[],\"placeholderLabel\":false,\"absolute\":true}},\"status\":{\"memberRef\":\"status\",\"name\":\"status\",\"dataType\":\"choice\",\"label\":\"Post status - Published \\\\/ Draft\",\"description\":\"\",\"choices\":{\"published\":\"Published\",\"draft\":\"Draft\"},\"linkClass\":null,\"mapField\":false,\"deleted\":0,\"definition\":{\"class\":\"neon\\\\\\\\core\\\\\\\\form\\\\\\\\fields\\\\\\\\Select\",\"classLabel\":\"Select List (Fixed)\",\"id\":null,\"name\":\"status\",\"label\":\"Post status - Published \\\\/ Draft\",\"hint\":\"\",\"value\":\"\\\\\"draft\\\\\"\",\"required\":false,\"dataKey\":\"status\",\"validators\":[],\"placeholder\":\"- Select an option -\",\"deleted\":0,\"order\":2,\"mapField\":false,\"errors\":[],\"visible\":true,\"inline\":false,\"readOnly\":false,\"attributes\":[],\"printOnly\":false,\"showIf\":[],\"placeholderLabel\":false,\"items\":{\"published\":\"Published\",\"draft\":\"Draft\"},\"allowClear\":false,\"create\":false}},\"content\":{\"memberRef\":\"content\",\"name\":\"content\",\"dataType\":\"textlong\",\"label\":\"Post content\",\"description\":\"\",\"choices\":null,\"linkClass\":null,\"mapField\":false,\"deleted\":0,\"definition\":{\"class\":\"neon\\\\\\\\core\\\\\\\\form\\\\\\\\fields\\\\\\\\Wysiwyg\",\"classLabel\":\"Wysiwyg Multiline Text\",\"id\":null,\"name\":\"content\",\"label\":\"Post content\",\"hint\":\"\",\"value\":null,\"required\":false,\"dataKey\":\"content\",\"validators\":[],\"placeholder\":\"\",\"deleted\":0,\"order\":3,\"mapField\":false,\"errors\":[],\"visible\":true,\"inline\":false,\"readOnly\":false,\"attributes\":[],\"printOnly\":false,\"showIf\":[],\"placeholderLabel\":false,\"configSets\":\"{\\\\\"simple\\\\\":{\\\\\"toolbar\\\\\":[{\\\\\"name\\\\\":\\\\\"paragraph\\\\\",\\\\\"items\\\\\":[\\\\\"Bold\\\\\",\\\\\"Italic\\\\\",\\\\\"Underline\\\\\",\\\\\"Link\\\\\",\\\\\"Unlink\\\\\",\\\\\"EmojiPanel\\\\\",\\\\\"Source\\\\\"]}]},\\\\\"default\\\\\":{\\\\\"toolbar\\\\\":[{\\\\\"name\\\\\":\\\\\"paragraph\\\\\",\\\\\"items\\\\\":[\\\\\"Format\\\\\",\\\\\"Bold\\\\\",\\\\\"Italic\\\\\",\\\\\"Underline\\\\\",\\\\\"-\\\\\",\\\\\"Superscript\\\\\",\\\\\"Subscript\\\\\",\\\\\"-\\\\\",\\\\\"JustifyLeft\\\\\",\\\\\"JustifyCenter\\\\\",\\\\\"JustifyRight\\\\\",\\\\\"JustifyBlock\\\\\",\\\\\"-\\\\\",\\\\\"NumberedList\\\\\",\\\\\"BulletedList\\\\\",\\\\\"Outdent\\\\\",\\\\\"Indent\\\\\",\\\\\"Blockquote\\\\\"]},{\\\\\"name\\\\\":\\\\\"links\\\\\",\\\\\"items\\\\\":[\\\\\"Link\\\\\",\\\\\"Unlink\\\\\",\\\\\"Anchor\\\\\",\\\\\"-\\\\\",\\\\\"EmojiPanel\\\\\"]},{\\\\\"name\\\\\":\\\\\"insert\\\\\",\\\\\"items\\\\\":[\\\\\"Image\\\\\",\\\\\"SimpleImageUpload\\\\\",\\\\\"Table\\\\\",\\\\\"SpecialChar\\\\\"]},{\\\\\"name\\\\\":\\\\\"document\\\\\",\\\\\"items\\\\\":[\\\\\"Maximize\\\\\"]},{\\\\\"name\\\\\":\\\\\"source\\\\\",\\\\\"items\\\\\":[\\\\\"RemoveFormat\\\\\",\\\\\"-\\\\\",\\\\\"Source\\\\\"]}],\\\\\"extraPlugins\\\\\":\\\\\"simpleImageUpload\\\\\"}}\"}},\"summary\":{\"memberRef\":\"summary\",\"name\":\"summary\",\"dataType\":\"text\",\"label\":\"Post summary\",\"description\":\"A summary of the blog post that appears on blog post grid\",\"choices\":null,\"linkClass\":null,\"mapField\":false,\"deleted\":0,\"definition\":{\"class\":\"neon\\\\\\\\core\\\\\\\\form\\\\\\\\fields\\\\\\\\Textarea\",\"classLabel\":\"Multiline Text\",\"id\":null,\"name\":\"summary\",\"label\":\"Post summary\",\"hint\":\"A summary of the blog post that appears on blog post grid\",\"value\":null,\"required\":false,\"dataKey\":\"summary\",\"validators\":[],\"placeholder\":\"\",\"deleted\":0,\"order\":4,\"mapField\":false,\"errors\":[],\"visible\":true,\"inline\":false,\"readOnly\":false,\"attributes\":[],\"printOnly\":false,\"showIf\":[],\"placeholderLabel\":false}},\"image_main\":{\"memberRef\":\"image_main\",\"name\":\"image_main\",\"dataType\":\"image_ref\",\"label\":\"Main image\",\"description\":\"\",\"choices\":null,\"linkClass\":null,\"mapField\":false,\"deleted\":0,\"definition\":{\"class\":\"neon\\\\\\\\core\\\\\\\\form\\\\\\\\fields\\\\\\\\Image\",\"classLabel\":\"Image Selector\",\"id\":null,\"name\":\"image_main\",\"label\":\"Main image\",\"hint\":\"\",\"value\":null,\"required\":false,\"dataKey\":\"image_main\",\"validators\":[],\"placeholder\":\"\",\"deleted\":0,\"order\":5,\"mapField\":false,\"errors\":[],\"visible\":true,\"inline\":false,\"readOnly\":false,\"attributes\":[],\"printOnly\":false,\"showIf\":[],\"placeholderLabel\":false,\"crop\":false,\"cropWidth\":0,\"cropHeight\":0,\"fireflyUrl\":\"\",\"startPath\":\"\\\\/\"}},\"image_thumbnail\":{\"memberRef\":\"image_thumbnail\",\"name\":\"image_thumbnail\",\"dataType\":\"image_ref\",\"label\":\"Thumbnail image\",\"description\":\"Smaller version of main image that is used on blog post grid\",\"choices\":null,\"linkClass\":null,\"mapField\":false,\"deleted\":0,\"definition\":{\"class\":\"neon\\\\\\\\core\\\\\\\\form\\\\\\\\fields\\\\\\\\Image\",\"classLabel\":\"Image Selector\",\"id\":null,\"name\":\"image_thumbnail\",\"label\":\"Thumbnail image\",\"hint\":\"Smaller version of main image that is used on blog post grid\",\"value\":null,\"required\":false,\"dataKey\":\"image_thumbnail\",\"validators\":[],\"placeholder\":\"\",\"deleted\":0,\"order\":6,\"mapField\":false,\"errors\":[],\"visible\":true,\"inline\":false,\"readOnly\":false,\"attributes\":[],\"printOnly\":false,\"showIf\":[],\"placeholderLabel\":false,\"crop\":false,\"cropWidth\":0,\"cropHeight\":0,\"fireflyUrl\":\"\",\"startPath\":\"\\\\/\"}},\"author\":{\"memberRef\":\"author\",\"name\":\"author\",\"dataType\":\"link_uni\",\"label\":\"Author\",\"description\":\"\",\"choices\":[],\"linkClass\":\"person\",\"mapField\":false,\"deleted\":0,\"definition\":{\"class\":\"neon\\\\\\\\core\\\\\\\\form\\\\\\\\fields\\\\\\\\SelectDynamic\",\"classLabel\":\"Link list\",\"id\":null,\"name\":\"author\",\"label\":\"Author\",\"hint\":\"\",\"value\":null,\"required\":false,\"dataKey\":\"author\",\"validators\":[],\"placeholder\":\"\",\"deleted\":0,\"order\":7,\"mapField\":false,\"errors\":[],\"visible\":true,\"inline\":false,\"readOnly\":false,\"attributes\":[],\"printOnly\":false,\"showIf\":[],\"placeholderLabel\":false,\"items\":[],\"allowClear\":true,\"create\":false,\"dataMapProvider\":\"daedalus\",\"dataMapKey\":\"person\",\"dataMapFilters\":[]}}}}');");
m20200415_220545_dds_table_blog_edit::addMigration('up', "SET foreign_key_checks = 1;");


//
// Down Migrations
//
m20200415_220545_dds_table_blog_edit::addMigration('down', "SET foreign_key_checks = 0;");
m20200415_220545_dds_table_blog_edit::addMigration('down', "REPLACE INTO `phoebe_class` (`phoebe_type`,`class_type`,`version`,`module`,`label`,`description`,`version_locked`,`volatile`,`object_history`,`created`,`updated`,`deleted`,`serialised_definition`) VALUES ('daedalus','blog','1','phoebe',null,null,'0','1','0','2020-04-15 23:05:45','2020-04-15 23:05:45','0',null);");
m20200415_220545_dds_table_blog_edit::addMigration('down', "ALTER TABLE `ddt_blog` DROP INDEX `author`;");
m20200415_220545_dds_table_blog_edit::addMigration('down', "ALTER TABLE `ddt_blog` DROP `author`;");
m20200415_220545_dds_table_blog_edit::addMigration('down', "DELETE FROM `dds_member` WHERE `class_type`='blog' AND `member_ref`='author';");
m20200415_220545_dds_table_blog_edit::addMigration('down', "ALTER TABLE `ddt_blog` DROP INDEX `image_thumbnail`;");
m20200415_220545_dds_table_blog_edit::addMigration('down', "ALTER TABLE `ddt_blog` DROP `image_thumbnail`;");
m20200415_220545_dds_table_blog_edit::addMigration('down', "DELETE FROM `dds_member` WHERE `class_type`='blog' AND `member_ref`='image_thumbnail';");
m20200415_220545_dds_table_blog_edit::addMigration('down', "ALTER TABLE `ddt_blog` DROP INDEX `image_main`;");
m20200415_220545_dds_table_blog_edit::addMigration('down', "ALTER TABLE `ddt_blog` DROP `image_main`;");
m20200415_220545_dds_table_blog_edit::addMigration('down', "DELETE FROM `dds_member` WHERE `class_type`='blog' AND `member_ref`='image_main';");
m20200415_220545_dds_table_blog_edit::addMigration('down', "ALTER TABLE `ddt_blog` DROP `summary`;");
m20200415_220545_dds_table_blog_edit::addMigration('down', "DELETE FROM `dds_member` WHERE `class_type`='blog' AND `member_ref`='summary';");
m20200415_220545_dds_table_blog_edit::addMigration('down', "ALTER TABLE `ddt_blog` DROP `content`;");
m20200415_220545_dds_table_blog_edit::addMigration('down', "DELETE FROM `dds_member` WHERE `class_type`='blog' AND `member_ref`='content';");
m20200415_220545_dds_table_blog_edit::addMigration('down', "ALTER TABLE `ddt_blog` DROP INDEX `status`;");
m20200415_220545_dds_table_blog_edit::addMigration('down', "ALTER TABLE `ddt_blog` DROP `status`;");
m20200415_220545_dds_table_blog_edit::addMigration('down', "DELETE FROM `dds_member` WHERE `class_type`='blog' AND `member_ref`='status';");
m20200415_220545_dds_table_blog_edit::addMigration('down', "ALTER TABLE `ddt_blog` DROP INDEX `slug`;");
m20200415_220545_dds_table_blog_edit::addMigration('down', "ALTER TABLE `ddt_blog` DROP `slug`;");
m20200415_220545_dds_table_blog_edit::addMigration('down', "DELETE FROM `dds_member` WHERE `class_type`='blog' AND `member_ref`='slug';");
m20200415_220545_dds_table_blog_edit::addMigration('down', "ALTER TABLE `ddt_blog` DROP INDEX `title`;");
m20200415_220545_dds_table_blog_edit::addMigration('down', "ALTER TABLE `ddt_blog` DROP `title`;");
m20200415_220545_dds_table_blog_edit::addMigration('down', "DELETE FROM `dds_member` WHERE `class_type`='blog' AND `member_ref`='title';");
m20200415_220545_dds_table_blog_edit::addMigration('down', "REPLACE INTO `dds_class` (`class_type`,`label`,`description`,`module`,`deleted`,`change_log`,`count_total`,`count_deleted`) VALUES ('blog',null,null,'phoebe','0','0','0','0');");
m20200415_220545_dds_table_blog_edit::addMigration('down', "DELETE FROM `dds_object` WHERE `_class_type`='blog';");
m20200415_220545_dds_table_blog_edit::addMigration('down', "DROP TABLE IF EXISTS `ddt_blog`;");
m20200415_220545_dds_table_blog_edit::addMigration('down', "DELETE FROM `dds_class` WHERE `class_type`='blog';");
m20200415_220545_dds_table_blog_edit::addMigration('down', "REPLACE INTO `phoebe_class` (`phoebe_type`,`class_type`,`version`,`module`,`label`,`description`,`version_locked`,`volatile`,`object_history`,`created`,`updated`,`deleted`,`serialised_definition`) VALUES ('daedalus','blog','1','phoebe',null,null,'0','0','0','2020-04-15 23:05:45',null,'0',null);");
m20200415_220545_dds_table_blog_edit::addMigration('down', "DELETE FROM `phoebe_class` WHERE `phoebe_type`='daedalus' AND `class_type`='blog' AND `version`=1;");
m20200415_220545_dds_table_blog_edit::addMigration('down', "SET foreign_key_checks = 1;");
