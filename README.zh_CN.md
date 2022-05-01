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

## 如何使用
您可以直接下载原始的[csv文件](/ymutation/)，或者从[release](/releases/)下载生成好的数据库文件。其中csv文件已经做了拆分，单独每个文件均可以用Excel完全打开。

## 与ybrowse差异
