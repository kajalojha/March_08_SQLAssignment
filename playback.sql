use avisoft;
create table playbacks(
session_id int primary key,
customer_id int ,
start_time int ,
end_time int
CONSTRAINT check_start_and_end_time CHECK(start_time <= end_time));

-- Insert values into the playback table
INSERT INTO playback(session_id, customer_id, start_time, end_time)
VALUES (1, 1, 1, 5),
       (2, 1, 15, 23),
       (3, 2, 10, 12),
       (4, 2, 17, 28),
       (5, 2, 2, 8);

-- Insert values into the ads table
INSERT INTO ads (ad_id, customer_id, timestamp)
VALUES (1, 1, 5),
       (2, 2, 17),
       (3, 2, 20);

select session_id FROM playback p
LEFT JOIN ads a
ON p.customer_id=a.customer_id
AND a.timestamp BETWEEN p.start_time AND p.end_time
where a.customer_id IS NULL