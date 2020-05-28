# Git 常用命令

1. 查看remote url

    ```bash
    ➜  telegraf git:(master) git remote -v
    origin	http://192.168.131.32:9000/develop/FOOTSTONE/MetricsUMP/Code/telegraf.git (fetch)
    origin	http://192.168.131.32:9000/develop/FOOTSTONE/MetricsUMP/Code/telegraf.git (push)
    ```

1. 强制回退

    ```bash
    ➜  seaweedfs git:(master) git reset --hard 73264b9                          [四  5/28 08:46:05 2020]
    HEAD is now at 73264b95 Merge pull request #1 from chrislusf/master
    ➜  seaweedfs git:(master) git clean -f                                      [四  5/28 08:46:38 2020]
    ➜  seaweedfs git:(master) git push origin -f                                [四  5/28 08:47:24 2020]
    Total 0 (delta 0), reused 0 (delta 0)
    To https://github.com/bingoohuang/seaweedfs
    + 6f84ace3...73264b95 master -> master (forced update)
   ```

1. 待续
