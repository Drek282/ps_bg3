CREATE TABLE `ps_map_data_source_bg3` (
  `dataid` int unsigned NOT NULL default '0',
  `britishkills` smallint unsigned NOT NULL default '0',
  `americanskills` smallint unsigned NOT NULL default '0',
  `joinedbritish` smallint unsigned NOT NULL default '0',
  `joinedamericans` smallint unsigned NOT NULL default '0',
  `joinedspectator` smallint unsigned NOT NULL default '0',
  `britishwon` smallint unsigned NOT NULL default '0',
  `britishlost` smallint unsigned NOT NULL default '0',
  `americanswon` smallint unsigned NOT NULL default '0',
  `americanslost` smallint unsigned NOT NULL default '0',
  `britishflagscaptured` smallint unsigned NOT NULL default '0',
  `americansflagscaptured` smallint unsigned NOT NULL default '0',
  `flagscaptured` smallint unsigned NOT NULL default '0',
  PRIMARY KEY  (`dataid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE utf8mb4_general_ci;
CREATE TABLE `ps_plr_data_source_bg3` (
  `dataid` int unsigned NOT NULL default '0',
  `britishkills` smallint unsigned NOT NULL default '0',
  `americanskills` smallint unsigned NOT NULL default '0',
  `britishdeaths` smallint unsigned NOT NULL default '0',
  `americansdeaths` smallint unsigned NOT NULL default '0',
  `joinedbritish` smallint unsigned NOT NULL default '0',
  `joinedamericans` smallint unsigned NOT NULL default '0',
  `joinedspectator` smallint unsigned NOT NULL default '0',
  `britishwon` smallint unsigned NOT NULL default '0',
  `britishlost` smallint unsigned NOT NULL default '0',
  `americanswon` smallint unsigned NOT NULL default '0',
  `americanslost` smallint unsigned NOT NULL default '0',
  `britishflagscaptured` smallint unsigned NOT NULL default '0',
  `americansflagscaptured` smallint unsigned NOT NULL default '0',
  `flagscaptured` smallint unsigned NOT NULL default '0',
  PRIMARY KEY  (`dataid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE utf8mb4_general_ci;
CREATE TABLE `ps_plr_maps_source_bg3` (
  `dataid` int unsigned NOT NULL default '0',
  `britishkills` smallint unsigned NOT NULL default '0',
  `americanskills` smallint unsigned NOT NULL default '0',
  `britishdeaths` smallint unsigned NOT NULL default '0',
  `americansdeaths` smallint unsigned NOT NULL default '0',
  `joinedbritish` smallint unsigned NOT NULL default '0',
  `joinedamericans` smallint unsigned NOT NULL default '0',
  `joinedspectator` smallint unsigned NOT NULL default '0',
  `britishwon` smallint unsigned NOT NULL default '0',
  `britishlost` smallint unsigned NOT NULL default '0',
  `americanswon` smallint unsigned NOT NULL default '0',
  `americanslost` smallint unsigned NOT NULL default '0',
  `britishflagscaptured` smallint unsigned NOT NULL default '0',
  `americansflagscaptured` smallint unsigned NOT NULL default '0',
  `flagscaptured` smallint unsigned NOT NULL default '0',
  PRIMARY KEY  (`dataid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE utf8mb4_general_ci;

-- Moved from defaults.sql.
INSERT INTO `ps_config_events` (`id`, `gametype`, `modtype`, `eventname`, `alias`, `regex`, `idx`, `ignore`, `codefile`) 
    VALUES 
        (1,'source','','kill','','/^\"(.+(?:<[^>]*>))\" killed \"(.+(?:<[^>]*>))\" with \"([^\"]*)\"(.*)/',10,0,''),
        (2,'source','','attacked','','/^\"(.+(?:<[^>]*>))\" attacked \"(.+(?:<[^>]*>))\" with \"([^\"]+)\"(.*)/',20,1,''),
        (3,'source','','plrtrigger','','/^\"(.+(?:<[^>]*>))\" triggered \"([^\"]+)\"(.*)/',30,0,''),
        (4,'source','','round','','/^World triggered \"([^\"]+)\"(.*)/',40,0,''),
        (5,'source','','entered_game','','/^\"(.+(?:<[^>]*>))\" entered the game(.*)/',50,0,''),
        (6,'source','','joined_team','','/^\"(.+(?:<[^>]*>))\" joined team \"([^\"]+)\"/',60,0,''),
        (7,'source','','suicide','','/^\"(.+(?:<[^>]*>))\" committed suicide with \"([^\"]+)\"(.*)/',70,0,''),
        (8,'source','','changed_name','','/^\"(.+(?:<[^>]*>))\" changed name to \"([^\"]+)\"/',80,0,''),
        (9,'source','','connected','','/^\"(.+(?:<[^>]*>))\" connected, address \"([^\"]+)\"/',90,0,''),
        (10,'source','','connected_steamid','','/^\"(.+(?:<[^>]*>))\" (?:STEAM|VALVE) USERID (.+)/',100,0,''),
        (11,'source','','disconnected','','/^\"(.+(?:<[^>]*>))\" disconnected/',110,0,''),
        (12,'source','','chat','','/^\"(.+(?:<[^>]*>))\" say(_team)* \"(.*)\"?(.*)/',120,0,''),
        (13,'source','','rcon','','/^(Bad )?Rcon: \"rcon (-*\\d+) \"?(.*?)\"? (.+?)(?:\" from \"([^\"]+)\")?/',130,1,''),
        (14,'source','','cheated','','/^Secure: \"(.+(?:<[^>]*>))\" was detected cheating/',140,0,''),
        (15,'source','','ban','','/^(Addip|Ban(?:id)?): \"([^\"]+)\" was (?:kicked and )?(?:banned)(?: by IP)? \"([^\"]+)\" by \"([^\"]+)\"(.*)/',150,1,''),
        (16,'source','','unban','','/^Remove(id|ip): \"([^\"]+)\" was unbanned by \"(.+(?:<[^>]*>))\"(.*)/',160,1,''),
        (17,'source','','kick','','/^Kick: \"(.+(?:<[^>]*>))\" was kicked by \"(.+(?:<[^>]*>)?)\"(.*)/',170,0,''),
        (18,'source','','pingkick','','/^\"(.+(?:<[^>]*>))\" kicked due to high ping(.*)/',180,0,''),
        (19,'source','','ffkick','','/^\"(.+(?:<[^>]*>))\" has been auto kicked from the game for TKing/',190,0,''),
        (20,'source','','startedmap','','/^(Started|Loading) map \"([^\"]+)\"(.*)/',200,0,''),
        (21,'source','','logstartend','','/^Log file (started|closed)(.*)/',210,0,''),
        (22,'source','','ignored1','','/^[Ss]erver (?:cvars?|say|shutdown)/',220,1,''),
        (23,'source','','ignored2','','/^(?:\\]TSC\\[|Succeeded|FATAL|-|Loaded)/',230,1,''),
        (24,'source','','ignored3','','/^(?:Config|Swear|server_)/',240,1,''),
        (25,'source','','ignored4','','/^\"[^\"]+\" = \"/',250,1,''),
        (27,'source','bg3','teamtrigger','','/^Team \"([^\"]+)\" triggered \"([^\"]+)\"(.*)/',270,0,''),
        (33,'source','','changed_role','','/^\"(.+(?:<[^>]*>))\" changed role to \"([^\"]+)\"/',330,0,''),
        (45,'source','','rcon2','','/^rcon from/',130,1,''),
        (48,'source','','spatial','','/^\\[KTRAJ\\] \"(.+(?:<[^>]*>))\" killed \"(.+(?:<[^>]*>))\" with \"([^\"]*)\"(.*)/',480,0,''),
        (49,'source','','plugin','','/^\\[[^\\]]+\\]/',490,1,''),
        (50,'source','','console','','/^(CONSOLE|PLAYER FILTER) :/',500,1,''),
        (80,'source','bg3','bg3_ignore1','','/^([^\"]+) Scores: DAMAGE: (\\d+) +SCORE: (\\d+)/',800,1,''),
        (81,'source','bg3','bg3_ignore2','','/^Executing (dedicated|listenserver) server config file (.+)/',810,1,''),
        (100,'source','','ignored5','','/^Server name is \"([^"]+)\"/',1000,1,''),
        (101,'source','','ignored6','','/^Connection to Steam servers successful./',1010,1,''),
        (102,'source','','ignored7','','/^VAC secure mode is activated./',1020,1,''),
        (103,'source','','ignored8','','/^Assigned anonymous gameserver Steam ID \[(.:\\d:\\d+:\\d+)\]./',1030,1,''),
        (104,'source','','ignored9','','/^Public IP is ([0-9A-Fa-f]{1,4}:){7}[0-9A-Fa-f]{1,4}|(\\d{1,3}\.){3}\\d{1,3}./',1040,1,'');

INSERT INTO `ps_config_plrbonuses` (`id`, `eventname`, `enactor`, `enactor_team`, `victim`, `victim_team`, `description`, `gametype`, `modtype`) 
    VALUES 
        (27,'round_win',0,50,0,-50,'TEAM event that fires when a round ends and a team won','source','bg3'),
        (34,'ffkill',-10,0,0,0,'when a player kills a team mate','',''),
        (38,'flag_captured',5,0,0,0,'When a player captures a flag','source','bg3');

INSERT INTO `ps_config_awards` (`id`, `enabled`, `idx`, `type`, `negative`, `class`, `name`, `groupname`, `phrase`, `expr`, `order`, `where`, `limit`, `format`, `gametype`, `modtype`, `rankedonly`, `description`) 
    VALUES 
        (4,1,10,'player',0,'','Highest Skill','','{$player.link} has the highest skill with {$award.value}','{$skill}','desc','',0,'%.02f',NULL,NULL,1,'Player with the highest skill'),
        (6,1,20,'player',0,'','Most Kills','','{$player.link} has killed the most players ({$award.value})','{$kills}','desc','',0,'commify',NULL,NULL,1,'Player with the most kills (any team)'),
        (8,1,70,'player',0,'','Most Time Online','','{$player.link} has been online the longest ({$award.value})','{$onlinetime}','desc','',25,'compacttime',NULL,NULL,1,'Player with the most online time'),
        (9,1,190,'weaponclass',0,'','Most Kills with {$weapon.class} weapons','','{$player.link} has the most {$weapon.class} kills ({$award.value})','{$kills}','desc','',0,'commify',NULL,NULL,1,'Most kills with {$weapon.class} type weapons (including: {$weapon.list}).'),
        (10,1,180,'weapon',0,'','Most Kills with {$weapon.name}','','{$player.link} has the most {$weapon.link} kills ({$award.value})','{$kills}','desc','',0,'commify',NULL,NULL,1,'Most kills with a {$weapon.name}'),
        (13,1,30,'player',0,'','Most Bonus Points','','{$player.link} achieved the most bonus points ({$award.value})','{$totalbonus}','desc','',25,'commify',NULL,NULL,1,'Player that has achieved the most bonus points.'),
        (22,1,140,'player',0,'','Most Flags Captured','','{$player.link} has captured the most flags ({$award.value})','{$flagscaptured}','desc','',10,'commify','source','bg3',1,'Player has captured the most flags.'),
        (23,1,50,'player',1,'','Worst Teammate','','{$player.link} has killed the most teammates ({$award.value})','{$ffkills}','desc','',0,'commify',NULL,NULL,1,'Player with the most friendly fire kills (ie: Worst Teammate)'),
        (25,1,60,'player',1,'','Worst Team Kill Percentage','','{$player.link} has the highest team kill percentage ({$award.value})','{$ffkills} / {$kills} * 100','desc','',0,'%0.02f%%',NULL,NULL,1,'Player with the highest team kill percentage.');

INSERT INTO `ps_config_overlays` (`id`, `gametype`, `modtype`, `map`, `minx`, `miny`, `maxx`, `maxy`, `width`, `height`, `flipv`, `fliph`, `rotate`) 
    VALUES 
        (1, 'source', 'bg3', 'bg_ambush', -5380, -6130, 5080, 15, 600, 352, 1, 0, 0),
        (2, 'source', 'bg3', 'bg_canal', -1920, -2280, 3215, 2245, 600, 529, 1, 0, 0),
        (3, 'source', 'bg3', 'bg_freemans_farm', -2605, -5145, 2575, 5180, 300, 600, 1, 0, 0),
        (4, 'source', 'bg3', 'bg_ft_stmathieu', -3000, -5360, 5400, 2405, 600, 554, 1, 0, 0),
        (5, 'source', 'bg3', 'bg_maricopa', -6040, -5880, 3095, 2445, 600, 544, 1, 0, 0),
        (6, 'source', 'bg3', 'bg_plateau', -3065, -4635, 3090, 4625, 401, 600, 1, 0, 0),
        (7, 'source', 'bg3', 'bg_snowlake', -2440, -2835, 4095, 6880, 415, 600, 1, 0, 0),
        (8, 'source', 'bg3', 'bg_townguard', -2820, -2770, 2795, 3625, 390, 600, 1, 0, 0),
        (9, 'source', 'bg3', 'bg_trenton', -3300, -2005, 1915, 1775, 600, 435, 1, 0, 0),
        (10, 'source', 'bg3', 'bg_winterisle', -2440, -3300, 1650, 2830, 399, 600, 1, 0, 0),
        (11, 'source', 'bg3', 'bg_woodland', -2795, -3875, 1440, 3120, 367, 600, 1, 0, 0),
        (12, 'source', 'bg3', 'bg_wrecked', -710, -4200, 3900, 2090, 443, 600, 1, 0, 0),
        (13, 'source', 'bg3', 'ctf_mill_creek', -3650, -3095, 4675, 3335, 600, 467, 1, 0, 0),
        (14, 'source', 'bg3', 'ctf_river', -870, -3110, 1890, 3355, 258, 600, 1, 0, 0),
        (15, 'source', 'bg3', 'ctf_road', -4755, -3905, 2240, -1715, 600, 189, 1, 0, 0),
        (16, 'source', 'bg3', 'ctf_stonefort', -4490, -645, 2705, 2030, 600, 223, 1, 0, 0),
        (17, 'source', 'bg3', 'lb_alpinepass', -10640, -10730, 8060, 10795, 525, 600, 1, 0, 0),
        (18, 'source', 'bg3', 'lb_autumn', -10380, -10375, 10435, 10365, 600, 599, 1, 0, 0),
        (19, 'source', 'bg3', 'lb_battleofconcord', -10350, -7860, 10185, 7940, 600, 459, 1, 0, 0),
        (20, 'source', 'bg3', 'lb_battleofvalcourisland', -9725, -8190, 9755, 8085, 600, 504, 1, 0, 0),
        (21, 'source', 'bg3', 'lb_continental', -7930, -7940, 7940, 7945, 600, 599, 1, 0, 0),
        (22, 'source', 'bg3', 'lb_nativevalley', -6200, -6200, 6200, 6200, 600, 600, 1, 0, 0),
        (23, 'source', 'bg3', 'lb_princeton', -7280, -5160, 11300, 13385, 600, 600, 1, 0, 0),
        (24, 'source', 'bg3', 'sg_deroga', -4635, -4640, 3670, 3595, 599, 600, 1, 0, 0),
        (25, 'source', 'bg3', 'sg_fall', -885, -1190, 4165, 1345, 600, 300, 1, 0, 0),
        (26, 'source', 'bg3', 'sg_ravine', -1945, -3220, 1920, 2790, 391, 600, 1, 0, 0),
        (27, 'source', 'bg3', 'sg_siege', -1715, -1260, 2490, 1245, 600, 356, 1, 0, 0),
        (28, 'source', 'bg3', 'sq', -475, -450, 750, 1470, 381, 600, 1, 0, 0);

-- QoL.
INSERT INTO `ps_weapon` (`weaponid`, `uniqueid`, `name`, `skillweight`, `class`) 
    VALUES 
        (1, 'old_model_charleville', 'Charleville 1728', 1, 'Rifle'),
        (2, 'pattern1776', 'Pattern 1776', 0.9, 'Rifle'),
        (3, 'miquelet', 'Miquelet', 0.9, 'Rifle'),
        (4, 'sea_service', 'Sea Service', 1, 'Rifle'),
        (5, 'old_model_charleville_bayonet', 'Charleville 1728 Bayonet', 1, 'Bayonet'),
        (6, 'dutch', 'Dutch', 1.1, 'Rifle'),
        (7, 'longpattern_bayonet', 'Brown Bess Long Pattern Bayonet', 1, 'Bayonet'),
        (8, 'dutch_bayonet', 'Dutch Bayonet', 1.1, 'Bayonet'),
        (9, 'brownbess_bayonet', 'Brown Bess Bayonet', 1, 'Bayonet'),
        (10, 'brownbess', 'Brown Bess', 0.9, 'Rifle'),
        (11, 'hanger', 'Hanger', 1.1, 'Sword'),
        (12, 'beltaxe', 'Beltaxe', 1, 'Melee'),
        (13, 'smallsword', 'Small Sword', 1.1, 'Sword'),
        (14, 'spontoon', 'Spontoon', 1.15, 'Pike'),
        (15, 'pistol_b', 'Hessian Dragoon Pistol', 1.25, 'Pistol'),
        (16, 'sabre', 'Sabre', 0.8, 'Sword'),
        (17, 'club', 'Club', 0.75, 'Melee'),
        (18, 'revolutionnaire_nobayo', 'Revolutionnaire (no bayonet)', 1, 'Rifle'),
        (19, 'charleville', 'Charleville 1763', 1, 'Rifle'),
        (20, 'charleville_bayonet', 'Charleville 1763 Bayonet', 1.1, 'Bayonet'),
        (21, 'miquelet_bayonet', 'Miquelet Bayonet', 1, 'Bayonet'),
        (22, 'brownbess_nobayo', 'Brown Bess (no bayonet)', 1, 'Rifle'),
        (23, 'tomahawk', 'Tomahawk', 0.85, 'Melee'),
        (24, 'american_brownbess_nobayo', 'American Brown Bess (no bayonet)', 1, 'Rifle'),
        (25, 'longpattern_nobayo', 'Brown Bess Long Pattern (no bayonet)', 1, 'Rifle'),
        (26, 'longpattern', 'Brown Bess Long Pattern', 1, 'Rifle'),
        (27, 'pistol_a', 'Holster Pistol', 1.25, 'Pistol'),
        (28, 'american_brownbess', 'American Brown Bess', 1, 'Rifle'),
        (29, 'fowler', 'Fowler', 0.9, 'Rifle'),
        (30, 'brownbess_carbine', 'Brown Bess Carbine', 1, 'Carbine'),
        (31, 'pennsylvania', 'Pennsylvania Longrifle', 1.15, 'Rifle'),
        (32, 'hirschf', 'Hirschfanger', 0.95, 'Sword'),
        (33, 'knife', 'Riflemans Knife', 1.2, 'Melee'),
        (34, 'jaeger', 'Kentucky Longrifle', 1, 'Rifle'),
        (35, 'world', 'Swivel Gun', 2, 'Artillery'),
        (36, 'brownbess_carbine_nobayo', 'Brown Bess Carbine (no bayonet)', 1, 'Carbine'),
        (37, 'revolutionnaire', 'Revolutionnaire', 1, 'Rifle'),
        (38, 'swivel_gun', 'Swivel Gun', 2, 'Artillery'),
        (39, 'grenade_frag', 'Grenade', 1.25, 'Grenade'),
        (40, 'light_model_charleville', 'Light Model Charleville', 1, 'Rifle'),
        (41, 'light_model_charleville_bayonet', 'Light Model Charleville Bayonet', 1, 'Bayonet'),
        (42, 'french_carbine', 'French Carbine', 1, 'Carbine'),
        (43, 'rapier', 'Rapier', 1.1, 'Sword'),
        (44, 'oldpattern_bayonet', 'Old Pattern Musket Bayonet', 1, 'Bayonet'),
        (45, 'dagger', 'Dagger', 1.2, 'Melee'),
        (46, 'blunderbuss', 'Blunderbuss', 0.9, 'Shotgun'),
        (47, 'oldpattern', 'Old Pattern Musket', 1, 'Rifle'),
        (48, 'artillery_common_carbine_bayonet', 'Artlillery Common Bayonet', 1, 'Bayonet'),
        (49, 'serjeant_fusil', 'Serjeant Fusil', 1, 'Rifle'),
        (50, 'trade_musket', 'Northwest Gun', 1, 'Rifle'),
        (51, 'gunstock', 'Rifle Butt', 1.2, 'Melee');

INSERT INTO `ps_role` (`roleid`, `uniqueid`, `name`, `team`) 
    VALUES 
        (1, 'light_infantry', 'Light Infantry', NULL),
        (2, 'continental_soldier', 'Continental Soldier', NULL),
        (3, 'royal_infantry', 'Royal Infantry', NULL),
        (4, 'royal_commander', 'Royal Commander', NULL),
        (5, 'frontiersman', 'Frontiersman', NULL),
        (6, 'grenadier', 'British Grenadier', NULL),
        (7, 'jaeger', 'Jaeger', NULL),
        (8, 'militia', 'Militia', NULL),
        (9, 'native', 'Native Warrior', NULL),
        (10, 'continental_officer', 'Continental Officer', NULL),
        (11, 'minuteman', 'Minuteman', NULL),
        (12, 'french_grenadier', 'French Grenadier', NULL);
        
INSERT INTO `ps_config` (`id`, `conftype`, `section`, `var`, `value`, `label`, `type`, `locked`, `verifycodes`, `options`, `help`) 
    VALUES 
        (1,'main',NULL,'meta_keywords','PsychoStats Game Server Player Statistics Battle Grounds III BG3 Valve','Site HTML Meta Key Words','text',0,'','','These are the HTML meta key words for your PsychoStats.  They are used by search engines to provide search results.');
