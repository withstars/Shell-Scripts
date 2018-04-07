USER="root"
PASSWORD="0000"

mysql -u $USER -p $PASSWORD <<EOF 2> /dev/null
CREATE DATABASE students;
EOF

[ $? -eq 0]&& echo 'Created DB' || echo 'DB already exists'
mysql -u $USER -p $PASSWORD students <<EOF 2> /dev/null
CREATE TABLE students(
id int ,
name varchar(10),
mark int,
dept varchar(4)
);
EOF

[$? -eq 0] && echo 'Created table students'||echo 'Table students already exists'

# mysql -u $USER -p $PASSWORD students <<EOF
# DELETE FROM students;
# EOF
