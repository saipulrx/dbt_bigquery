# Exercise dbt and Bigquery 
This repository for course dbt and bigquery in digitalskola

## Table of Content
1) Install dbt core and dbt-bigquery
2) Setup BigQuery connection for dbt
3) Testing dbt connection
4) ELT Data Architecture
5) Upload raw data files
6) Create models
7) Create test
8) Create documentations

### Install dbt core and dbt-bigquery
#### Install using pip and virtual environments

- Create a new venv
  ```
  python -m venv dbt-env              # create the environment
  ```
- Activate that same virtual environment each time you create a shell window or session:
  ```
  source dbt-env/bin/activate         # activate the environment for Mac and Linux OR
  dbt-env\Scripts\activate            # activate the environment for Windows
  ```

#### Install dbt-bigquery
There are many data platform adapter that support dbt but in this course is using BigQuery
```
python -m pip install dbt-bigquery
```

### Setup BigQuery Connection for dbt
Please refer to [BigQuery Configs](https://docs.getdbt.com/docs/core/connect-data-platform/bigquery-setup#authentication-methods)

### Testing dbt installation & connection
Type command bellow in terminal or command line to testing are dbt is succcessfully installed
```
dbt --version
```

Type command bellow in terminal or command line to testing are dbt can connect to BigQuery or other data platform
```
dbt debug
```

