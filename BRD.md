# Business Requirements Document (BRD)
**Project:** Retail Sales Performance Analysis  
**Author:** Shreya Anil  
**Version:** 1.0  
**Date:** May 2026  
**Status:** Approved

---

## 1. Executive Summary
The retail business has observed a decline in profit margins over a 3-year period despite stable order volumes. This project aims to analyze sales, product, and regional data to identify root causes and provide actionable recommendations to business stakeholders.

---

## 2. Business Objectives
- Identify which product categories and regions are underperforming on profit margin
- Understand the impact of discounting strategy on profitability
- Standardize inventory and sales reporting for store managers
- Enable data-driven decision-making through an interactive dashboard

---

## 3. Scope
**In Scope:**
- Sales and profit analysis by region, category, and sub-category
- Discount impact analysis
- Inventory turnover patterns by category
- Dashboard reporting for management stakeholders

**Out of Scope:**
- Customer segmentation modeling
- Real-time data integration
- Supply chain optimization

---

## 4. Stakeholders
| Stakeholder | Role | Interest |
|---|---|---|
| Regional Sales Manager | Primary User | Regional performance visibility |
| Store Operations Manager | Primary User | Inventory turnover reporting |
| Finance Director | Approver | Profit margin trends |
| IT Team | Support | Data access and dashboard hosting |
| Business Analyst (Shreya Anil) | Author | Requirements and delivery |

---

## 5. Functional Requirements
| ID | Requirement | Priority |
|---|---|---|
| FR-01 | System shall display sales and profit by region | High |
| FR-02 | System shall display performance by product category and sub-category | High |
| FR-03 | System shall show discount rate vs profit margin correlation | High |
| FR-04 | System shall allow filtering by date range, region, and category | Medium |
| FR-05 | System shall flag sub-categories with negative profit margins | Medium |
| FR-06 | System shall show month-over-month sales trend | Low |

---

## 6. Non-Functional Requirements
- Dashboard must load within 5 seconds
- Reports must be accessible to non-technical stakeholders
- Data must be refreshable without IT intervention

---

## 7. Assumptions
- Historical data (2014–2017) is sufficient to identify trends
- Stakeholders have access to Power BI Desktop or Power BI Service
- No PII or sensitive customer data is included in the dataset

---

## 8. Constraints
- Analysis is limited to available Kaggle dataset fields
- No real-time data feed available
- Budget: No additional tooling budget allocated

---

## 9. Success Criteria
- Stakeholders can identify top 3 underperforming regions within 2 clicks on the dashboard
- Discount impact on profit is clearly visualized and documented
- All 6 functional requirements are delivered and signed off
