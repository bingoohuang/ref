[How to Type Less and Do More in Terminals](https://medium.com/macoclock/how-to-type-less-and-do-more-in-terminals-ee2af303b512)

## Borrowing Words from Command History

1. “!!” Represents the Last Command， `sudo !!`, it is a synonym for ‘!-1’.
1. “!$ “ Represents the Last Word in the Last Command
    user@local:~$ vim ~/.bin/my-custom-command.sh
    user@local:~$ chmod +x !$
1. !!:0: the first word in the previous command
1. !-2:$: the last word in the second-to-last command
1. !?keyword: the latest command that CONTAINS (not starts with) the word keyword
1. <pattern>:p: print the expansion (e.g. !!:p prints the previous command, !-2:$:p prints the last word in the second-to-last command, !?service prints the first command history that contains the word service, etc)

## Brace Expansion

1. {1,2,3} expands to 1 2 3
2. foo{1,2,3} and foo{1..3} both expand to foo1 foo2 foo3
3. mkdir folder{1,2,3} -> mkdir folder1 folder2 folder3
4. mkdir -p folder{1,2,3}/subfolder{1..5}
5. cp httpd.conf{,.bak}
6. for ip in 192.168.0.{1..254}; do nc -nz $ip 80 2>&- && echo $ip is serving at port 80; done

## Search Previous Commands (Ctrl + r)

1. Option1: Keep Hitting Ctrl + r
1. Option2: Type longer prefix

## Redirecting Standard Output and Standard Error

Suppressing both stdout and stderr:

1. user@local:~$ ./run.sh >/dev/null 2>&1
1. user@local:~$ ./run.sh &>/dev/null

Suppressing stdout:

1. user@local:~$ ./run.sh >/dev/null
1. user@local:~$ ./run.sh >&-

## The Fastest Way to Create an Empty File

No, it’s not `touch foo`, it’s `>foo`.

## Command Line Navigation

![image](https://user-images.githubusercontent.com/1940588/94503127-54427e00-0238-11eb-8035-a71228e5aba3.png)

Navigating the Command Line, borrowed from [codeproject](https://www.codeproject.com/Articles/1191417/Effective-Shell-Part-Navigating-the-Command-Line)

However, the above navigation only works in emacs mode (`set -o emacs`, the default setting in bash). I personally use vi mode (`set -o vi`).

## Shorten your Most Commonly Used Commands

The following used to be my top 5: `awk '{print $1}' < ~/.bash_history | sort | uniq -c | sort -k1nr | head -n5`


