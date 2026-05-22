# User Stories
**Project:** Retail Sales Performance Analysis  
**Author:** Shreya Anil  
**Version:** 1.0  
**Date:** May 2026

---

## How to Read These Stories
Format: *As a [persona], I want [goal] so that [reason].*  
Each story includes priority, story points, and acceptance criteria.

---

## US-01 — Regional Sales Overview
**As a** Regional Sales Manager,  
**I want** to view total sales and profit by region on a single dashboard,  
**So that** I can quickly identify which regions need attention.

**Priority:** High  
**Story Points:** 3  
**Acceptance Criteria:**
- Dashboard displays all 4 regions (West, East, Central, South)
- Both sales revenue and profit are visible per region
- Data can be filtered by date range

---

## US-02 — Category Performance Breakdown
**As a** Store Operations Manager,  
**I want** to see sales and profit broken down by product category and sub-category,  
**So that** I can make informed stocking and purchasing decisions.

**Priority:** High  
**Story Points:** 3  
**Acceptance Criteria:**
- All 3 categories (Furniture, Office Supplies, Technology) are displayed
- Sub-category drill-down is available
- Negative profit sub-categories are visually flagged

---

## US-03 — Discount Impact Analysis
**As a** Finance Director,  
**I want** to understand how discount rates affect profit margins,  
**So that** I can set evidence-based discounting policies.

**Priority:** High  
**Story Points:** 5  
**Acceptance Criteria:**
- Scatter plot or table showing discount rate vs profit margin
- Breakeven discount threshold is clearly identified
- Filterable by category and region

---

## US-04 — Underperforming Segment Alerts
**As a** Regional Sales Manager,  
**I want** to be alerted to sub-categories with negative profit margins,  
**So that** I can escalate pricing or stocking issues immediately.

**Priority:** Medium  
**Story Points:** 2  
**Acceptance Criteria:**
- Negative margin sub-categories are highlighted in red
- Alert is visible on the main dashboard without drilling down
- Exportable as a summary report

---

## US-05 — Month-over-Month Sales Trend
**As a** Finance Director,  
**I want** to see monthly sales trends over the full dataset period,  
**So that** I can identify seasonal patterns and plan budgets accordingly.

**Priority:** Medium  
**Story Points:** 3  
**Acceptance Criteria:**
- Line chart displays monthly sales from 2014 to 2017
- Year-over-year comparison is available
- Filterable by region and category

---

## US-06 — Inventory Turnover by Category
**As a** Store Operations Manager,  
**I want** to see order volume trends by product category over time,  
**So that** I can reduce overstock in slow-moving categories.

**Priority:** Medium  
**Story Points:** 3  
**Acceptance Criteria:**
- Order count by category displayed monthly
- Highlights months with unusually high or low order volumes
- Exportable to Excel

---

## US-07 — Self-Service Dashboard Filtering
**As a** Regional Sales Manager,  
**I want** to filter the entire dashboard by date range, region, and category simultaneously,  
**So that** I can answer ad hoc business questions without requesting a new report.

**Priority:** Medium  
**Story Points:** 2  
**Acceptance Criteria:**
- All three filters work independently and in combination
- Dashboard updates in under 5 seconds after filter selection
- Filter selections are visible and resettable

---

## US-08 — Data Export for Offline Reporting
**As a** Finance Director,  
**I want** to export filtered dashboard data to Excel,  
**So that** I can include findings in board-level presentations.

**Priority:** Low  
**Story Points:** 2  
**Acceptance Criteria:**
- Export button available on dashboard
- Exported file reflects currently applied filters
- File format is .xlsx and opens without errors
