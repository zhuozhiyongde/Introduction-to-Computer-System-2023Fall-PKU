# Introduction-to-Computer-System-2023Fall-PKU

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

## 🛠️ 工具

-   ~~`tldr`：比 `man` 更好用的命令行工具，可以用来查看命令的用例，快速上手命令~~ 2025 年了，弗如 GPT / Gemini
-   `VS Code Remote - SSH`：VS Code 的远程开发插件，可以用来远程开发。对于使用云服务器 / Clab 的同学尤为推荐

推荐大家按照 [PKU VPN 3 - 用校内服务器实现 PKU 内网和 Clash/Surge 兼容使用](https://arthals.ink/blog/pku-vpn-internal-server) 中的指引，使用 Tailscale 来实现 PKU 内网和 Clash/Surge 兼容使用，从而能够在校外也能连上 Clab 写代码。

如果你按照上面这篇博客进行了配置，那么记得配置 `~/.ssh/config` 如下：

```bash
Host ICS
   HostName 100.104.38.30
   User ubuntu
```

其中 HostName 为你的 Tailscale 内网 IP，User 为你的用户名。

## 📚 回课

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

## 📝 笔记

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

## 💡 经验

Q：如何正确的读书？

> A：正常读中文版，第一章不用看。如果有觉得笔误或者疑惑的地方可以查找英文版（建议以图编号等搜索 CS:APP PDF），若感觉英文版仍有笔误或疑惑，可以查找英文版勘误表（建议以图编号等搜索 [CS:APP Errata](https://csapp.cs.cmu.edu/3e/errata.html)）或搜索谷歌。

Q：Class Machine 能不能用？

> ~~A：能用，但是我认为唯一必须要用 Class Machine 的 lab 就是 Attack Lab（因为 Attack Lab 需要考虑 ASLR 等问题，最好使用助教配置好的 Autolab）。其他的 lab 推荐自己购置一台云服务器（如腾讯轻量云、阿里云 ECS 等），因为 Class Machine 是不连接外网的，所以装环境 / 下载文件都很麻烦，而且即便是 Bomb lab，如果你熟悉了怎么安全化炸弹之后也都不需要 Classs Machine（不过可能当你做完之后提交时会需要一下）。而且自己购置的云服务器可以用来做其他事情，比如搭建个人博客等，这些折腾都会成为你宝贵的经验。~~
>
> Update：自 2024 年以后，北大 ICS 课程已经转为使用 Clab 来完成实验，所以上面的话你可以忽略啦！

Q：刷往年题一套刷了好几个小时正常吗？

> A：正常，特别是第一套往年题，如果你过程调用式复习的话，第一套刷 10 个小时都是正常的。但是随着你刷的越来越多，没见过的题型越来越少，这个时间会越来越短。
>
> 值得注意的是，ICS 的复习以课本为第一优先级，拟合往年题并不能保证你取得好成绩。
>
> 推荐查看 [ICS 刷题指南与复习指导](复习资料/ICS刷题指南与复习指导.pdf) 以获取往年题的合理复习规划。

## 📜 参考 & 引用

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

## 📢 广告

[PKU Art](https://arthals.ink/posts/web/pku-art)：教学网美化样式

## ✨ 后记

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

## ❤️ 后记的后记

ICS 文学在树洞一直是一个经久不衰的话题，但多是整活，如此温暖的帖子难能一见，在此与大家分享。

以下文字来自树洞 #7124560：

关于 ics·写给 ics 和学弟学妹和半年前的自己

叠甲：dz 非 oi、第一次写代码是计概 A 抄写冒泡排序、之前没接触过任何 system 相关内容、分析纯的菜鸡、没办法从课程质量上做出专业评判、欢迎一切讨论但吵架就 dz 是菜鸡你说的都对。熟悉的人很容易看出来 dz 是谁，但不要开盒啊啊啊

总想写点什么才对得起 ics 这门课，本来想写在新年前夜，一直鸽子，鸽今天发也算深得 ics 真传。怎么评价 ics 呢，沉重、压抑、但还是不想用“痛苦”描述，像是每个 cs 人都要经历的背着石头的修行，漫长但每一步都作数。

我的书是来自学长的，纸质 csapp 承载着奇怪的东西像羁绊一样在 cs 一届届间传承。它在见到我之前有不少痕迹，见我之后又花花绿绿了一遍，700 多页的书又多了不少折角卷边，书脊又压了很多白印。对，懒惰的 dz 第一次知道沉得快背不动的书也是可以被翻旧的。

学期里因为社团之类的事情很忙，dz 和 ics 相处的生物钟都没那么健康。好吧 dz 完全学不会做认真努力学习的好孩子，考虑到个人能力极其有限，菜菜的 dz 在极限作息里被 ics 折磨过好多次。有过洗完澡零点下载 writeup，到四点写得差不多了上床睡觉；忙完事情拎着电脑跑出学校通宵做回课，虽然最后是熬到一点选择第二天起来做完的；生日紧邻 ics 期中考，因为很多事情崩溃也焦虑考试，抱着砖一样的书边哭边看，短暂地看懂了流水线；午一的课每节都听不进去但想尽办法 push 自己努力去听（最后发现边上课边听歌是不错的选择，果真努力歪了 x），每一章的书都看不进去但逼着自己去看，从小班课摆烂到在边边角角记笔记。

ics 的 lab 和课程对 dz 来说并不轻松，考虑到其他课程和社团的时间分配，甚至是困难的，但努力的话并非没有成效。七八个小时的 shell，十个小时的 malloc，autolab 上的评分和翻得越来越旧的书页，几乎是大喊着一遍一遍告诉我，“嘿，你不差”。

赶路的时候在地铁上看过 ics 很多次，运气好的时候可以靠在角落，有的时候靠在门上，也挤过晚高峰，手被压得酸疼很多次（它真的太沉了），因为地铁晃动笔迹扭曲过很多次，也抱着跑过换乘，背着书去过二教或理教。半夜叹气过很多次，挣扎过很多次，倒是没哭过很多次。
但八通线斜切的光线也照亮过书页好多次，四点的太阳也漏过二教被帘子遮满的落地窗，光顾我的笔尖很多次。

700 页的书夹住了好多晨昏朝暮，夹住了好多我沉默或挣扎或努力的刹那。

是挣扎的，但即便是菜菜的 dz 也扎扎实实学到了很多，对 ics 这门课，dz 唯一的态度是愧疚和感谢。谢谢这门课让 dz 知道，自己远没有想象中的那么讨厌 system，谢谢这门课让我有机会看向更大的世界。

认识的每一位助教都真诚热忱，有人不想让学弟妹再像自己一样痛苦选择做助教，有人因为想分享自己喜欢的领域。dz 此前因为各方评价，从一开始就对 ics 怀着厌恶的态度，直到期中才晚晚地意识到自己的错误，大概错过了很多吧，于是对这门老师助教都付出颇多的课，抱有深深的歉意。

希望学弟学妹善用搜索的时候能查到这篇树洞，虽然它对学习这门课毫无帮助，但我想说，如果可以的话请不要和我一样从一开始就讨厌它，这样一定会比 dz 收获得多吧，不只是分数。当然收获更好的分数也很 nice，但一切的目的从来无关 gpa。

如果 dz 最开始也没选择讨厌就好了。

ics 相关的一切沉重和吐槽像是 cs 人之间的羁绊，走过这条修行，是不是也算在 cs 的路上向前一步了。

dz 的书来自学长，dz 也会和学长一样把书留给学弟妹，或许会在扉页上留下某些造作辞藻，兴许沉重可以把这份轻盈带向未来。

所以啊，ics，你看，我们都走向明天。

<div align="right">

![signature](README.assets/signature.svg)

</div>
