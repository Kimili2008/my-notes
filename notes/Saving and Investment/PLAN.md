# 30 天 Oxford Quant-First 冲刺计划

## Summary

目标不是泛泛“学量化”，而是在开学前形成一套能认真竞争 Oxford Alpha Fund Quant、CapitOx Finance Academy，并支撑未来 Spring Week 初筛的申请资产：

- 1 个严谨的量化研究项目
- 1 个衍生品/数值模拟项目
- 1 份半导体/AI 基建方向的 stock pitch
- 1 页英文 CV、项目 GitHub、面试题库与申请追踪表
- 在数学、编程、金融三类模拟测试中达到可面试水平

主路径定为 **Quant 优先**，同时用 stock pitch 保留对 OAF Fundamental、CapitOx 和广义金融招聘的竞争力。OAF Quant 公开要求数学问题、编程与金融分析测试；其训练也覆盖 pandas、Black–Scholes、数据处理、策略与组合优化。[OAF Quant](https://www.oxfordalphafund.com/quantitative-strategies-division)

## 30 天执行安排

| 时间 | 重点 | 交付与验收 |
|---|---|---|
| Day 1–4 | OAF Quant 笔试基础 | 完成 80 道概率/心算题、20 道 pandas 数据题、15 道金融题；进行一次 90 分钟模拟笔试并复盘 |
| Day 5–14 | 旗舰量化研究 | 完成 ETF momentum 项目、样本外测试、研究报告与 8 页 deck |
| Day 15–19 | 衍生品工程项目 | 完成定价、Greeks、Monte Carlo、delta hedging simulation 和单元测试 |
| Day 20–24 | Fundamental stock pitch | 以 Applied Materials (`AMAT`) 为默认研究对象，完成 2 页 memo 和 6–8 页 deck |
| Day 25–30 | CV、社团与求职准备 | 完成英文 CV、GitHub 整理、8 个行为故事、两轮模拟面试和申请追踪表 |

每日 12 小时分配：

- 4 小时：概率、统计、timed coding
- 3 小时：金融市场、会计、估值、期权
- 4 小时：当天项目开发或写作
- 1 小时：市场笔记、CV、面试或申请追踪

学习资料按此顺序使用：

- Oxford Probability lectures + 题目：条件概率、期望、分布、CLT。
- MIT 18.642：金融市场、概率、回归、时间序列、组合、Black–Scholes。
- Hull：期货、期权、Greeks、无套利。
- ISLR：OLS、验证、过拟合、模型评估。
- Damodaran：三表、估值、DCF、multiples。

## 三项项目规格

### 旗舰：宏观过滤 ETF Momentum Research

研究问题固定为：

> 在交易成本、样本外测试和不同市场 regime 下，波动率调整与 SPY 200-day moving-average regime filter 是否改善 12–1 ETF momentum 的风险调整表现？

实现标准：

- 使用 25–40 只历史足够长的流动性 ETF；研究期为 2011–2018，样本外期为 2019–2026 年 8 月。
- 每月调仓；信号为过去 12 个月收益、排除最近 21 个交易日。
- 比较四个组合：全体 equal-weight、纯 momentum、inverse-volatility momentum、加 regime filter 的 momentum。
- 使用 10 bps 单边交易成本；报告 annualised return、volatility、Sharpe、max drawdown、turnover 和各市场阶段表现。
- 提交可复现代码、缓存原始数据、README、4–6 页报告、8 页 deck。
- 测试：信号不得使用未来数据；每次权重合计为 1；成本只在调仓日扣除；随机抽检三个调仓日。

这与 OAF 公开展示的 momentum、announcement strategy、数据清洗、参数/样本检验和 quantitative pitch 工作流一致。[OAF Pitch Archive](https://www.oxfordalphafund.com/quantitative-pitch-day-decks)

### 工程优势：Option Pricing & Hedging Lab

实现：

- Black–Scholes European call/put 定价；
- Monte Carlo pricing；
- analytical Greeks 与 finite-difference Greeks 对比；
- daily 与 weekly discrete delta hedging；
- 在波动率设错、跳跃或 changing volatility 下比较 hedging P&L；
- 单元测试：put-call parity、Monte Carlo 收敛、Greeks 数值误差边界。

最终输出一个简洁的技术说明，重点写清模型假设、数值误差和风险，而非声称可交易优势。

### Fundamental：AMAT Stock Pitch

默认研究 `AMAT`，利用你的工程背景分析半导体设备、AI capex、供应链、技术门槛与周期风险；若你对另一只半导体股票已有更深理解，可替换，但必须保留相同结构。

交付：

- 结论：Long / Short / Watchlist，只作为研究观点而非投资建议；
- 行业结构与 moat；
- 三个盈利驱动；
- DCF 加 trading comparables；
- 市场已定价什么、你的不同判断是什么；
- catalyst；
- 三个可能推翻结论的风险。

OAF Fundamental 的公开流程强调行业分析、公司比较、模型与向业界人士 pitch，而不只是新闻复述。[OAF Research Process](https://www.oxfordalphafund.com/philosophyandprocess)

## CV 与面试标准

CV 固定为一页英文，结构为 Education、Selected Projects、Experience/Leadership、Skills、Interests。

- Education：Oxford Engineering Science、预计毕业年份、真实的 A-level 成绩。
- Projects：只放上述三个完成项目；每个项目 1–2 条量化、可追问的 bullet。
- Skills：只写能现场展示的 Python、NumPy、pandas、Git、SQL；项目完成前不写“financial modelling”或“machine learning”。
- 每个 bullet 必须能讲两分钟：问题、方法、结果、局限性、下一步。

面试题库按四组准备：

- Quant：条件概率、Bayes、期望、组合计数、估算、统计直觉。
- Coding：收益率、rolling signal、Sharpe、数据缺失、look-ahead bias、vectorisation。
- Finance：option payoff、put-call parity、债券收益率、EV vs equity value、三表、DCF、WACC。
- Motivation：Why quant? Why OAF? Why CapitOx? 你曾改变过的市场观点？模型表现变差如何诊断？

CapitOx Academy 的公开筛选是申请表加面试，关注候选人如何思考和处理问题；无需已有金融背景。[CapitOx Finance Academy](https://www.capitox.co.uk/finance-academy) Oxford Finance Society 的公开题目则覆盖三表、DCF、EV、WACC、beta、LBO 等。[OFS technical guide](https://www.oxfordfinancesociety.org/_files/ugd/c9d370_17ef1a1a37db4f32b8da62745b217e48.pdf)

## Day 1 清单与最终验收

Day 1 必做：

1. 建立项目仓库：`data/`、`src/`、`notebooks/`、`tests/`、`report/`、`deck/`、`README.md`。
2. 做 90 分钟 OAF Quant mock：8 道概率题、3 道估算题、pandas 计算 return/volatility/Sharpe/max drawdown、列出五种 backtest bias、英文解释 option delta。
3. 写 150 词英文回答：`Why quantitative finance, and why Oxford Alpha Fund / CapitOx?`
4. 起草一页 CV 骨架，并订阅 OAF 和 CapitOx 的招新信息。
5. 开始每日 market journal：一条市场事件、一条个人判断、一个可能使判断失效的证据。

第 30 天验收：

- 旗舰研究可在新环境复现；
- 两个技术项目都有测试与 README；
- stock pitch 能在 5 分钟内讲清并接受追问；
- CV 可直接交给社团 mentor 或 recruiter；
- 能在 60 分钟内完成一套数学/编程/金融混合 mock，并在错误复盘中说明原因。

假设：你是 2026 年秋季入读四年制 Oxford MEng；因此本计划以社团招募、first-year insight programmes 和为二年级 Spring Week 做准备为主。传统 Spring Week 的具体年级资格必须逐家公司核对。
