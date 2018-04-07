
### 监视磁盘使用情况
```
# 某文件占用的磁盘空间
# du FILENAME1 FILENAME2
$ du test.txt 

# 获得某个目录中所有文件的磁盘使用情况，并在每一行中显示各个文件占用磁盘的详情
# du -a DIRECTORY
$ du -a test

# 以KB,MB为单位显示磁盘使用情况
# du -h FILENAME
$ du -h test.sh

# 显示磁盘使用统计
# du -c FILENAME1 FILENAME2
# du -c DIRECTORY
$ du -c test

# 以特定单位输出文件大小
$ du -b FILE #字节
$ du -k FILE #KB
$ du -m FILE #MB
$ du -B BLOCK_SIZE FILE # 指定以块大小输出文件大小

# df提供磁盘可用大小信息
# df -h 以易读的格式打印磁盘空间信息
$ df -h 
```

### 计算命令执行时间
```
# 将time放到想要运行的命令之前,命令COMMAND会执行输出，同时会输出命令执行时间
# time COMMANG
$ time ls

# 可以使用选项-o将输出写入文件
$ /usr/bin/time -o output.txt COMMAND
# 要将命令执行时间写入文件且不影响原内容,使用选项-a以及-o
$ /usr/bin/time -a -o output.txt COMMAND
```

### 收集与当前登录用户，启动日志及启动故障的相关信息
```
# 获取当前登录用户的信息
$ who

# 获取有关登录用户的更信息信息
$ w

# 获取当前登录主机的用户列表
$ users

# 查看系统已经加电运行了多长时间
$ uptime

# 获取上一次启动以及用户会话的信息
$ last

# 获取单个用户的登录会话的信息
$ last USER

# 获取重启会话的信息
$ last reboot

# 获取失败的用户登录会话信息
$ lastb
```

### 使用watch监视命令输出
```
# watch命令可以在终端中以固定时间间隔监视命令输出，默认每2秒更新一次输出
# watch COMMAND
# watch 'COMMAND'
# 可以用-n SECOND指定时间间隔输出
# -d可以将时间间隔前后命令输出的不同处用不同颜色表示出来
$ watch ls
$ watch 'ls -l |grep "a"'
$ watch -n 5 'ls -l' # 以5s为间隔监视ls -l的输出
$ watch -d 'COMMANDS'
```

### 用syslog记录日志
```
# 向系统日志文件/var/log/messages中写入日志信息
$ logger LOG_MESSAGE

# 如果要记录特定的标记(tag),应使用
$ logger -t TAG this is a message

# 要将另一个日志文件的最后一行记录到日志系统中
$ logger -f /var/log/source.log
```

### 电源使用的测量与优化
```
# 使用powertop对电源进行测量及优化
$ powertop

# 生成HTML格式的报表
# powertop --html
```
### 监视磁盘活动
```
# 交互式监视 -o选项只显示正在进行i/o活动的进程
$ iotop -o

# 用于Shell脚本的非交互式用法
$ iotop -b -n 2

# 监视特定进程
$ iotop -p PID
```

### 收集进程信息
```
$ ps

# 用-f包含更多的列
$ ps -f

# 用head过滤，显示前10行
$ ps -e | head

# 输出占用CPU最多的进程列表
$ top

# 获得特定命令的进程ID列表
$ pgrep COMMAND


```