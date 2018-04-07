USER="root"
PASSWORD="0000"

depts=`mysql -u $USER -p $PASSWORD students <<EOF | tail -n +2
       SELECT DISTINCT dept FROM students
       EOF`
for d in depts;
do
 echo Department:$d
 result="`mysql -u $USER -p $PASSWORD students <<EOF
 SET @i:=0;
 SELECT @i:=@i+1 as rank,name,mark FROM students WHERE dept="$d" ORDER BY mark DESC;
 EOF`"

 echo "$result"
 echo 
 
 done
