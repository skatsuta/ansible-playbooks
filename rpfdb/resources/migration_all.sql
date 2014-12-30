CREATE TABLE `media` (`id` int(11) DEFAULT NULL auto_increment PRIMARY KEY, `site_name` varchar(255) NOT NULL, `last_applied` datetime, `created` datetime, `modified` datetime) ENGINE=InnoDB;
CREATE TABLE rpf_pre.`media` (`id` int(11) DEFAULT NULL auto_increment PRIMARY KEY, `site_name` varchar(255) NOT NULL, `last_applied` datetime, `created` datetime, `modified` datetime) ENGINE=InnoDB;

ALTER TABLE `media` CHANGE `id` `id` BIGINT AUTO_INCREMENT NOT NULL;
ALTER TABLE rpf_pre.`media` CHANGE `id` `id` BIGINT AUTO_INCREMENT NOT NULL;

CREATE TABLE `contents` (`id` int(11) DEFAULT NULL auto_increment PRIMARY KEY, `media_id` int(11) NOT NULL, `content` varchar(255) NOT NULL, `type` tinyint NOT NULL, `is_default` tinyint NOT NULL, `created` datetime, `modified` datetime) ENGINE=InnoDB;
CREATE TABLE rpf_pre.`contents` (`id` int(11) DEFAULT NULL auto_increment PRIMARY KEY, `media_id` int(11) NOT NULL, `content` varchar(255) NOT NULL, `type` tinyint NOT NULL, `is_default` tinyint NOT NULL, `created` datetime, `modified` datetime) ENGINE=InnoDB;

ALTER TABLE `contents` CHANGE `id` `id` BIGINT AUTO_INCREMENT NOT NULL;
ALTER TABLE rpf_pre.`contents` CHANGE `id` `id` BIGINT AUTO_INCREMENT NOT NULL;

CREATE INDEX `idx_contents_media_id_0` ON `contents` (`media_id`);
CREATE INDEX `idx_contents_media_id_0` ON rpf_pre.`contents` (`media_id`);

CREATE TABLE `settings` (`id` int(11) DEFAULT NULL auto_increment PRIMARY KEY, `media_id` int(11) NOT NULL, `status` tinyint NOT NULL, `priority` tinyint NOT NULL, `title` varchar(255) NOT NULL, `created` datetime, `modified` datetime) ENGINE=InnoDB;
CREATE TABLE rpf_pre.`settings` (`id` int(11) DEFAULT NULL auto_increment PRIMARY KEY, `media_id` int(11) NOT NULL, `status` tinyint NOT NULL, `priority` tinyint NOT NULL, `title` varchar(255) NOT NULL, `created` datetime, `modified` datetime) ENGINE=InnoDB;

ALTER TABLE `settings` CHANGE `id` `id` BIGINT AUTO_INCREMENT NOT NULL;
ALTER TABLE rpf_pre.`settings` CHANGE `id` `id` BIGINT AUTO_INCREMENT NOT NULL;

CREATE INDEX `idx_settings_media_id_0` ON `settings` (`media_id`);
CREATE INDEX `idx_settings_media_id_0` ON rpf_pre.`settings` (`media_id`);

CREATE TABLE `setting_contents` (`id` int(11) DEFAULT NULL auto_increment PRIMARY KEY, `setting_id` integer NOT NULL, `content_id` integer NOT NULL, `media_id` int(11) NOT NULL, `created` datetime, `modified` datetime) ENGINE=InnoDB;
CREATE TABLE rpf_pre.`setting_contents` (`id` int(11) DEFAULT NULL auto_increment PRIMARY KEY, `setting_id` integer NOT NULL, `content_id` integer NOT NULL, `media_id` int(11) NOT NULL, `created` datetime, `modified` datetime) ENGINE=InnoDB;

ALTER TABLE `setting_contents` CHANGE `id` `id` BIGINT AUTO_INCREMENT NOT NULL;
ALTER TABLE rpf_pre.`setting_contents` CHANGE `id` `id` BIGINT AUTO_INCREMENT NOT NULL;

