# Introduction-To-Computer-System-2023Fall-PKU

更适合北大宝宝体质的 ICS 辅助学习资料

-   含往年题勘误、期中期末考试复习细节整理
-   含 CSAPP 笔记版，便于初学者上手（但其中可能存在错误！）
-   含各种魔改的 Lab，包括详细准备操作、解释步骤，与各种踩坑
-   奉行能偷懒就偷懒的原则，Bomb Lab 的 secret phase，Proxy Lab 的 HTTPS 部分因为不计入成绩，所以都没有写

<div align="center">
  <div>
    <picture>
      <source
        media="(prefers-color-scheme: dark)"
        srcset="https://next.ossinsight.io/widgets/official/compose-activity-trends/thumbnail.png?repo_id=695888614&image_size=auto&color_scheme=dark"
        width="800"
        height="auto"
      />
      <img
        alt="Activity Trends of zhuozhiyongde/Introduction-To-Computer-System-2023Fall-PKU - Last 28 days"
        src="https://next.ossinsight.io/widgets/official/compose-activity-trends/thumbnail.png?repo_id=695888614&image_size=auto&color_scheme=light"
        width="800"
        height="auto"
      />
    </picture>
  </div>
  &nbsp;
  <div>
    <picture>
      <source
        media="(prefers-color-scheme: dark)"
        srcset="https://next.ossinsight.io/widgets/official/analyze-repo-stars-history/thumbnail.png?repo_id=695888614&image_size=auto&color_scheme=dark"
        width="800"
        height="auto"
      />
      <img
        alt="Star History of zhuozhiyongde/Introduction-To-Computer-System-2023Fall-PKU"
        src="https://next.ossinsight.io/widgets/official/analyze-repo-stars-history/thumbnail.png?repo_id=695888614&image_size=auto&color_scheme=light"
        width="800"
        height="auto"
      />
    </picture>
  </div>
</div>

## 工具

-   `tldr`：比 `man` 更好用的命令行工具，可以用来查看命令的用例，快速上手命令
-   `VS Code Remote - SSH`：VS Code 的远程开发插件，可以用来远程开发。对于使用云服务器 / Class Machine 的同学尤为推荐

