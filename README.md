Welcome to your new dbt project!

# Jaffle shop - dbt + DuckDB Data Engineering project

An end-to-end data transformation pipeline build with **dbt core** and **DuckDB**, modeling raw e-commerce data (customers, orders, payments) into clean,tested, analytics-ready rables.

## 💫 Overview

This project demonstrates a complete ETL workflow using dbt: raw data is loaded as seeds, cleaned in a **staging** layer, and combined into business-ready **mart** models - with automated sata-quality tests and auto-generated documentation.

## 🛠️ Tech Stack

- **dbt Core** - data transformation and modeling
- **DuckDB** - local analytical database
- **SQL** - transforamtions
- **Git / Github** - version control

## 🏗️ Project Structure
models/
├── staging/ # Cleaned, renamed raw tables (1:1 with sources)
│ ├── stg_customers.sql
│ ├── stg_orders.sql
│ └── stg_payments.sql
└── marts/ # Business-ready analytics models
├── customers.sql # One row per customer with order-history stats
├── orders.sql # One row per order with total payment amount
└── schema.yml # Tests + documentation



seeds/ # Raw CSV source data

## 🔄 Data Flow
raw_customers → stg_customers ─┐
├→ customers
raw_orders → stg_orders ────┤
└→ orders → customers
raw_payments → stg_payments ──┘


## ✅ Data Quality Tests

- `unique` and `not_null` on all primary keys
- `relationships` test ensuring referential integrity between orders and customers
- `accepted_values` test validating order status values


## 📈 Key Learnings

- Layered data modeling (staging → marts)
- The `ref()` function and dbt's automatic dependency graph (DAG)
- Writing data-quality tests to catch bad data automatically
- Auto-generating documentation and data lineage

---

**Author:** Ajay Kumar · [[LinkedIn](https://www.linkedin.com/in/ajay-kumar-26252019b/)]


### Resources:
- Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
- Check out [Discourse](https://discourse.getdbt.com/) for commonly asked questions and answers
- Join the [chat](https://community.getdbt.com/) on Slack for live discussions and support
- Find [dbt events](https://events.getdbt.com) near you
- Check out [the blog](https://blog.getdbt.com/) for the latest news on dbt's development and best practices