ALTER TABLE `setting_contents` CHANGE `setting_id` `setting_id` BIGINT NOT NULL;
ALTER TABLE rpf_pre.`setting_contents` CHANGE `setting_id` `setting_id` BIGINT NOT NULL;

ALTER TABLE `setting_contents` CHANGE `content_id` `content_id` BIGINT NOT NULL;
ALTER TABLE rpf_pre.`setting_contents` CHANGE `content_id` `content_id` BIGINT NOT NULL;

CREATE INDEX `idx_setting_contents_media_id_0` ON `setting_contents` (`media_id`);
CREATE INDEX `idx_setting_contents_media_id_0` ON rpf_pre.`setting_contents` (`media_id`);

CREATE INDEX `idx_setting_contents_setting_id_0` ON `setting_contents` (`setting_id`);
CREATE INDEX `idx_setting_contents_setting_id_0` ON rpf_pre.`setting_contents` (`setting_id`);

CREATE INDEX `idx_setting_contents_content_id_0` ON `setting_contents` (`content_id`);
CREATE INDEX `idx_setting_contents_content_id_0` ON rpf_pre.`setting_contents` (`content_id`);

CREATE TABLE `setting_terms` (`id` int(11) DEFAULT NULL auto_increment PRIMARY KEY, `setting_id` integer NOT NULL, `term_id` integer NOT NULL, `media_id` int(11) NOT NULL, `created` datetime, `modified` datetime) ENGINE=InnoDB;
CREATE TABLE rpf_pre.`setting_terms` (`id` int(11) DEFAULT NULL auto_increment PRIMARY KEY, `setting_id` integer NOT NULL, `term_id` integer NOT NULL, `media_id` int(11) NOT NULL, `created` datetime, `modified` datetime) ENGINE=InnoDB;

ALTER TABLE `setting_terms` CHANGE `id` `id` BIGINT AUTO_INCREMENT NOT NULL;
ALTER TABLE rpf_pre.`setting_terms` CHANGE `id` `id` BIGINT AUTO_INCREMENT NOT NULL;

ALTER TABLE `setting_terms` CHANGE `setting_id` `setting_id` BIGINT NOT NULL;
ALTER TABLE rpf_pre.`setting_terms` CHANGE `setting_id` `setting_id` BIGINT NOT NULL;

ALTER TABLE `setting_terms` CHANGE `term_id` `term_id` BIGINT NOT NULL;
ALTER TABLE rpf_pre.`setting_terms` CHANGE `term_id` `term_id` BIGINT NOT NULL;

CREATE INDEX `idx_setting_terms_media_id_0` ON `setting_terms` (`media_id`);
CREATE INDEX `idx_setting_terms_media_id_0` ON rpf_pre.`setting_terms` (`media_id`);

CREATE INDEX `idx_setting_terms_setting_id_0` ON `setting_terms` (`setting_id`);
CREATE INDEX `idx_setting_terms_setting_id_0` ON rpf_pre.`setting_terms` (`setting_id`);

CREATE INDEX `idx_setting_terms_term_id_0` ON `setting_terms` (`term_id`);
CREATE INDEX `idx_setting_terms_term_id_0` ON rpf_pre.`setting_terms` (`term_id`);

CREATE TABLE `setting_url_rules` (`id` int(11) DEFAULT NULL auto_increment PRIMARY KEY, `setting_id` integer NOT NULL, `url_rule_id` integer NOT NULL, `media_id` int(11) NOT NULL, `created` datetime, `modified` datetime) ENGINE=InnoDB;
CREATE TABLE rpf_pre.`setting_url_rules` (`id` int(11) DEFAULT NULL auto_increment PRIMARY KEY, `setting_id` integer NOT NULL, `url_rule_id` integer NOT NULL, `media_id` int(11) NOT NULL, `created` datetime, `modified` datetime) ENGINE=InnoDB;

ALTER TABLE `setting_url_rules` CHANGE `id` `id` BIGINT AUTO_INCREMENT NOT NULL;
ALTER TABLE rpf_pre.`setting_url_rules` CHANGE `id` `id` BIGINT AUTO_INCREMENT NOT NULL;

