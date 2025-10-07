# DBT Snowflake Analytics Project

## Overview
This project demonstrates building a modern data transformation pipeline using **dbt (Data Build Tool)** with **Snowflake** as the data warehouse.  
The project follows a modular approach with **staging** and **mart** layers to produce analytical datasets such as **customer revenue** and **yearly revenue**.


## Prerequisites

Before you start, make sure you have:

- A **Snowflake account**
- A **dbt Cloud account** (or dbt CLI installed)
- Access to the following Snowflake databases:
  - `SNOWFLAKE_SAMPLE_DATA`
  - Your working database (e.g. `DEMO_DB`)

## Steps to Build the Project

1. **Set up Snowflake:**
   - Create or use an existing Snowflake account.  
   - Set up a virtual warehouse for running queries.  
   - Ensure access to the `SNOWFLAKE_SAMPLE_DATA` database.
2. **Initialize dbt Project:**
   - Create a dbt Cloud account (or use dbt CLI).  
   - Initialize a new dbt project and configure it to connect to Snowflake.  
   - Assign a personal schema for development (e.g., `dbt_personal`).

3. **Define Sources:**
   - Identify raw tables (`customer`, `orders`, `lineitem`) as sources.  
   - Define them in the `schema.yml` file for dbt to reference.

4. **Build Models:**
   - Create **staging models** for cleaning and transforming raw data.  
   - Create **silver/gold models** for analytical aggregations.  
   - Add derived columns and calculated metrics as needed.

5. **Add Tests and Documentation:**
   - Define **data tests** (e.g., `not_null`, `unique`) in `schema.yml`.  
   - Document each model for dbt documentation.  

6. **Run and Validate:**
   - Execute the dbt project to build models in Snowflake.  
   - Run tests to verify data quality.  
   - Generate and view dbt documentation to explore model lineage.
   
## Model Layers
- **Bronze (Source) Layer:** Contains raw source data as-is from TPCH, including tables like `orders`, `customer`, and `lineitem`.  
- **Silver (Staging) Layer:** Transforms and cleans raw data, adding derived columns like `order_year` and `total_price` (e.g., `stg_orders`).  
- **Gold (Mart) Layer:** Aggregates data for analytics, such as `customer_revenue` and `yearly_revenue`.

## References
- **dbt Documentation:** [https://docs.getdbt.com/guides/snowflake](https://docs.getdbt.com/guides/snowflake)  
- **Snowflake Sample Data:** [https://docs.snowflake.com/en/user-guide/sample-data-using](https://docs.snowflake.com/en/user-guide/sample-data-using)  
- **Snowflake with dbt guide:** [https://docs.snowflake.com/en/user-guide/tutorials/dbt-projects-on-snowflake-getting-started-tutorial](https://docs.snowflake.com/en/user-guide/tutorials/dbt-projects-on-snowflake-getting-started-tutorial)

