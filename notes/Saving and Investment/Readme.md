# All-in-One Portfolio Manager: Thesis Monitoring and Risk Research

An evidence-driven research workflow for a concentrated, growth-oriented equity portfolio. The project connects a live holdings file, company thesis cards, scheduled market monitoring and dated investment memos. Its goal is to make changes in the *investment case* visible before they become unexamined changes in portfolio risk.

> **Project status (November 2026):** Working research and reporting process with 19 company thesis cards and a dated report archive. The long-term objective is a tested quantitative strategy connected to a controlled, automated trading system; research automation is the first stage.

## The problem

A portfolio can change materially between deliberate reviews: prices move, earnings alter assumptions, macro conditions change, and an old target price can become stale. A useful monitoring system must answer four questions consistently:

1. What is held *now*, and how concentrated is the disclosed portfolio?
2. Which new facts reinforce, weaken or invalidate each written thesis?
3. Has the expected-value case changed, or has only the market price changed?
4. Which decision points require attention, and which daily moves are noise?

## Research workflow

```text
Portfolio_AI.md  +  stocks Evaluation/*.md
           │ current holdings, preferences and thesis assumptions
           ▼
Source reconciliation and change check
           │ new/edited cards, active positions, zero-share watchlist
           ▼
Market and primary-source review
           │ prices, filings, issuer results, earnings calendars, macro data
           ▼
Thesis and portfolio-risk assessment
           │ status, catalysts, KPI tests, scenario ranges, concentration
           ▼
AI_Report_weekly/YYYY-MM-DD_{report,suggestion,emergency_report}.md
```

**Preflight.** Each weekly run rereads [`Portfolio_AI.md`](Portfolio_AI.md), including its `Suggestion` section, then enumerates the machine-readable cards in [`stocks Evaluation/`](stocks%20Evaluation/). It separates positive-share holdings from zero-share watchlist names, compares card names and modification times with the previous review, and uses the newest explicit portfolio source if sources conflict. The holdings file is the source of share counts; a prior report is only a historical comparison.

**Evidence.** The research notes prioritize company filings, investor-relations releases, official economic data and earnings calendars. Market quotes are time-stamped in the note. News and price action trigger investigation, but a price move is not, by itself, proof that an operating thesis has changed.

**Decision framework.** A card records the business model, valuation scenarios, confidence, catalysts, KPIs and invalidation conditions. A review assigns a state such as *reinforced*, *intact*, *under review* or *broken*. The separate suggestion memo gives conditional **review ranges** and add/trim/replacement tests. It does not generate orders or trade automatically.

**Cadence.** A scheduled Monday review produces an English [weekly research note](AI_Report_weekly/2026-11-02_report.md) and [allocation framework](AI_Report_weekly/2026-11-02_suggestion.md). Daily monitoring produces an event note only when a development could plausibly move the full account by more than 2%, materially change a thesis, or create an imminent decision point such as earnings for a major position. See a [SOFI earnings note](AI_Report_weekly/2026-10-28_emergency_report.md) and an [AMZN results note](AI_Report_weekly/2026-10-30_emergency_report.md). The 2% trigger is a research heuristic; it is not a measured risk limit while the complete account value is unavailable.

## Methods and quantitative elements

- **Marked exposure:** position value = disclosed shares × dated quote; sleeve weight = position value ÷ sum of marked disclosed equity values. The notes distinguish this *equity-sleeve* weight from an unknown full-account weight.
- **Scenario-based expected value:** thesis cards use explicit bull/base/bear assumptions and risk adjustments where inputs permit. The [rating rubric](rating%20criteria.md) maps modeled risk-adjusted upside into an ordinal score. Scores are dated judgments, **not calibrated probabilities, forecasts or trading signals**.
- **Factor concentration:** reports aggregate related exposures, for example semiconductors and space infrastructure, to identify correlated downside that single-name weights can miss.
- **Event-driven falsification:** each company has operational KPIs and conditions that would change the thesis; earnings are evaluated against these conditions and management guidance rather than the share-price reaction alone.
- **Source integrity:** material claims are linked to filings or primary releases. Missing cash, cost basis, transaction history and other assets are disclosed rather than inferred.

The [2 November weekly note](AI_Report_weekly/2026-11-02_report.md) illustrates the method: it marks ten active positions, identifies the largest factor concentrations, reassesses earnings and financing developments, and separates stale card targets from current underwriting. It also tracks higher-rated watchlist ideas as *candidates for further research*, not automatic replacements.

## Repository map

| Path | Role |
|---|---|
| [`Portfolio_AI.md`](Portfolio_AI.md) | Current disclosed holdings, preferences and instructions for AI output |
| [`stocks Evaluation/`](stocks%20Evaluation/) | Company thesis cards, including positive-share holdings and watchlist candidates |
| [`rating criteria.md`](rating%20criteria.md) | Ordinal upside-to-rating rubric |
| [`AI_Report_weekly/`](AI_Report_weekly/) | Dated weekly notes, separate suggestions and event-driven reports |
| [`Notes on Investment/`](Notes%20on%20Investment/) | Personal research notes and planning material; not the live holdings source |

Filenames and dates preserve the evolution of the research. Existing reports and thesis cards are treated as user-owned records; revisions are added as new dated files rather than replacing prior conclusions.

## Roadmap: from research assistant to quantitative trading system

The current system produces thesis monitoring and conditional portfolio research. It does not yet calculate production signals, backtest them or submit trades. The next stages are designed to turn the research process into a measurable strategy and, only after validation, an automated execution workflow.

1. **Build a reproducible data foundation.** Maintain a versioned holdings and transaction ledger; save timestamped, point-in-time prices, corporate actions, financial statements and event records. Add checks for stale sources, missing holdings or cards, arithmetic errors and broken report links.
2. **Define testable signals.** Translate thesis revisions, earnings surprises, valuation changes and risk exposures into explicit features and portfolio rules. Specify the investable universe, rebalance schedule, position limits, benchmark and the conditions under which a signal is inactive. Keep discretionary judgments separate from model inputs.
3. **Validate the strategy.** Run walk-forward and out-of-sample tests with realistic transaction costs, slippage and corporate actions. Report returns alongside volatility, drawdown, turnover, factor exposure and benchmark-relative performance. Use point-in-time data and strict event timestamps to prevent look-ahead and survivorship bias; test sensitivity to parameters and market regimes.
4. **Paper trade before live execution.** Run the same signal and sizing logic on a paper account, reconcile expected and actual fills, and log every decision with its input data and model version. Monitor drift between the backtest and live market conditions.
5. **Add controlled automated trading.** Connect to a broker only after paper-trading acceptance criteria are met. Separate signal generation from order execution; enforce pre-trade limits, cash and exposure checks, duplicate-order protection, a kill switch, reconciliation and alerts. Begin with a limited rollout and retain a complete audit trail.

The end state is a system that can explain **why** a position exists, **how** its size was chosen, **what** evidence would change it and **whether** the resulting strategy performs after costs. No return or alpha claim will be made before the validation stage produces evidence.
