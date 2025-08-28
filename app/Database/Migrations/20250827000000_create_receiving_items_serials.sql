CREATE TABLE `ospos_receiving_items_serials` (
  `receiving_item_serial_id` int(11) NOT NULL AUTO_INCREMENT,
  `receiving_id` int(10) NOT NULL,
  `item_id` int(10) NOT NULL,
  `line` int(3) NOT NULL,
  `chassis_number` varchar(255) NOT NULL,
  `engine_number` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`receiving_item_serial_id`),
  KEY `receiving_item_fk` (`receiving_id`,`item_id`,`line`),
  CONSTRAINT `ospos_receiving_items_serials_ibfk_1` FOREIGN KEY (`receiving_id`, `item_id`, `line`) REFERENCES `ospos_receivings_items` (`receiving_id`, `item_id`, `line`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;