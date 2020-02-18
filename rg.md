# RigGrep

一款命令行下最快的文本搜索神器 [RipGrep](https://github.com/BurntSushi/ripgrep)，据说是Rust写的，VSCode 也从 1.11 版本开始默认将 RipGrep 做为其搜索工具，由此其功能强大可见一斑。

## 安装

1.  mac `brew install ripgrep`

## Ripgrep 支持的一些特性

1. 自动递归搜索 （grep 需要 -R）。
1. 自动忽略 .gitignore 中的文件以及二进制文件和隐藏文件。
1. 可以搜索指定文件类型，如：rg -tpy foo 则限定只搜索 Python 文件，rg -Tjs foo 则排除掉 JS 文件。
1. 支持大部分 Grep 的 特性，例如：显示搜索结果的上下文、支持多个模式搜索、高亮匹配的搜索结果以及支持 Unicode 等。
1. 支持各种文本编码格式，如：UTF-8、UTF-16、latin-1、GBK、EUC-JP、Shift_JIS 等。
1. 支持搜索常见格式的压缩文件，如：gzip、xz、lzma、bzip2、lz4 等。
1. 自动高亮匹配的结果。

## 例子

1. `rg 'github.com'  README.md` 搜索指定文件中包含关键字的内容
1. `rg 'lang\w+' README.md` 正则搜索
1. `rg 'github.com' ./` 搜索指定目录及子目中包含关键字的内容
1. `rg -w 'github.com' ./` 搜索以关键字为独立单词的内容
1. `rg -w 'github.com' ./ -l` 搜索包含关键字内容的文件并且只打印文件名
1. `rg 'function writeOnCanvas' --type js`  指定文件类型
1. `rg  'function writeOnCanvas' -g '*.js'` 通配文件类型
1. `rg 'Hanzi' -g '*.{js,css}'` 搜索多个文件类型
1. `rg 'revertVowel' --type-not css` `rg 'revertVowel' -Tcss` 不包含文件类型
1. `rg -e "noConf.*lict"  -C2` 搜索匹配关键字的内容及显示其上下内容各两行
1. `rg -v "hexo" merge-configs.js` 搜索不包含关键字的内容
1. `rg -e "hexo.*warn" -o ./` 搜索关键字并只显示关键字部分的内容
1. `rg -ie "Return.*" merge.js` 搜索关键字并忽略关键字大小写的内容
1. `rg -F "i++)" ./` 把关键字当成常量字符进行搜索
1. `rg --files`  打印当前目下所有将被搜索的文件列表
1. `rg --type-list` 输出所有内置可识别文件类型


## Thanks:

1. [一款命令行下最快的文本搜索神器RipGrep](https://www.hi-linux.com/posts/29245.html)