ALTER TABLE `setting_url_rules` CHANGE `setting_id` `setting_id` BIGINT NOT NULL;
ALTER TABLE rpf_pre.`setting_url_rules` CHANGE `setting_id` `setting_id` BIGINT NOT NULL;

ALTER TABLE `setting_url_rules` CHANGE `url_rule_id` `url_rule_id` BIGINT NOT NULL;
ALTER TABLE rpf_pre.`setting_url_rules` CHANGE `url_rule_id` `url_rule_id` BIGINT NOT NULL;

CREATE INDEX `idx_setting_url_rules_media_id_0` ON `setting_url_rules` (`media_id`);
CREATE INDEX `idx_setting_url_rules_media_id_0` ON rpf_pre.`setting_url_rules` (`media_id`);

CREATE INDEX `idx_setting_url_rules_setting_id_0` ON `setting_url_rules` (`setting_id`);
CREATE INDEX `idx_setting_url_rules_setting_id_0` ON rpf_pre.`setting_url_rules` (`setting_id`);

CREATE INDEX `idx_setting_urlrules_url_rule_id_0` ON `setting_url_rules` (`url_rule_id`);
CREATE INDEX `idx_setting_urlrules_url_rule_id_0` ON rpf_pre.`setting_url_rules` (`url_rule_id`);

CREATE TABLE `terms` (`id` int(11) DEFAULT NULL auto_increment PRIMARY KEY, `media_id` int(11) NOT NULL, `title` varchar(255) NOT NULL, `from_ymdhiw` varchar(255) NOT NULL, `to_ymdhiw` varchar(255) NOT NULL, `created` datetime, `modified` datetime) ENGINE=InnoDB;
CREATE TABLE rpf_pre.`terms` (`id` int(11) DEFAULT NULL auto_increment PRIMARY KEY, `media_id` int(11) NOT NULL, `title` varchar(255) NOT NULL, `from_ymdhiw` varchar(255) NOT NULL, `to_ymdhiw` varchar(255) NOT NULL, `created` datetime, `modified` datetime) ENGINE=InnoDB;

ALTER TABLE `terms` CHANGE `id` `id` BIGINT AUTO_INCREMENT NOT NULL;
ALTER TABLE rpf_pre.`terms` CHANGE `id` `id` BIGINT AUTO_INCREMENT NOT NULL;

CREATE INDEX `idx_terms_media_id_0` ON `terms` (`media_id`);
CREATE INDEX `idx_terms_media_id_0` ON rpf_pre.`terms` (`media_id`);

CREATE TABLE `urls` (`id` int(11) DEFAULT NULL auto_increment PRIMARY KEY, `media_id` int(11) NOT NULL, `order_no` tinyint NOT NULL, `title` varchar(255) NOT NULL, `type` tinyint NOT NULL, `pattern` varchar(255), `created` datetime, `modified` datetime) ENGINE=InnoDB;
CREATE TABLE rpf_pre.`urls` (`id` int(11) DEFAULT NULL auto_increment PRIMARY KEY, `media_id` int(11) NOT NULL, `order_no` tinyint NOT NULL, `title` varchar(255) NOT NULL, `type` tinyint NOT NULL, `pattern` varchar(255), `created` datetime, `modified` datetime) ENGINE=InnoDB;

ALTER TABLE `urls` CHANGE `id` `id` BIGINT AUTO_INCREMENT NOT NULL;
ALTER TABLE rpf_pre.`urls` CHANGE `id` `id` BIGINT AUTO_INCREMENT NOT NULL;

CREATE INDEX `idx_urls_media_id_0` ON `urls` (`media_id`);
CREATE INDEX `idx_urls_media_id_0` ON rpf_pre.`urls` (`media_id`);

