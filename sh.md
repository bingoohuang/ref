1. `ps -ef|grep nsq|grep -v grep|awk '{print $2}'| xargs kill` 批量杀进程（注意，杀之前，先用`ps -ef|grep nsq|grep -v grep`检查以下）
1. `date '+%F %T'` https://www.thegeekstuff.com/2013/05/date-command-examples/
    ```bash
    $ date "+%Y-%m-%d %H:%M:%S"
    2020-05-07 09:16:57
    ```
1. `install mysql-client@5.7` mac上安装mysql client
1. 在.zshrc中`RPROMPT="%{$fg[green]%}[%D{%c}]"`, 在命令行最右边展示`[二  3/ 3 17:14:39 2020]`的效果
1. 查看当前目录可用空间`df -h .`，及子目录大小`du -hd 1 . | sort -hr`, thanks [Dr. Drang](https://leancrew.com/all-this/2020/05/sort-of-handy/)

    ```bash
    [root@iz2ze69kp3h9r3i5bd82bkz ~]# df -h .
    Filesystem      Size  Used Avail Use% Mounted on
    /dev/vda1        40G   21G   17G  56% /
    [root@iz2ze69kp3h9r3i5bd82bkz ~]# du -hd 1 . | sort -hr
    161M	.
    135M	./openresty-1.11.2.5
    22M	    ./bingoohuang
    60K	    ./.cache
    44K	    ./.npm
    16K	    ./.ssh
    12K	    ./214557307540694
    8.0K	./.pki
    8.0K	./.pip
    8.0K	./.oracle_jre_usage
    ```