注：如果你使用 [PKU VPN 3 - 用校内服务器实现 PKU 内网和 Clash/Surge 兼容使用](https://arthals.ink/blog/pku-vpn-internal-server) 中提到的方式链接北大内网，那么你需要配置 `~/.ssh/config` 如下：

```bash
Host ICS
   HostName 100.104.38.30
   User ubuntu
```

其中 HostName 为你的 Tailscale 内网 IP，User 为你的用户名。

## 回课

推荐使用 [Slidev](https://sli.dev/)，通过 `Markdown` 和成熟的前端技术、工具链，可以快速制作出漂亮的 PPT。

在 2024 年，我成为了 ICS 课程的助教，我的小班回课 PPT 可以在 [Arthals-ICS-Slide](https://slide.huh.moe/) 中找到。

1. [课程介绍](https://slide.huh.moe/00/)
2. [数据表示](https://slide.huh.moe/01/)
3. [程序的机器表示 I](https://slide.huh.moe/02/)
4. [程序的机器表示 II](https://slide.huh.moe/03/)
5. [程序的机器表示 III & ISA](https://slide.huh.moe/04/)
6. [处理器架构：顺序与流水线](https://slide.huh.moe/05/)
7. [存储器层次结构、缓存](https://slide.huh.moe/06/)
8. [链接](https://slide.huh.moe/07/)
9. [异常控制流](https://slide.huh.moe/08/)
10. [虚拟内存](https://slide.huh.moe/09/)
11. [系统级 IO](https://slide.huh.moe/10/)
12. [网络编程](https://slide.huh.moe/11/)
13. [并发编程](https://slide.huh.moe/12/)

同时，你也可以根据 [源代码](https://github.com/zhuozhiyongde/Arthals-ICS-Slides/) 自行构建。

## 笔记

### CSAPP

CSAPP 笔记：

深入理解计算机系统 - 笔记版-by Arthals & EmptyBlueBox

-   GoodNotes 格式：https://disk.pku.edu.cn/link/AA46F302BBA11A4E73AAAA4FA1AED1FD98
-   PDF 格式：https://disk.pku.edu.cn/link/AA834F941EFC62489DA7DBEEA2659CDCD5

提取码：csapp

我的笔记可能带有 GPT 内容，请自行甄别。

其中亦存在部分错误，请保持审慎的态度进行阅读。

### Lab

> [!CAUTION]
>
> **致各位同学：本笔记的撰写目的是用作参考，请勿直接抄袭，否则后果自负。**

我不建议你上来就看我写的 lab 踩坑记，因为这可能对你的思考并无好处。

建议直接我的博客直接阅览我的笔记，因为我会优先在博客更新勘误。你也可以在各个 Lab 文件夹的 README 中获得，但可能会有所落后。

-   [Data Lab](https://arthals.ink/blog/data-lab)
-   [Bomb Lab](https://arthals.ink/blog/bomb-lab)
-   [Attack Lab](https://arthals.ink/blog/attack-lab)
-   [Arch Lab](https://arthals.ink/blog/arch-lab)
-   [Cache Lab](https://arthals.ink/blog/cache-lab)
-   [Tsh Lab](https://arthals.ink/blog/tsh-lab)
-   [Malloc Lab](https://arthals.ink/blog/malloc-lab)
-   [Proxy Lab](https://arthals.ink/blog/proxy-lab)

### 往年题、考试复习

详见 [复习资料](复习资料/) 文件夹。

由我整理的：

-   期中考试复习细节.md
-   期末考试复习细节.md

由 [Sparkle](https://github.com/Sparkle-PKU) 整理的：

-   ICS 刷题指南与复习指导.pdf
-   ICS 期末复习.pdf
-   ICS 期末错题梳理.pdf

## 经验

Q：如何正确的读书？

> A：正常读中文版，第一章不用看。如果有觉得笔误或者疑惑的地方可以查找英文版（建议以图编号等搜索 CS:APP PDF），若感觉英文版仍有笔误或疑惑，可以查找英文版勘误表（建议以图编号等搜索 [CS:APP Errata](https://csapp.cs.cmu.edu/3e/errata.html)）或搜索谷歌。

Q：Class Machine 能不能用？

> A：能用，但是我认为唯一必须要用 Class Machine 的 lab 就是 Attack Lab（因为 Attack Lab 需要考虑 ASLR 等问题，最好使用助教配置好的 Autolab）。其他的 lab 推荐自己购置一台云服务器（如腾讯轻量云、阿里云 ECS 等），因为 Class Machine 是不连接外网的，所以装环境 / 下载文件都很麻烦，而且即便是 Bomb lab，如果你熟悉了怎么安全化炸弹之后也都不需要 Classs Machine（不过可能当你做完之后提交时会需要一下）。而且自己购置的云服务器可以用来做其他事情，比如搭建个人博客等，这些折腾都会成为你宝贵的经验。
>
> Update：自 2024 年以后，北大 ICS 课程已经转为使用 Clab 来完成实验，所以上面的话你可以忽略啦！

Q：刷往年题一套刷了好几个小时正常吗？

> A：正常，特别是第一套往年题，如果你过程调用式复习的话，第一套刷 10 个小时都是正常的。但是随着你刷的越来越多，没见过的题型越来越少，这个时间会越来越短。
>
> 值得注意的是，ICS 的复习以课本为第一优先级，拟合往年题并不能保证你取得好成绩。
>
> 推荐查看 [ICS 刷题指南与复习指导](复习资料/ICS刷题指南与复习指导.pdf) 以获取往年题的合理复习规划。

## 参考 & 引用

-   [EmptyBlueBox / 2022_Fall_PKU_Introduction-to-Computer-System](https://github.com/EmptyBlueBox/2022_Fall_PKU_Introduction-to-Computer-System)：来自卷王的资料
-   [CS-icez / introduction-to-computer-systems](https://github.com/CS-icez/introduction-to-computer-systems)：来自卷王王中王的资料，各个 lab 的奇技淫巧都可以在此一窥究竟。
-   [小土刀 / 读薄 CSAPP](https://wdxtub.com/csapp/thin-csapp-0/2016/04/16/)：优质教材阅读辅导资料，虽然我感觉讲的并不深。但真若谈深，还有什么比 CS:APP 本身更好的资料呢？
-   [小土刀 / 读厚 CSAPP](https://wdxtub.com/csapp/thick-csapp-lab-0/2016/04/16/)：优质 Lab 辅导资料（仅限前几个 Lab）
-   [大猫咋 / 深入理解计算机系统 - CSAPP 配套的 9 个 lab 全解全析](https://www.zhihu.com/column/c_1480603406519238656)：大概扫了一下，写的和我一样，都很详细，但是他写的 lab 是没有被北大助教魔改过的，~~而且没有以卷到满分为目标~~，所以具体的问题和难度上都会略差一些，可以作为参考
-   [ICS 知识点共享文档](https://shimo.im/docs/rp3OVrzJn1s5EWAm)：已失效
-   [Hansimov / 实验 Writeup 中文版& Readme](https://hansimov.gitbook.io/csapp/labs/labs-overview)
-   [CMU / Errata for CS:APP3e](https://csapp.cs.cmu.edu/3e/errata.html)：CSAPP 勘误表
-   [CMU / HCL Descriptions of Y86-64 Processors](https://csapp.cs.cmu.edu/3e/waside/waside-hcl.pdf)：Y86-64 指令集，HCL 完整版，第四章 Arch 复习必备
-   [江枫渔火 / CSAPP Lab](https://www.zhihu.com/column/c_1405316339096031232)：和我一样，写的也是 PKU 的魔改版 lab，可惜只写了几篇，没有写完。可以作为参考。

## 广告

[PKU Art](https://arthals.ink/posts/web/pku-art)：教学网美化样式

## 后记

虽然考完期末后的我也曾心怀不甘，觉得一个学期的努力就这么付诸东流，但当我无暇悲伤而又立刻紧张地投入到 ICS 之后一场又一场的考试中时，当我考完所有试回到家中静下心来整理这份资料时，这些不甘、愤懑、悲戚的情绪似乎也就自然而然地淡了下来。

尽管我也仍在等待着最终成绩的公布，但我还是希望大家不要被分数所异化，不要因为考差就自暴自弃，也不要因为考好了，就高傲地去嘲讽那些没有考好的同学，而是做一个正直、善良、有同情心的人。

这份资料不是免费的。我愿以这份资料买走一些同学心中的戾气。

**如果你觉得这份资料对你有帮助，不妨点个 Star，或者在我的博客点个赞，留个言，这会让我很开心的。**

请不要吝啬于将这个仓库分享给你的同学，我的本意不是让这份资料只能被少数人看到，而是希望能让更多的人看到，让更多的人受益。

如果你有任何问题或者建议，欢迎在我的博客评论，或者在 Github 的 Issue 中提出，我会尽力回答 / 改进。

再次感谢如下朋友的帮助：

-   [EmptyBlueBox](https://github.com/EmptyBlueBox)：我的卷王朋友，为我提供了很多资料与学习经验。
-   [thezzisu](https://github.com/thezzisu)：我的 ICS 助教，为我和我的小班课同学解答了很多问题。
-   [CS-icez](https://github.com/CS-icez)：素未谋面的卷王王中王，他的优化代码令我叹为观止。
-   [HenryHuang2004](https://github.com/HenryHuang2004)：一起学 ICS 的同学，我们一同探讨了许多往年题的问题。
-   [Sparkle](https://github.com/Sparkle-PKU)：充满干劲的学弟，提供了部分高质量的复习资料！