CREATE TABLE `url_rules` (`id` int(11) DEFAULT NULL auto_increment PRIMARY KEY, `url_id` integer NOT NULL, `media_id` int(11) NOT NULL, `title` varchar(255) NOT NULL, `type` tinyint NOT NULL, `match_value` varchar(255), `range_value_min` integer, `range_value_max` integer, `created` datetime, `modified` datetime) ENGINE=InnoDB;
CREATE TABLE rpf_pre.`url_rules` (`id` int(11) DEFAULT NULL auto_increment PRIMARY KEY, `url_id` integer NOT NULL, `media_id` int(11) NOT NULL, `title` varchar(255) NOT NULL, `type` tinyint NOT NULL, `match_value` varchar(255), `range_value_min` integer, `range_value_max` integer, `created` datetime, `modified` datetime) ENGINE=InnoDB;

ALTER TABLE `url_rules` CHANGE `id` `id` BIGINT AUTO_INCREMENT NOT NULL;
ALTER TABLE rpf_pre.`url_rules` CHANGE `id` `id` BIGINT AUTO_INCREMENT NOT NULL;

ALTER TABLE `url_rules` CHANGE `url_id` `url_id` BIGINT NOT NULL;
ALTER TABLE rpf_pre.`url_rules` CHANGE `url_id` `url_id` BIGINT NOT NULL;

ALTER TABLE `url_rules` CHANGE `range_value_min` `range_value_min` BIGINT DEFAULT NULL;
ALTER TABLE rpf_pre.`url_rules` CHANGE `range_value_min` `range_value_min` BIGINT DEFAULT NULL;

ALTER TABLE `url_rules` CHANGE `range_value_max` `range_value_max` BIGINT DEFAULT NULL;
ALTER TABLE rpf_pre.`url_rules` CHANGE `range_value_max` `range_value_max` BIGINT DEFAULT NULL;

CREATE INDEX `idx_url_rules_media_id_0` ON `url_rules` (`media_id`);
CREATE INDEX `idx_url_rules_media_id_0` ON rpf_pre.`url_rules` (`media_id`);

CREATE INDEX `idx_url_rules_url_id_0` ON `url_rules` (`url_id`);
CREATE INDEX `idx_url_rules_url_id_0` ON rpf_pre.`url_rules` (`url_id`);

