select groups.group_name, users.name
from
groups
left join 
users on groups.group_ID=users.group_ID;


select rooms.room_name, groups.group_name 
from
grouprooms 
left join rooms on grouprooms.room_ID=rooms.room_ID 
left join groups on grouprooms.group_ID=groups.group_ID;



select users.name, rooms.room_name, groups.group_name
from
grouprooms 
left join rooms on grouprooms.room_ID=rooms.room_ID 
left join groups on grouprooms.group_ID=groups.group_ID
INNER join users on users.group_ID=groups.group_ID
order by users.name, groups.group_name,rooms.room_name
