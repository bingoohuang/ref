# cURL

## 名字

该工具用于上载和下载用 URL 指定的数据。 它是一个客户端程序(‘c’) ，一个 URL 客户端，将显示数据(默认情况下)。 所以c代表 Client 和 URL: cURL。

后来，有人提出 Curl 实际上可能是一个聪明的“递归缩写”(首字母缩写中的第一个字母指的是同一个单词) : “ Curl URL Request Library”

摘自 [电子书 Everything curl](https://ec.haxx.se/)

## 常用参数

```bash
-X/--request [GET|POST|PUT|DELETE|…]  指定请求的 HTTP 方法
-H/--header                           指定请求的 HTTP Header
-d/--data                             指定请求的 HTTP 消息体（Body）
-v/--verbose                          输出详细的返回信息
-u/--user                             指定账号、密码
-b/--cookie                           读取 cookie  
```

摘自 [cURL笔记](https://www.cnblogs.com/52fhy/p/6581116.html)

## 示例：

1. `curl http://www.centos.org` 获取服务器内容，默认将输出打印到标准输出中(STDOUT)中。
1. `curl -v -XPOST -H "Content-Type: application/json" http://127.0.0.1:8080/user -d'{"username":"admin","password":"admin1234"}'`
1. `-o`将文件保存为命令行中指定的文件名的文件中 `curl -o mygettext.html http://www.gnu.org/software/gettext/manual/gettext.html`
1. `-O`使用URL中默认的文件名保存文件到本地 `curl -O http://www.gnu.org/software/gettext/manual/gettext.html`
1. 通过使用-C选项可对大文件使用断点续传功能，如：
  
    ```bash
    # 当文件在下载完成之前结束该进程
    $ curl -O http://www.gnu.org/software/gettext/manual/gettext.html
    ##############             20.1%

    # 通过添加-C选项继续对该文件进行下载，已经下载过的文件不会被重新下载
    curl -C - -O http://www.gnu.org/software/gettext/manual/gettext.html
    ###############            21.1%
    # 需要注意的是-C参数后值是-。
    ```

1. 更多例子

    ```bash
    # 下载速度最大不会超过1000B/second 
    curl --limit-rate 1000B -O http://www.gnu.org/software/gettext/manual/gettext.html

    # GET
    curl -u username https://api.github.com/user?access_token=XXXXXXXXXX

    # POST
    curl -u username --data "param1=value1&param2=value" https://api.github.com

    # 也可以指定一个文件，将该文件中的内容当作数据传递给服务器端
    curl --data @filename https://github.api.com/authorizations

    # 通过 -X 选项指定其它协议
    curl -I -X DELETE https://api.github.cim

    # 上传文件: -F/--form
    # 相当于设置form表单的method="POST"和enctype='multipart/form-data'两个属性
    curl --form "fileupload=@filename.txt" http://hostname/resource
    ```


```bash
# 如果需要对请求数据进行urlencode,可以使用下面的方式：
curl -XPOST --data-urlencode "name=leo&age=12" url

# 此外发送post请求还可以有如下几种子选项：
–data-raw
–data-ascii
–data-binary

# 请求主体用json格式
curl -X POST -H 'content-type: application/json' -d @json文件绝对路径 URL
curl -X POST -H 'content-type: application/json' -d 'json内容' URL
 
# 请求主体用xml格式
curl -X POST -H 'content-type: application/xml' -d @xml文件绝对路径 URL
curl -X POST -H 'content-type: application/xml' -d 'xml内容' URL

```

## Other resources

1. [curl 命令学习使用小结](https://segmentfault.com/a/1190000021715444)