DROP PROCEDURE IF EXISTS `apply_pre`;
DELIMITER //
CREATE PROCEDURE apply_pre(_media_id INT, _setting_set_id INT)
EXEC_BLOCK:BEGIN
    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        ROLLBACK;
        RESIGNAL;
    END;

    -- 反映
    START TRANSACTION;

    DELETE FROM contents
    WHERE media_id = _media_id
    AND setting_set_id = _setting_set_id;

    DELETE FROM terms
    WHERE media_id = _media_id
    AND setting_set_id = _setting_set_id;

    DELETE FROM url_rules
    WHERE media_id = _media_id
    AND setting_set_id = _setting_set_id;

    DELETE FROM url_segments
    WHERE media_id = _media_id
    AND setting_set_id = _setting_set_id;

    DELETE c
    FROM setting_contents c
    JOIN settings s ON c.setting_id = s.id
    JOIN setting_sets ss ON s.setting_set_id = ss.id
    WHERE c.media_id = _media_id
    AND ss.id = _setting_set_id;

    DELETE t
    FROM setting_terms t
    JOIN settings s ON t.setting_id = s.id
    JOIN setting_sets ss ON s.setting_set_id = ss.id
    WHERE t.media_id = _media_id
    AND ss.id = _setting_set_id;

    DELETE u
    FROM setting_url_rules u
    JOIN settings s ON u.setting_id = s.id
    JOIN setting_sets ss ON s.setting_set_id = ss.id
    WHERE u.media_id = _media_id
    AND ss.id = _setting_set_id;

    DELETE s
    FROM settings s
    JOIN setting_sets ss ON s.setting_set_id = ss.id
    WHERE s.media_id = _media_id
    AND ss.id = _setting_set_id;

    DELETE FROM setting_sets
    WHERE media_id = _media_id
    AND id = _setting_set_id;

    INSERT INTO setting_sets
        SELECT
            NULL,
            media_id,
            type,
            title,
            created,
            modified
        FROM rpf_pre.setting_sets
        WHERE media_id = _media_id;
    INSERT INTO contents
        SELECT
            NULL,
            media_id,
            content,
            type,
            is_default,
            created,
            modified,
            setting_set_id,
            title
        FROM rpf_pre.contents
        WHERE media_id = _media_id;
    INSERT INTO media
        SELECT
            NULL,
            site_name,
            last_applied,
            created,
            modified
        FROM rpf_pre.media
        WHERE id = _media_id;
    INSERT INTO setting_contents
        SELECT
            NULL,
            setting_id,
            content_id,
            media_id,
            created,
            modified
        FROM rpf_pre.setting_contents
        WHERE media_id = _media_id;
    INSERT INTO setting_terms
        SELECT
            NULL,
            setting_id,
            term_id,
            media_id,
            created,
            modified
        FROM rpf_pre.setting_terms
        WHERE media_id = _media_id;
    INSERT INTO setting_url_rules
        SELECT
            NULL,
            setting_id,
            url_rule_id,
            media_id,
            created,
            modified
        FROM rpf_pre.setting_url_rules
        WHERE media_id = _media_id;
    INSERT INTO settings
        SELECT
            NULL,
            media_id,
            status,
            priority,
            title,
            created,
            modified,
            setting_set_id
        FROM rpf_pre.settings
        WHERE media_id = _media_id;
    INSERT INTO terms
        SELECT
            NULL,
            media_id,
            title,
            from_ymdhiw,
            to_ymdhiw,
            created,
            modified,
            setting_set_id
        FROM rpf_pre.terms
        WHERE media_id = _media_id;
    INSERT INTO url_rules
        SELECT
            NULL,
            url_segment_id,
            media_id,
            title,
            type,
            match_value,
            range_value_min,
            range_value_max,
            created,
            modified,
            setting_set_id
        FROM rpf_pre.url_rules
        WHERE media_id = _media_id;
    INSERT INTO url_segments
        SELECT
            NULL,
            media_id,
            order_no,
            title,
            type,
            pattern,
            created,
            modified,
            setting_set_id
        FROM rpf_pre.url_segments
        WHERE media_id = _media_id;

    COMMIT;

    -- 最終反映日時の更新
    UPDATE rpf_pre.media
    SET last_applied = NOW() WHERE id = _media_id;
END;

//
DELIMITER ;

CREATE TABLE `setting_sets` (`id` int(11) DEFAULT NULL auto_increment PRIMARY KEY, `media_id` int(11) NOT NULL, `type` int(11) NOT NULL, `title` varchar(255) NOT NULL, `created` datetime, `modified` datetime) ENGINE=InnoDB;
CREATE TABLE rpf_pre.`setting_sets` (`id` int(11) DEFAULT NULL auto_increment PRIMARY KEY, `media_id` int(11) NOT NULL, `type` int(11) NOT NULL, `title` varchar(255) NOT NULL, `created` datetime, `modified` datetime) ENGINE=InnoDB;

ALTER TABLE `setting_sets` CHANGE `id` `id` BIGINT AUTO_INCREMENT NOT NULL;
ALTER TABLE rpf_pre.`setting_sets` CHANGE `id` `id` BIGINT AUTO_INCREMENT NOT NULL;

CREATE INDEX `idx_contents_media_id_0` ON `setting_sets` (`media_id`);
CREATE INDEX `idx_contents_media_id_0` ON rpf_pre.`setting_sets` (`media_id`);

ALTER TABLE `contents` ADD `setting_set_id` bigint NOT NULL;
ALTER TABLE rpf_pre.`contents` ADD `setting_set_id` bigint NOT NULL;

ALTER TABLE `contents` ADD `title` varchar(255) NOT NULL;
ALTER TABLE rpf_pre.`contents` ADD `title` varchar(255) NOT NULL;

CREATE INDEX `idx_contents_setting_set_id_0` ON `contents` (`setting_set_id`);
CREATE INDEX `idx_contents_setting_set_id_0` ON rpf_pre.`contents` (`setting_set_id`);

ALTER TABLE `settings` ADD `setting_set_id` bigint NOT NULL;
ALTER TABLE rpf_pre.`settings` ADD `setting_set_id` bigint NOT NULL;

