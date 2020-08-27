#/bin/bash

# 用途：每10分钟打印RSS内存>=50M的进程信息

# 用法1, 每10分50M: sh topmem.sh >> topmem.log
# 用法2, 每60秒10M：sh topmem.sh -sleep 60s -rss 10m >> topmem.log
# 用法3, 每10秒10M跑60秒：sh topmem.sh -sleep 10s -rss 10m -duration 60s >> topmem.log

sleepValue=10m
SLEEP=600
rssValue=50m
MINKILO=51200
durationVal=7d
SECS=$(( 7 * 24 * 60 * 60 ))
debug=no
i=1
while [ "$i" -le "$#" ]; do
    eval "arg=\${$i}"
    #printf '%s\n' "Arg $i: $arg"

    i=$(( i + 1 ))
    if [ "$arg" = "-sleep" ];then
        eval "sleepValue=\${$i}"
        SLEEP=$(echo $sleepValue|awk '/[0-9]$/{print $1;next};/[dD]$/{printf "%u", $1*(24*60*60);next};/[hH]$/{printf "%u", $1*(60*60);next};/[mM]$/{printf "%u", $1*60;next};/[sS]$/{printf "%u", $1;next}')
        i=$(( i + 1 ))
    elif [ "$arg" = "-rss" ] ; then
        eval "rssValue=\${$i}"
        v=$(echo $rssValue|awk '/[0-9]$/{print $1;next};/[gG]$/{printf "%u", $1*(1024*1024*1024);next};/[mM]$/{printf "%u", $1*(1024*1024);next};/[kK]$/{printf "%u", $1*1024;next}')
        MINKILO=$(( $v / 1024 ))
        i=$((i + 1))
    elif [ "$arg" = "-duration" ] ; then
        eval "durationVal=\${$i}"
        SECS=$(echo $durationVal|awk '/[0-9]$/{print $1;next};/[dD]$/{printf "%u", $1*(24*60*60);next};/[hH]$/{printf "%u", $1*(60*60);next};/[mM]$/{printf "%u", $1*60;next};/[sS]$/{printf "%u", $1;next}')
        i=$(( i + 1 ))
    elif [ "$arg" = "-debug" ] ; then
        debug=yes
    else
        echo "$arg is unknown!"
    fi
done

echo "每$sleepValue，打印RSS>=${rssValue}的进程信息，持续打印$durationVal"

if [ "$debug" = "yes" ];then
    echo "debug: 每$SECS秒，打印RSS>=${MINKILO}K的进程信息，持续打印$SECS秒"
fi

while [ $SECS -gt 0 ]; do
    date '+%Y-%m-%d %H:%M:%S.%3N'
    #ps aux | awk '{mem[$11]+=int($6/1024)}; {cpuper[$11]+=$3};{memper[$11]+=$4}; END {for (i in mem) {print cpuper[i]"%\t",memper[i]"%\t",mem[i]"MB\t",i}}' | sort -k3nr | head -n $TOP
    ps aux|tail -n +2 | sort -k6nr | awk -v MINKILO=$(( $MINKILO )) -f topmem.awk
    sleep $SLEEP
    SECS=$(( $SECS - $SLEEP ))
done

# 1. 样例输出

# [root@host-192-168-111-30 ~]# sh topmem.sh -sleep 10s -rss 60m -duration 60s
# 每10s，打印RSS>=60m的进程信息，持续打印60s
# 2020-08-27 10:57:26.525
# USER	PID	%CPU	%MEM	VSZ	RSS	TTY	STAT	START	TIME	COMMAND
# gdm	1797	0.0	1.7	3.3G	140.7M	?	Sl	8月26	0:29	/usr/bin/gnome-shell
# root	474	0.0	0.8	122.7M	64.5M	?	Ss	8月26	0:39	/usr/lib/systemd/systemd-journald
# rigaga	1211	0.3	0.8	1.6G	62.6M	?	Ssl	8月26	3:57	/usr/bin/rigaga -config /etc/rigaga/rigaga.conf -config-directory /etc/rigaga/rigaga.d
# 2020-08-27 10:57:36.553
# USER	PID	%CPU	%MEM	VSZ	RSS	TTY	STAT	START	TIME	COMMAND
# gdm	1797	0.0	1.7	3.3G	140.7M	?	Sl	8月26	0:29	/usr/bin/gnome-shell
# root	474	0.0	0.8	122.7M	64.5M	?	Ss	8月26	0:39	/usr/lib/systemd/systemd-journald
# rigaga	1211	0.3	0.8	1.6G	63.1M	?	Ssl	8月26	3:57	/usr/bin/rigaga -config /etc/rigaga/rigaga.conf -config-directory /etc/rigaga/rigaga.d

# 2. sort -k6nr 参数解释

# [sort -k3nr](https://explainshell.com/explain?cmd=sort+-k3nr)
#
# -k, --key=POS1[,POS2]
#        start a key at POS1 (origin 1), end it at POS2 (default end of line).  See POS syntax below
# -n, --numeric-sort
#        compare according to string numerical value
# -r, --reverse
#        reverse the result of comparisons
