1. `ps -ef|grep nsq|grep -v grep|awk '{print $2}'| xargs kill` 批量杀进程（注意，杀之前，先用`ps -ef|grep nsq|grep -v grep`检查以下）
1. `date '+%F %T'` https://www.thegeekstuff.com/2013/05/date-command-examples/
    ```bash
    $ date "+%Y-%m-%d %H:%M:%S"
    2020-05-07 09:16:57
    ```

    ```
    date +"%T.%N" returns the current time with nanoseconds.
    06:46:41.431857000
    date +"%T.%6N" returns the current time with nanoseconds rounded to the first 6 digits, which is microseconds.

    06:47:07.183172
    date +"%T.%3N" returns the current time with nanoseconds rounded to the first 3 digits, which is milliseconds.

    06:47:42.773
    In general, every field of the date command's format can be given an optional field width.
    %xN: nice one for the field width!
    date +"%Y-%m-%d %H:%M:%S.%3N" for milli seconds.
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

1. The following are from [My Favorite CLI Tools](https://medium.com/swlh/my-favorite-cli-tools-c2fa484cee52)
1. [Starship](https://starship.rs/) is a prompt that works for any shell.
    ```bash
    # ~/.config/starship.toml
    # https://starship.rs/config/#time
    [time]
    disabled = false
    format = "🕙[%F %T%.3f]"
    ```
1. [z](https://github.com/rupa/z)  quickly jump around your filesystem.
1. [fzf](https://github.com/junegunn/fzf) “fuzzy finder”. It’s a general-purpose tool that lets you find files, commands in the history, processes, git commits, and more using a fuzzy search.
1. [ripgrep](https://github.com/BurntSushi/ripgrep)  an alternative to the grep command - much faster one, with sane defaults and colorized output.
1. [tldr](https://tldr.sh/) Simplified man pages.
1. [exa](https://the.exa.website/) a replacement for the ls command.
1. [ncdu](https://dev.yorhel.nl/ncdu) Disk usage analyzer for the terminal.
1. `while true; do date '+%Y-%m-%d %H:%M:%S'; ps aux | grep rig_linux |grep foots| grep -v grep | grep -v tail; sleep 10; done`
1. 定期记录top5的内存进程情况
    ```bash
    #/bin/bash

    # 本脚本每10分钟打印top5的内存占用的进程信息
    # 用法1(每10分TOP5): sh topmem.sh >> topmem.log
    # 用法2(每60秒TOP6)：sh topmem.sh 6 60 >> topmem.log

    SLEEP=${1:-600}
    TOP=${2:-5}

    echo "每$SLEEP秒，打印内存TOP$TOP的进程信息"

    while true
    do
        date '+%Y-%m-%d %H:%M:%S'
        ps aux | awk '{mem[$11]+=int($6/1024)}; {cpuper[$11]+=$3};{memper[$11]+=$4}; END {for (i in mem) {print cpuper[i]"%\t",memper[i]"%\t",mem[i]"MB\t",i}}' | sort -k3nr | head -n $TOP
        sleep $SLEEP
    done

    # [root@host-192-168-111-30 ~]# ps aux | head -n 2
    # USER       PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
    # root         1  0.0  0.0 191184  4152 ?        Ss   8月21   0:35 /usr/lib/systemd/systemd --switched-root --system --deserialize 22

    # 每600秒，打印内存TOP5的进程信息
    # 2020-08-26 12:20:57
    # 0%	 1.9%	 155MB	 /usr/bin/gnome-shell
    # 0%	 1.2%	 104MB	 /bin/python
    # 0.3%	 1.3%	 101MB	 /usr/bin/rigaga
    # 0.1%	 0.6%	 52MB	 python
    # 0%	 0.5%	 46MB	 /usr/bin/python
    ```
