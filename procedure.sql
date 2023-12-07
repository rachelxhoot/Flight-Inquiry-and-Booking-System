DROP PROCEDURE IF EXISTS add_airport;
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_airport`(IN aname varchar(50),IN alocation varchar(50))
BEGIN
insert into web_departure_airport
values
(aname,alocation);
END

DROP PROCEDURE IF EXISTS delete_flight;
CREATE DEFINER=`root`@`localhost` PROCEDURE `delete_flight`(IN id varchar(6))
begin
delete from web_flight
where web_flight.flight_id=id;
end