# Introduction-To-Computer-System-2023Fall-PKU

更适合北大宝宝体质的 ICS Lab 辅助学习资料

-   含各种魔改的附加 Phase
-   含详细解释步骤，包括各种踩坑
-   DataLab 及 BombLab 的解释资料丢失 ~~（没写）~~
-   奉行能偷懒就偷懒的原则，Bomb Lab 的 secret phase, Proxy Lab 的 HTTPS 部分因为不计入成绩，所以都没有写

我不建议你上来就看我写的 lab 踩坑记，因为这可能对你的思考并无好处。

我的 GoodNotes 笔记可能带有 GPT 内容，请自行甄别。

## 工具

-   `tldr`：比 `man` 更好用的命令行工具，可以用来查看命令的用例，快速上手命令
-   `VS Code Remote - SSH`：VS Code 的远程开发插件，可以用来远程开发。对于使用云服务器 / Class Machine 的同学尤为推荐

注：如果你使用 [PKU VPN 2 - 真正实现 PKU VPN 和 Clash 兼容使用](https://arthals.ink/posts/tools/pku-vpn-perfect) 中提到的 Docker 方式链接 PKU VPN，那么你需要修改 `ssh` 的配置如下：

```bash
Host ICS
    HostName 162.105.31.232
    # 代理命令，macOS。其他系统请自行搜索
    ProxyCommand nc -X 5 -x 127.0.0.1:11080 %h %p
    Port 22106
    User u2110306206
    IdentityFile ~/.ssh/id_rsa
    # 或者使用密码登录
    # password 123456
```

## 回课

推荐使用 [Slidev](https://sli.dev/)，通过 `Markdown` 和成熟的前端技术、工具链，可以快速制作出漂亮的 PPT。

我的两次回课：

-   [Pre-Arch](https://pre.arthals.ink/)
-   [Pre-Conc](https://pre2.arthals.ink/)

源码可在 `回课` 文件夹中找到。

## 经验

Q：如何正确的读书？

> A：正常读中文版，第一章不用看。如果有觉得笔误或者疑惑的地方可以查找英文版（建议以图编号等搜索 CS:APP PDF），若感觉英文版仍有笔误或疑惑，可以查找英文版勘误表（建议以图编号等搜索 [CS:APP Errata](https://csapp.cs.cmu.edu/3e/errata.html)）或搜索谷歌。

Q：Class Machine 能不能用？

> A：能用，但是我认为唯一必须要用 Class Machine 的 lab 就是 Bomb Lab（甚至你熟悉了怎么安全化炸弹之后连 Bomb lab 都不需要）。其他的 lab 推荐自己购置一台云服务器（如腾讯轻量云、阿里云 ECS 等），因为 Class Machine 是不连接外网的，所以装环境 / 下载文件都很麻烦。而且自己购置的云服务器可以用来做其他事情，比如搭建个人博客等，这些折腾都会成为你宝贵的经验。

Q：刷往年题一套刷了好几个小时正常吗？

> A：正常，特别是第一套往年题，如果你过程调用式复习的话，第一套刷 10 个小时都是正常的。但是随着你刷的越来越多，没见过的题型越来越少，这个时间会越来越短。
>
> 值得注意的是，ICS 的复习以课本为第一优先级，拟合往年题并不能保证你取得好成绩。

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
