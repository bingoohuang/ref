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

## Curl exercises

from https://jvns.ca/blog/2019/08/27/curl-exercises/

1. Request https://httpbin.org
1. Request https://httpbin.org/anything. httpbin.org/anything will look at the request you made, parse it, and echo back to you what you requested. curl’s default is to make a GET request.
1. Make a POST request to https://httpbin.org/anything
1. Make a GET request to https://httpbin.org/anything, but this time add some query parameters (set value=panda).
1. Request google’s robots.txt file (www.google.com/robots.txt)
1. Make a GET request to https://httpbin.org/anything and set the header User-Agent: elephant.
1. Make a DELETE request to https://httpbin.org/anything
1. Request https://httpbin.org/anything and also get the response headers
1. Make a POST request to https://httpbin.org/anything with the JSON body {"value": "panda"}
1. Make the same POST request as the previous exercise, but set the Content-Type header to application/json (because POST requests need to have a content type that matches their body). Look at the json field in the response to see the difference from the previous one.
1. Make a GET request to https://httpbin.org/anything and set the header Accept-Encoding: gzip (what happens? why?)
1. Put a bunch of a JSON in a file and then make a POST request to https://httpbin.org/anything with the JSON in that file as the body
1. Make a request to https://httpbin.org/image and set the header ‘Accept: image/png’. Save the output to a PNG file and open the file in an image viewer. Try the same thing with with different Accept: headers.
1. Make a PUT request to https://httpbin.org/anything
1. Request https://httpbin.org/image/jpeg, save it to a file, and open that file in your image editor.
1. Request https://www.twitter.com. You’ll get an empty response. Get curl to show you the response headers too, and try to figure out why the response was empty.
1. Make any request to https://httpbin.org/anything and just set some nonsense headers (like panda: elephant)
1. Request https://httpbin.org/status/404 and https://httpbin.org/status/200. Request them again and get curl to show the response headers.
1. Request https://httpbin.org/anything and set a username and password (with -u username:password)
1. Download the Twitter homepage (https://twitter.com) in Spanish by setting the Accept-Language: es-ES header.
1. Make a request to the Stripe API with curl. (see https://stripe.com/docs/development for how, they give you a test API key). Try making exactly the same request to https://httpbin.org/anything.

## Other resources

1. [curl 命令学习使用小结](https://segmentfault.com/a/1190000021715444)
