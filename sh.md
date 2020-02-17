1. `ps -ef|grep nsq|grep -v grep|awk '{print $2}'| xargs kill` 批量杀进程（注意，杀之前，先用`ps -ef|grep nsq|grep -v grep`检查以下）
