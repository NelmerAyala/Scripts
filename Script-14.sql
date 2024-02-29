
-- dbfacturacion.users_houses definition
CREATE TABLE `users_houses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `house_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_houses_UN` (`user_id`,`house_id`),
  KEY `users_users_houses_fk` (`user_id`),
  KEY `houses_users_houses_fk` (`house_id`),
  CONSTRAINT `houses_users_houses_fk` FOREIGN KEY (`house_id`) REFERENCES `houses` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `users_users_houses_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;


# Eliminar CONSTRAINT
ALTER TABLE batchs DROP FOREIGN KEY users_batch_fk;

# Crear nuevo CONSTRAINT
ALTER TABLE batchs ADD FOREIGN KEY (`created_by`) REFERENCES `users_houses` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

# Crear nuevo CONSTRAINT 
ALTER TABLE external_mailing ADD FOREIGN KEY (`created_by`) REFERENCES `users_houses` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;


# Actualizar nombre de bucket 
UPDATE dbfacturacion.houses
SET bucket='s3mayfactdigital'
WHERE bucket='s3mayfactdigital-qa';


# posibilitar null en house_id users
ALTER TABLE dbfacturacion.users MODIFY COLUMN house_id int(11) NULL;


# Unique campo email en USERS
ALTER TABLE dbfacturacion.users ADD CONSTRAINT unique_email UNIQUE KEY (email);



# Relacionar usuario con casa

INSERT INTO dbfacturacion.users_houses
(user_id, house_id, created_at, update_at, deleted_at)
select id, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, NULL from users where id not in (select DISTINCT user_id from users_houses)


INSERT INTO dbfacturacion.users_houses
(user_id, house_id, created_at, update_at, deleted_at)
VALUES (7,2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, NULL),
(7,3, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, NULL);

INSERT INTO dbfacturacion.users_houses
(user_id, house_id, created_at, update_at, deleted_at)
VALUES (6,3, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, NULL);




SELECT u.first_name, u.last_name, u.email, u.password , u.role_id, u.house_id 
FROM
	(SELECT * FROM users_febeca UNION ALL SELECT * FROM users_sillaca) u
GROUP BY u.email
HAVING COUNT(u.email) = 2


SELECT u.first_name, u.last_name, u.email, u.password , u.role_id, u.house_id 
FROM
	(SELECT * FROM users UNION ALL SELECT * FROM users_febeca_sillaca) u
GROUP BY u.email
HAVING COUNT(u.email) = 2

-- Asociando usuarios a casas 
INSERT INTO dbfacturacion.users_houses
(user_id, house_id, created_at, update_at, deleted_at)
select id, 3, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, NULL from users where id > 9 and id < 44



SELECT COUNT(u.email),u.id, u.first_name, u.last_name, u.email, u.password , u.role_id, u.house_id 
FROM
	users_houses uh inner join users u ON u.id  = uh.user_id 
GROUP BY u.email
HAVING COUNT(u.email) =2


SELECT COUNT(u.email),u.id, u.first_name, u.last_name, u.email, u.password , u.role_id, u.house_id 
FROM
	users_houses uh inner join users u ON u.id  = uh.user_id 
GROUP BY u.email
HAVING COUNT(u.email) <3



SELECT 
	COUNT(dh.house_id), h.name 
FROM 
	documents_historical dh
	INNER JOIN houses h ON dh.house_id = h.id 
group by house_id 



