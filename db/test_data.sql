USE cpnvstore;

INSERT INTO `cpnvstore`.`apps` (`name`, `description`, `location`) VALUES ('Joutes', 'Super app pour les joutes', 'http://www.google.com/');
INSERT INTO `cpnvstore`.`apps` (`name`, `description`, `location`) VALUES ('Runeo', 'gestion runs paleo', 'http://crouton.net/');
INSERT INTO `cpnvstore`.`apps` (`name`, `description`, `location`) VALUES ('Super jeu', 'Un super jeu', 'http://play.google.com/');

INSERT INTO `cpnvstore`.`roles` (`name`, `index`) VALUES ('admin', '4');
INSERT INTO `cpnvstore`.`roles` (`name`, `index`) VALUES ('user', '2');
INSERT INTO `cpnvstore`.`roles` (`name`, `index`) VALUES ('superadmin', '6');
INSERT INTO `cpnvstore`.`roles` (`name`, `index`) VALUES ('visitor', '0');

INSERT INTO `cpnvstore`.`categories` (`name`) VALUES ('jeux');
INSERT INTO `cpnvstore`.`categories` (`name`) VALUES ('evenements');

INSERT INTO `cpnvstore`.`users` (`first_name`, `last_name`, `email`, `role_id`) VALUES ('Nico', 'Maitre', 'nmaitre@oui.ch', '2');
INSERT INTO `cpnvstore`.`users` (`first_name`, `last_name`, `email`, `role_id`) VALUES ('Xav', 'Carrel', 'xcl@cpnv.ch', '3');
INSERT INTO `cpnvstore`.`users` (`first_name`, `last_name`, `email`, `role_id`) VALUES ('Alex', 'Phil', 'alphi@cp.ch', '1');

INSERT INTO app_category SET category_id=2, app_id=1;
INSERT INTO app_category SET category_id=2, app_id=2;
INSERT INTO app_category SET category_id=1, app_id=3;