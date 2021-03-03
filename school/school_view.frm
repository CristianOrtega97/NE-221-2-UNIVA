TYPE=VIEW
query=select `school`.`school`.`id` AS `id`,`school`.`school`.`name` AS `name`,`school`.`school`.`description` AS `description`,`school`.`school`.`is_active` AS `is_active`,`school`.`school`.`create_at` AS `create_at`,`school`.`school`.`update_at` AS `update_at`,`school`.`school`.`teacher_id` AS `teacher_id`,`school`.`teacher`.`first_name` = \'teacher_first_name\' AS `teacher.first_name = \'teacher_first_name\'`,`school`.`student`.`id` = \'student_id\' AS `student.id = \'student_id\'`,`school`.`student`.`first_name` = \'student_first_name\' AS `student.first_name = \'student_first_name\'` from ((`school`.`school` join `school`.`teacher` on(`school`.`teacher`.`id` = `school`.`school`.`teacher_id`)) join `school`.`student` on(`school`.`student`.`id` = `school`.`school`.`student_id`))
md5=443dbffae8167e13d02b3c2f7a76ece2
updatable=1
algorithm=0
definer_user=root
definer_host=localhost
suid=2
with_check_option=0
timestamp=2021-02-28 00:12:13
create-version=2
source=SELECT \n	school.id AS \'id\',\n    name AS \'name\',\n    description AS \'description\',\n    school.is_active AS \'is_active\',\n    school.create_at AS \'create_at\',\n    school.update_at AS \'update_at\',\n    teacher_id AS \'teacher_id\',\n    teacher.first_name = \'teacher_first_name\',\n    student.id = \'student_id\',\n    student.first_name = \'student_first_name\'\nFROM school\nINNER JOIN teacher ON teacher.id = school.teacher_id\nINNER JOIN student ON student.id = school.student_id
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_unicode_ci
view_body_utf8=select `school`.`school`.`id` AS `id`,`school`.`school`.`name` AS `name`,`school`.`school`.`description` AS `description`,`school`.`school`.`is_active` AS `is_active`,`school`.`school`.`create_at` AS `create_at`,`school`.`school`.`update_at` AS `update_at`,`school`.`school`.`teacher_id` AS `teacher_id`,`school`.`teacher`.`first_name` = \'teacher_first_name\' AS `teacher.first_name = \'teacher_first_name\'`,`school`.`student`.`id` = \'student_id\' AS `student.id = \'student_id\'`,`school`.`student`.`first_name` = \'student_first_name\' AS `student.first_name = \'student_first_name\'` from ((`school`.`school` join `school`.`teacher` on(`school`.`teacher`.`id` = `school`.`school`.`teacher_id`)) join `school`.`student` on(`school`.`student`.`id` = `school`.`school`.`student_id`))
mariadb-version=100417
