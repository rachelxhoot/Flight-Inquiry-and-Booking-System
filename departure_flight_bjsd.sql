DROP VIEW departure_flight_bjsd;
CREATE ALGORITHM = UNDEFINED DEFINER = `root` @`localhost` SQL SECURITY DEFINER VIEW `departure_flight_bjsd` AS
select
  `web_flight`.`flight_id` AS `flight_id`,
  `web_flight`.`departure_time` AS `departure_time`,
  `web_flight`.`destination_id` AS `destination_id`,
  `web_flight`.`terminal` AS `terminal`
from
  `web_flight`
where
  (`web_flight`.`departure_id` = '北京首都机场') WITH CASCADED CHECK OPTION