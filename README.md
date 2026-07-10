# Northwind Analytics — dbt Project

A hands-on dbt project built to practice analytics engineering fundamentals, using the classic Northwind dataset as source data on BigQuery.

## What this project demonstrates

- dbt project structure and layered modeling (staging → intermediate → marts)
- Source definitions with column-level documentation and tests (`sources.yml`)
- Staging models with explicit type casting (`stg_categories`, `stg_orders`)
- A custom `generate_schema_name` macro for environment-aware schema routing
- Environment-based credential management (no secrets committed — see `profiles.yml.example`)
- Seed data for local development from the Northwind sample dataset

## Stack

dbt-core · BigQuery · SQL · Jinja

## Project structure

```
├── models/
│   └── staging/
│       └── staging_northwind/
│           ├── sources.yml
│           ├── stg_categories.sql
│           └── stg_orders.sql
├── macros/
│   └── generate_schema_name.sql
├── seeds/
│   └── erp_northwind/        # Northwind sample CSVs
├── profiles.yml.example      # template — copy to ~/.dbt/profiles.yml
└── dbt_project.yml
```

## Running locally

1. Install dbt-core and the BigQuery adapter:
   ```
   pip install dbt-bigquery
   ```
2. Copy `profiles.yml.example` to `~/.dbt/profiles.yml` and set the required
   environment variables (`GCP_DEV_PROJECT`, `DBT_DEV_SCHEMA`, `GCP_DEV_KEYFILE_PATH`).
3. Load the sample data:
   ```
   dbt seed
   ```
4. Build the staging models:
   ```
   dbt run
   ```
5. Run the data tests:
   ```
   dbt test
   ```

## About

Personal learning project exploring dbt fundamentals. I work as a Data Engineer with dbt and Snowflake in production — see [my profile](https://github.com/baumgartnerdataprojects) for more.
