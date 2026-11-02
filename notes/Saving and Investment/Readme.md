# All-in-One Portfolio Manager: Thesis Monitoring and Risk Research

An evidence-driven research workflow for a concentrated, growth-oriented equity portfolio. The project connects a live holdings file, company thesis cards, scheduled market monitoring and dated investment memos. Its goal is to make changes in the *investment case* visible before they become unexamined changes in portfolio risk.

> **Project status (November 2026):** Working research and reporting process with 19 company thesis cards and a dated report archive. This repository is primarily Markdown research, not an executable trading system or a statistically validated alpha strategy. But we plan to make it completely autonomous in the future.

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
| [`Readme.md`](MyQuant/README.md) | Original personal project note retained for historical context |

Filenames and dates preserve the evolution of the research. Existing reports and thesis cards are treated as user-owned records; revisions are added as new dated files rather than replacing prior conclusions.

## What this project does not yet establish

This is **not** a backtested strategy, a live order-management system or proof of alpha. The current archive has no reproducible data pipeline, clean transaction ledger, benchmark-relative performance attribution, calibrated scenario probabilities or measured out-of-sample results. Some thesis-card target values are stale after earnings or macro events, and different reports can use quotes from different points in the trading day. The published notes therefore distinguish observed facts, scenario assumptions and open questions.

The next engineering step would be to add a versioned holdings ledger and timestamped price/filing snapshots, then automate validation of position arithmetic, missing cards, source freshness and report links. A subsequent research step would test whether thesis revisions or event classifications predict *subsequent* risk-adjusted returns, using a prespecified benchmark, transaction costs and a strict no-look-ahead design. Until those tests exist, the value of the project is disciplined research and auditable decision support.

## Sharing and privacy

The live portfolio file contains personal holdings and investor details. Before publishing a public application repository, replace it with a synthetic example or obtain explicit consent for disclosure, and check report archives for share counts and other identifying information. The methodology and sample outputs can be discussed without exposing the private account.
