# Iterm2

1. 选中即复制，双击即可选择某个单词，直接即可粘贴
1. `Cmd+Option+E`，iTerm将会为你展示所有标签页
1. `Cmd+Shift+H` 剪贴板历史记录
1. `Cmd+Option+B` 时间轴（命令快照）,如果你查看某一段时间执行的操作 可以使用时间轴功能
1. `Cmd+T` 新建标签页
1. `Cmd+W` 关闭标签页
1. `Cmd+左右方向键` 切换显示标签页
1. `Cmd+Shift+左右方向键` 移动当前选中的标签页位置
1. `Cmd+上下方向键`上下滚动内容
1. `Cmd+数字(Number)` 切换显示指定位置的标签页
1. `Cmd+alt+数字(Number)` 切换指定位置的窗口
1. `Cmd+,` 打开Perferences窗口
1. `Cmd+Shift+M` 标记命令
1. `Cmd+Shift+J` 回到标记处 结合上个快捷键使用
1. `Cmd+Option+E`键，iTerm将会为你展示所有标签页
1. `Cmd+点击某个文件或者某个链接` 即可打开对应的文件或链接
1. `CTL+a` 行首  `CTL+e` 行尾
1. `CTL+-` 清除一行
1. 广播输入: session窗口右键 > Toggle Broadcasting Input，更多设置（shell -> Toggle Broadcasting Input ）
1. 侧边栏工具箱Toolbelt，下可以打开不同的工具窗口
1. [itermocil](https://github.com/TomAnthony/itermocil) 自动开多pane一起干活

## Tabs and Windows

[SOURCE](https://gist.github.com/squarism/ae3613daf5c01a98ba3a)

**Function** | **Shortcut**
-------- | --------
New Tab | `⌘` + `T`
Close Tab or Window | `⌘` + `W`  (same as many mac apps)
Go to Tab | `⌘` + `Number Key`  (ie: `⌘2` is 2nd tab)
Go to Split Pane by Direction | `⌘` + `Option` + `Arrow Key`
Cycle iTerm Windows | `⌘` + `backtick`  (true of all mac apps and works with desktops/mission control)
**Splitting** |
Split Window Vertically (same profile) | `⌘` + `D`
Split Window Horizontally (same profile) | `⌘` + `Shift` + `D`  (mnemonic: shift is a wide horizontal key)
**Moving** |
Move a pane with the mouse | `⌘` + `Alt` + `Shift` and then drag the pane from anywhere
**Fullscreen** |
Fullscreen | `⌘`+ `Enter`
Maximize a pane | `⌘` + `Shift` + `Enter`  (use with fullscreen to temp fullscreen a pane!)
Resize Pane | `Ctrl` + `⌘` + `Arrow` (given you haven't mapped this to something else)
**Less Often Used By Me** |
Go to Split Pane by Order of Use | `⌘` + `]` , `⌘` + `[`
Split Window Horizontally (new profile) | `Option` + `⌘` + `H`
Split Window Vertically (new profile) | `Option` + `⌘` + `V`
Previous Tab | `⌘`+ `Left Arrow`  (I usually move by tab number)
Next Tab | `⌘`+ `Right Arrow`
Go to Window | `⌘` + `Option` + `Number`

## My Favorite Shell Key Combos

These might be helpful to getting you faster with the shell but really this
isn't iTerm2 specific.  I'm assuming you are using bash or zsh on Mac.
There are many tips but I use these quite a bit.  There is also more than one way
to do it sometimes so adopt what you like best.

Hopefully some of these change your life.  :)

**Function** | **Shortcut** | **Use**
-------- | -------- | --------
Delete to start of line (favorite) | `Ctrl` + `U` | Use this to start over typing without hitting Ctrl-C
Delete to end of line (favorite) | `Ctrl` + `K` | Use this with command history to repeat commands and changing one thing at the end!
Repeat last command | `Up Arrow` | Cycle and browse your history with up and down.  `Ctrl-R` is faster if you know the string you are looking for.
Move back and forth on a line | `Arrow Keys` | This takes you off the home row but it's easy to remember
Move back and forth on a line by words | `⌥` + `Arrow Keys` | Fast way to jump to a word to correct a typo or "run again" with minor changes
Delete previous word (in shell) | `Ctrl` + `W` | It's faster to delete by words.  Especially when your last command was wrong by a single typo or something.
Clear screen | `Ctrl` + `L` | This is telling the shell to do it.  When this doesn't work `⌘` + `K` will tell iTerm to do it which works when you aren't in a shell.  Use this instead of typing `clear` over and over.

## Moving Faster

A lot of shell shortcuts work in iterm and it's good to learn these because arrow keys, home/end
keys and Mac equivalents don't always work.  For example `⌘` + `Left Arrow` is usually the same as `Home`
(go to beginning of current line) but that doesn't work in the shell.  Home works in many apps but it
takes you away from the home row.

**Function** | **Shortcut**
-------- | --------
Move to the start of line | `Ctrl` + `A` or `Home`
Move to the end of line | `Ctrl` + `E` or `End`
Move forward a word | `Option` + `F`
Move backward a word | `Option` + `B`
Set Mark | `⌘` + `M`
Jump to Mark | `⌘` + `J`
Moving by word on a line (this is a shell thing but passes through fine)| `Ctrl` + `Left/Right Arrow`
Cursor Jump with Mouse (shell and vim - might depend on config) | `Option` + `Left Click`
Quickly go to previous commands and their output | `⌘` + `Shift` + `Up/Down Arrow`

## Copy and Paste with iTerm without using the mouse

I don't use this feature too much.

**Function** | **Shortcut**
-------- | --------
Enter Copy Mode | `Shift` + `⌘` + `C`
Enter Character Selection Mode in Copy Mode | `Ctrl` + `V`
Move cursor in Copy Mode | `HJKL` vim motions or arrow keys
Copy text in Copy Mode | `Ctrl` + `K`
Resizing active pane | `Ctrl` +  `⌘` + `Arrow`

Copy actions goes into the normal system clipboard which you can paste like normal.

## Search the Command History

**Function** | **Shortcut**
-------- | --------
Search as you type | `Ctrl` + `R` and type the search term; Repeat `Ctrl` + `R` to loop through result
Search the last remembered search term | `Ctrl` + `R` twice
End the search at current history entry  | `Ctrl` + `Y`
Cancel the search and restore original line | `Ctrl` + `G`

## Misc

**Function** | **Shortcut**
-------- | --------
Clear the screen/pane (when `Ctrl + L` won't work) | `⌘` + `K`  (I use this all the time)
Broadcast command to all panes in window (nice when needed!) | `⌘` + `Alt` +  `I` (again to toggle)
Broadcast command to all panes and tabs | `⌘` + `Shift` +  `I` (again to toggle)
Find Cursor | `⌘` + `/`  _or use a theme or cursor shape that is easy to see_

## imgcat imgls

https://github.com/olivere/iterm2-imagetools

implements the iTerm2 image support as described here. It supports both local files as well as images loaded via http(s).

go install github.com/olivere/iterm2-imagetools/...@latest
