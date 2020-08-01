# python

## 什么是conda

[Python配置-virtualenv和conda的区别](https://blog.csdn.net/zhouchen1998/article/details/84671528)

最近有人问我venv和conda有什么区别，其实在我看来区别不是特别大。主要如下。

1. 如果说venv是虚拟环境管理器，pip是包管理器，那么conda则是两者的结合。
1. 遗憾的是conda的包管理器做的一般且会安装过多依赖如TensorFlow自动安装cudnn（在主机配置了cudnn的情况下），大多数时候还是使用pip安装包。
1. 但是，注意，pip只能安装Python的包，conda可以安装一些工具软件，即使这些软件不是基于Python开发的。
1. 但是conda的虚拟环境管理还是可以的，一般使用venv会在该项目下创建虚拟环境，再不济也会在项目下创建venv的文件夹（含配置文件），当然pycharm下创建虚拟环境另说；然而conda每个虚拟环境不会占用项目文件夹的空间，它创建在用户设定的一个位置，这使得多个项目共享一个虚拟环境更加方便（只是方便，venv也是可以的，但是venv一般占用项目文件夹空间，而且venv命令行使用具有局限性）。
1. conda虚拟环境是独立于操作系统解释器环境的，即无论操作系统解释器什么版本（哪怕2.7），我也可以指定虚拟环境python版本为3.6（见文章开头所说原博客），而venv是依赖主环境的。
1. 对于科学计算和大数据领域的人，conda是环境自动集成了numpy这样的主流科学计算包的，venv每个包都要自行下载。
1. conda有图形化环境管理器，venv没有。（虽然开发人员几乎不用图形界面conda）

1. `conda create -n pot_env python=3.8.3`
1. `conda activate pot_env`
1. `pip freeze > requirements.txt`
1. `pip install -r requirements.txt`
1. `conda deactivate`
