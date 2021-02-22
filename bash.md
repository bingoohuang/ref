```bash
$ echo {0..3}
0 1 2 3
$ echo {01..3}
01 02 03
$ echo {3..0}
3 2 1 0
$ echo {0..20..5}
0 5 10 15 20
$ echo {00..20..5}
00 05 10 15 20
$ echo A{00..3}B
A00B A01B A02B A03B
$ echo {0,3,7}
0 3 7
$ echo {ab,xyz}1234.{jpg,gif,txt,doc}
ab1234.jpg ab1234.gif ab1234
```
