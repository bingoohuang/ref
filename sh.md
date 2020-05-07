1. `ps -ef|grep nsq|grep -v grep|awk '{print $2}'| xargs kill` 批量杀进程（注意，杀之前，先用`ps -ef|grep nsq|grep -v grep`检查以下）
1. `date '+%F %T'` https://www.thegeekstuff.com/2013/05/date-command-examples/
    ```bash
    $ date "+%Y-%m-%d %H:%M:%S"
    2020-05-07 09:16:57
    ```
1. `install mysql-client@5.7` mac上安装mysql client
1. 在.zshrc中`RPROMPT="%{$fg[green]%}[%D{%c}]"`, 在命令行最右边展示`[二  3/ 3 17:14:39 2020]`的效果
