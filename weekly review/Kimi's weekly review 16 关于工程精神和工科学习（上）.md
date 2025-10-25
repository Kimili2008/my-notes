## Pt.1
本来这个主题一直想放到年终总结的。但因为一些私人原因暂时想把其中的一部分观点发表出来。或许在2025的年终总结，我会基于它写一篇新的文章，当然那时我可能又多了一些不同的观点。
abstract: 我们应当把工科和理科一样当作一个主体看待，研究和分析。我这篇文章比较短，但能提供一个看待工程学习的崭新视角，用纯理科的方法来分析他为什么是美丽的，有趣的，从而让更多准大学生或者低年级大学生爱上学习，爱上工程。

首先是关于工程学科研究和精神，这是一个很重要的问题，可遗憾的是许多人有意或无意地将其忽视了，又或者很晚才领悟到这个事情。
大家对这件事的重视之低，令我非常吃惊。当在内网搜索相关的主题，能使用的材料参考数量几乎为0，很难想象没有人尝试过在公网上发布此类内容。（此处放图）

究其原因，第一是比起传统自然科学的研究者，形而上学并不在工程师的研究范围之中——笔者常看见或听说一些非常优秀的工程师信佛，信教，信人生哲学。他/她们用这种非理性的事物填补自己内禀的好奇心，从而给自己的热爱和世界观加上利于事业进展和人生成功的补丁，对他们来说，思想层面的追求只要make sense就行了，至于我追求的事物在诘问下能不能站住脚，很少人关心，而当被问到热情和源动力来源，也一般都是外界压力和自我兴趣占主导，值得一提的是，这种自我热情一般很难具有普适性——比如下面这段文字。

Excerpted from Karl D. Stephen's blog
```
When I saw a picture of a Tesla coil on the cover of that magazine in 1964, I begged my mother to buy it for me, and she did, even though she probably had doubts about what an eleven-year-old boy would do with it. The second was Radio Shack, which opened its first store outside of Boston in my home town of Fort Worth around the same time. And the third was my father, who encouraged my electronic tinkering because it reminded him of his own father, who was a self-taught electrical engineer. While my first engineering job began in 1978, I had known I would follow a technical career for at least a decade already. 
```
``
Excerpted from David's blog
```
I did not chose electronics engineering, electronics engineering chose me. When you are five or six years old and start taking stuff apart to see how it works, you get hooked. I had my own electronics lab before I turned ten. All my pocket money would go into electronics tools, books and magazines (this was before the internet & communications revolution, so books and magazine were where you got your info). And before the whole internet and computer/gadget/consumer revolution, there were very few other paths to take or distractions when you were a curious tinkering kind of kid, so you naturally ended up in electronics engineering. By the time high school was finished, and you had to go study something, there was no choice to make, it was engineering. That decision had already been unwittingly made back in that lab in my bedroom when I was 10 years old.
```
以上都是两个优秀工程学生的个人博客，从中我们可以观察到，自我养成的对于工科学习的浓厚兴趣，需要满足几个条件：
1. 家庭的支持
2. 足够的时间
3. 自己的探索
4. 别人的引导
很明显，对于大多数学生而言，我们不满足这些条件，而就算到了大学有时间开始尝试，兴趣通常来的也会比较晚，笔者的父亲是一位优秀的IT工程师，在他的影响下，我很早就开始学习编程，但是对于engineering总体的兴趣却没有被点出，以上的条件，我4个满足了3个甚至全部，但也没有产生浓厚的热情，足以见得获得对工程学的热爱是一件天时地利人和的事情。
而且很明显，对纯自然科学有所兴趣的人很难对工科提起兴趣，因为science geeks普遍认为工科没有标准答案，受前人经验约束太多，想象力在其中的自由度较低，要考虑除了理想情况外的诸多信息，比起数学证明的天马行空，自由翱翔，物理公式的简洁，实验设计的精巧，广大工科给人一种”俗“的感觉，好似除去就业和薪资就失去了大多数乐趣。

那么，工程学美在哪里呢？

首先，有个不证自明的公理，基础科学是美丽的学科。这点毫无疑问，例子也很多。
（麦克斯韦方程组）形式美：简洁之美
（傅里叶级数）结构美：时间域到频率域，同一事物的不同两面。
（欧拉公式）思想美：延拓的思想，阶乘，复数（如复变函数），非欧几何
Excerpted from Bertrand Russell \<The research on Mathematics\>
```
数学，如果正确的看，不但拥有真理，而且也具有至高的美，是一种冷而严峻的美，是一种屹立不摇的美。他不诉诸我们任何柔弱的本性，没有绘画或音乐那样华丽的装饰，它也纯净到崇高的地步，能够达到只有最伟大的艺术才能显现的那种完满的境地。
```
那么，只要我们证明工程学属于基础科学的一部分，那也能说明工程学是美丽的学科了。
这里我给出我个人对工程学的定义：研究带约束的多目标优化问题集合的科学。
这个定义看似简单，其实有几个关键点。
第一是“约束”：工程师在现实中总会遇见许多trade-offs，也就是鱼和熊掌的抉择，如负载，功耗和重量是机械臂设计中常见的优化三角。这些constraints决定了不可能有算力强大，又便宜，又耐用的个人手机。那么，这种问题该怎么处理呢。
在数学中，对于多个目标函数
$f(x_{1},x_{2},\dots,x_{n})$
$g(x_{1},x_{2},\dots,x_{n})$
$z(x_{1},x_{2},\dots,x_{n})$
如果想将他们一起优化，那我们就要寻找一个点，使得在该点处，每一个参数的改动都会使其中至少一个的目标函数变劣，换种说法，不存在一种方法，使在不减少其余目标函数的情况下，使至少一个的目标函数增加。
这类方法在数学中称为帕累托最优解，由所有帕累托最优解组成的集合称为帕累托前沿。这给我们以启发：在最优决策曲线上寻找合适的答案。
第二是“”优化“：这个”优化“是机械论者们经过惨痛的失败后得出的，现实是在根本上是不可预测的，量子力学告诉我们，我们无法测量任何东西，任何器件都是具有混沌性的，那么我们能做的只有给这种混沌性打上补丁。
第三个是”科学“：工程学仍然遵循基础科学的原则和基本精神，但不同的是对于不确定性和数不清的外界变量，工程师尝试在混沌中建立秩序，如当控制在特定温度下时，电子工程师们运用增量分析，用非线性器件创造出线性输出，这给我们极大的启发。与其尝试预测所有东西，不如给定范围，预测一部分东西。
经过上面的分析，我们来做个总结，这个总结我相信可以清楚的讲出工程学的乐趣究竟是什么——基础科学追求光明，而工程学与黑暗共舞。作为基础科学的一种特殊情况，工程学的乐趣在于在混沌中用锤子，代码，焊锡来勾勒出短暂的秩序，在于建立一个稳定的复杂系统，在于约束下所产生的创造力。从另一个角度来看，这种对于不确定的反抗是具有强烈的哲学意义的。


## Pt.2 工程学的基本思想



