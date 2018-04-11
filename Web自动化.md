## web自动化

### web页面下载
```
# 用wget可以下载网页或远程文件
$ wget URL

# 可以指定从多个URL处进行下载
$ wget URL1 URL2 URL3 .. 

# 也可以用选项-o指定一个日志文件，这样日志信息就不会被打印到stdout了
$ $ wget ftp://example_domain.com/somefile.img -O dloaded_file.img -o log

# 用-t指定重试次数
$ wget -t 5 URL

# 使用--limit-rate对wget进行限速
$ wget --limit-rate 20k http://example.com/file.iso 

# 还可以指定最大下载配额（quota）。配额一旦用尽，下载随之停止。
$ wget -Q 100m http://example.com/file1 http://example.com/file2 

# 断点续传
# 如果使用wget进行的下载在完成之前被中断，可以利用选项-c从断点开始继续下载
$ wget -c URL 

# 复制整个网站（镜像）
$ wget --mirror --convert-links exampledomain.com 
$ wget -r -N -l -k DEPTH URL 
```
### 以纯文本形式下载网页
```
# 用lynx命令的-dump选项将网页内容以ASCII编码的形式存储到文本文件中
$ lynx -dump http://google.com > plain_text_page.txt
```

### cURL入门
```
# cURL通常将下载文件输出到stdout，将进度信息输出到stderr。要想避免显示进度信息，请使用--silent选项
# 将下载的文件输出到终端
$ curl URL

# 要避免curl命令显示进度信息，可以使用--silent选项：
$ curl URL --silent 

# 选项 –O表明将下载数据写入文件，而非标准输出中。该文件采用的是从URL中解析出的文件名
$ curl URL --silent -O 

# 如果需要在下载过程中显示形如 # 的进度条，用 --progress代替 --silent
$ curl http://slynux.org -o index.html --progress

# 断点续传
$ curl URL/file -C offset 

# cURL推断出正确的续传位置，请使用选项 -C -
$ curl -C - URL 

# 用cURL设置参照页字符串
# curl --referer Referer_URL target_URL 
$ curl --referer http://google.com http://slynux.org 

# 用cURL设置cookie 
# 要指定cookie，使用 --cookie "COOKIES"选项
$ curl http://example.com --cookie "user=slynux;pass=hack" 

# 用cURL设置用户代理字符串
# cURL的 --user-agent或 -A选项用于设置用户代理
$ curl URL --user-agent "Mozilla/5.0" 

# 其他HTTP头部信息也可以通过cURL来发送。用-H"头部信息"传递多个头部信息
$ curl -H "Host: www.slynux.org" -H "Accept-language: en" URL

# 限定cURL可占用的带宽
$ curl URL --limit-rate 20k 

# 指定最大下载量
$ curl URL --max-filesize bytes 

# 用cURL进行认证
# 可以用cURL的选项 -u完成HTTP或FTP认证
$ curl -u user:pass http://test_auth.com 

# 只打印响应头部信息
# 通过 -I或--head 就可以只打印HTTP头部信息，而无须下载远程文件
$ curl -I http://slynux.org
```
### 解析网站数据
```
# sed和awk是完成这项工作的主要工具

```
### 以 POST 方式发送请求并读取响应
```
# 使用curl发送POST请求并读取网站的响应（HTML格式）
$ curl URL -d "postvar=postdata2&postvar2=postdata2" 
```