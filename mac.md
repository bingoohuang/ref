# mac

## 查看端口被谁占用

```sh
$ netstat -vanp tcp | awk 'NR == 2 || /8082/'
Proto Recv-Q Send-Q  Local Address          Foreign Address        (state)     rhiwat shiwat    pid   epid  state    options
tcp46      0      0  *.8082                 *.*                    LISTEN      131072 131072  70902      0 0x0100 0x00000006
$ ps -ef|grep 70902
  501 70902 70890   0 Tue01PM ??         0:45.35 /Applications/Docker.app/Contents/MacOS/com.docker.backend -watchdog
$  lsof -i tcp:8082
COMMAND     PID       USER   FD   TYPE             DEVICE SIZE/OFF NODE NAME
com.docke 70902 bingoobjca   87u  IPv6 0xc61aec2ce64a7433      0t0  TCP *:us-cli (LISTEN)
```