CREATE INDEX `idx_settings_setting_set_id_0` ON `settings` (`setting_set_id`);
CREATE INDEX `idx_settings_setting_set_id_0` ON rpf_pre.`settings` (`setting_set_id`);

ALTER TABLE `terms` ADD `setting_set_id` bigint NOT NULL;
ALTER TABLE rpf_pre.`terms` ADD `setting_set_id` bigint NOT NULL;

CREATE INDEX `idx_terms_setting_set_id_0` ON `terms` (`setting_set_id`);
CREATE INDEX `idx_terms_setting_set_id_0` ON rpf_pre.`terms` (`setting_set_id`);

RENAME TABLE `urls` TO `url_segments`;
RENAME TABLE rpf_pre.`urls` TO rpf_pre.`url_segments`;

ALTER TABLE `url_segments` ADD `setting_set_id` bigint NOT NULL;
ALTER TABLE rpf_pre.`url_segments` ADD `setting_set_id` bigint NOT NULL;

CREATE INDEX `idx_url_segments_setting_set_id_0` ON `url_segments` (`setting_set_id`);
CREATE INDEX `idx_url_segments_setting_set_id_0` ON rpf_pre.`url_segments` (`setting_set_id`);

SHOW COLUMNS FROM `url_rules` LIKE 'url_id';

ALTER TABLE `url_rules` CHANGE `url_id` `url_segment_id` bigint(20) NOT NULL;
ALTER TABLE rpf_pre.`url_rules` CHANGE `url_id` `url_segment_id` bigint(20) NOT NULL;

ALTER TABLE `url_rules` ADD `setting_set_id` bigint NOT NULL;
ALTER TABLE rpf_pre.`url_rules` ADD `setting_set_id` bigint NOT NULL;

ALTER TABLE `contents` CHANGE `id` `id` BIGINT NOT NULL;
ALTER TABLE rpf_pre.`contents` CHANGE `id` `id` BIGINT  AUTO_INCREMENT NOT NULL;

ALTER TABLE `media` CHANGE `id` `id` BIGINT NOT NULL;
ALTER TABLE rpf_pre.`media` CHANGE `id` `id` BIGINT NOT NULL;

ALTER TABLE `setting_contents` CHANGE `id` `id` BIGINT NOT NULL;
ALTER TABLE rpf_pre.`setting_contents` CHANGE `id` `id` BIGINT  AUTO_INCREMENT NOT NULL;

ALTER TABLE `setting_sets` CHANGE `id` `id` BIGINT NOT NULL;
ALTER TABLE rpf_pre.`setting_sets` CHANGE `id` `id` BIGINT  AUTO_INCREMENT NOT NULL;

ALTER TABLE `setting_terms` CHANGE `id` `id` BIGINT NOT NULL;
ALTER TABLE rpf_pre.`setting_terms` CHANGE `id` `id` BIGINT  AUTO_INCREMENT NOT NULL;

ALTER TABLE `setting_url_rules` CHANGE `id` `id` BIGINT NOT NULL;
ALTER TABLE rpf_pre.`setting_url_rules` CHANGE `id` `id` BIGINT  AUTO_INCREMENT NOT NULL;

ALTER TABLE `settings` CHANGE `id` `id` BIGINT NOT NULL;
ALTER TABLE rpf_pre.`settings` CHANGE `id` `id` BIGINT  AUTO_INCREMENT NOT NULL;

ALTER TABLE `terms` CHANGE `id` `id` BIGINT NOT NULL;
ALTER TABLE rpf_pre.`terms` CHANGE `id` `id` BIGINT  AUTO_INCREMENT NOT NULL;

ALTER TABLE `url_rules` CHANGE `id` `id` BIGINT NOT NULL;
ALTER TABLE rpf_pre.`url_rules` CHANGE `id` `id` BIGINT  AUTO_INCREMENT NOT NULL;

ALTER TABLE `url_segments` CHANGE `id` `id` BIGINT NOT NULL;
ALTER TABLE rpf_pre.`url_segments` CHANGE `id` `id` BIGINT  AUTO_INCREMENT NOT NULL;

