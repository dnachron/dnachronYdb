# dnachronYdb
基因志(DNAChron) Y数据库。包含[ybrowse.org](https://ybrowse.org/)的突变信息。

## README.md
- en [English](README.md)
- zh_CN [简体中文](README.zh_CN.md)

## 该项目同时托管于
- [GitHub](https://github.com/dnachron/dnachronYdb)
- [Gitee](https://gitee.com/dnachron/dnachronYdb)

## 为什么创建该项目
- 实现突变列表文件的增量更新，仅下载少量变化部分。不需每次下载全部几百兆数据。
- 突破excel最大处理1048576行的限制，可以同时访问全部突变信息。
- 利用数据库索引，高效查询突变名和坐标。
- 规范INDEL突变，左对齐，并统一REF和ALT格式。[GATK](https://gatk.broadinstitute.org/hc/en-us/articles/5358887757979-LeftAlignAndTrimVariants) [bcftools](http://samtools.github.io/bcftools/bcftools.html#norm)
- 额外增加突变命名时间。重复命名的突变，可根据命名时间选取最早的命名。
- 使用数据库格式，可利用程序批量处理突变名、坐标互相转换。请查看我们同步提供的处理工具。[dnachronYdb-putils](https://github.com/dnachron/dnachronYdb-putils)*(github)*  [dnachronYdb-putils](https://gitee.com/dnachron/dnachronYdb-putils)*(gitee)*

## 数据来源
原始信息从[ybrowse.org](https://ybrowse.org/)采集，由基因志网站处理并标准化。\
直接数据来源是基因志网站使用的数据库。为了网站使用，对数据有少许调整，具体见[与ybrowse差异](#与ybrowse差异)。

欢迎访问我们的网站
- [https://www.dnachron.com](https://www.dnachron.com) 基因志国际站
- [https://www.dnachron.cn](https://www.dnachron.cn) 基因志中国站

## 如何下载数据
您可以直接下载原始的[csv文件](/ymutation/)，或者从[release](../../releases/)下载生成好的数据库文件。其中csv文件已经做了拆分，单独每个文件均可以用Excel完全打开。

我们强烈建议使用git，以实现实时、增量更新。使用git请继续参考后续说明：
### 环境准备
*ubuntu*
```
sudo apt-get install git sqlite3
```
*windows*
#### 1. 下载安装[git for windows](https://github.com/git-for-windows/git/releases)
会同步安装git-bash。后续命令，均需在git-bash中执行。
#### 2. 下载windows版[sqlite3](https://www.sqlite.org/download.html)
请下载sqlite-tools-win32-x86-*文件。\
解压后，得到sqlite3.exe。把其所在路径加到系统环境变量PATH中，或者直接拷贝到git安装目录下的执行文件目录，一般是C:\Program Files\Git\mingw64\bin\
### 克隆
*github*
```
git clone https://github.com/dnachron/dnachronYdb.git
```
*gitee*
```
git clone https://gitee.com/dnachron/dnachronYdb.git
```
### 更新及生成数据库
```
cd ./dnachronYdb
./build.sh
```
每次执行，会自动更新数据到最新版，并生成数据库。

## 如何浏览数据库
可以使用数据库管理工具查看、搜索、筛选数据。如 [SQLiteStudio](https://sqlitestudio.pl/) [DBeaver](https://dbeaver.io/)

![alt text](resources/SQLiteStudio.jpg?raw=true)
## 与ybrowse差异