DROP PROCEDURE IF EXISTS `apply_pre`;
DELIMITER //
CREATE PROCEDURE apply_pre(_media_id INT, _setting_set_id INT)
EXEC_BLOCK:BEGIN
    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        ROLLBACK;
        RESIGNAL;
    END;

    -- 反映
    START TRANSACTION;

    DELETE FROM media
    WHERE id = _media_id;

    DELETE FROM contents
    WHERE media_id = _media_id
    AND setting_set_id = _setting_set_id;

    DELETE FROM terms
    WHERE media_id = _media_id
    AND setting_set_id = _setting_set_id;

    DELETE FROM url_rules
    WHERE media_id = _media_id
    AND setting_set_id = _setting_set_id;

    DELETE FROM url_segments
    WHERE media_id = _media_id
    AND setting_set_id = _setting_set_id;

    DELETE c
    FROM setting_contents c
    JOIN settings s ON c.setting_id = s.id
    JOIN setting_sets ss ON s.setting_set_id = ss.id
    WHERE c.media_id = _media_id
    AND ss.id = _setting_set_id;

    DELETE t
    FROM setting_terms t
    JOIN settings s ON t.setting_id = s.id
    JOIN setting_sets ss ON s.setting_set_id = ss.id
    WHERE t.media_id = _media_id
    AND ss.id = _setting_set_id;

    DELETE u
    FROM setting_url_rules u
    JOIN settings s ON u.setting_id = s.id
    JOIN setting_sets ss ON s.setting_set_id = ss.id
    WHERE u.media_id = _media_id
    AND ss.id = _setting_set_id;

    DELETE s
    FROM settings s
    JOIN setting_sets ss ON s.setting_set_id = ss.id
    WHERE s.media_id = _media_id
    AND ss.id = _setting_set_id;

    DELETE FROM setting_sets
    WHERE media_id = _media_id
    AND id = _setting_set_id;

    INSERT INTO media
    SELECT
        *
    FROM rpf_pre.media
    WHERE id = _media_id;

    INSERT INTO setting_sets
    SELECT
        *
    FROM rpf_pre.setting_sets
    WHERE media_id = _media_id
    AND id = _setting_set_id;

    INSERT INTO contents
    SELECT
        *
    FROM rpf_pre.contents
    WHERE media_id = _media_id
    AND setting_set_id = _setting_set_id;

    INSERT INTO terms
    SELECT
        *
    FROM rpf_pre.terms
    WHERE media_id = _media_id
    AND setting_set_id = _setting_set_id;

    INSERT INTO url_rules
    SELECT
        *
    FROM rpf_pre.url_rules
    WHERE media_id = _media_id
    AND setting_set_id = _setting_set_id;

    INSERT INTO url_segments
    SELECT
        *
    FROM rpf_pre.url_segments
    WHERE media_id = _media_id
    AND setting_set_id = _setting_set_id;

    INSERT INTO settings
    SELECT
        *
    FROM rpf_pre.settings
    WHERE media_id = _media_id
    AND setting_set_id = _setting_set_id;

    INSERT INTO setting_contents
    SELECT
        c.*
    FROM rpf_pre.setting_contents c
    JOIN rpf_pre.settings s
    ON c.setting_id = s.id
    WHERE s.media_id = _media_id
    AND s.setting_set_id = _setting_set_id;

    INSERT INTO setting_terms
    SELECT
        t.*
    FROM rpf_pre.setting_terms t
    JOIN rpf_pre.settings s
    ON t.setting_id = s.id
    WHERE s.media_id = _media_id
    AND s.setting_set_id = _setting_set_id;

    INSERT INTO setting_url_rules
    SELECT
        u.*
    FROM rpf_pre.setting_url_rules u
    JOIN rpf_pre.settings s
    ON u.setting_id = s.id
    WHERE s.media_id = _media_id
    AND s.setting_set_id = _setting_set_id;

    COMMIT;

    -- 最終反映日時の更新
    UPDATE rpf_pre.media
    SET last_applied = NOW() WHERE id = _media_id;
END;

//
DELIMITER ;

