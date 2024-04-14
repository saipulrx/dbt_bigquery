# Hands On dbt and Bigquery 
This repository for course dbt and bigquery in digitalskola

## Table of Content
1) Install dbt core and dbt-bigquery
2) Setup BigQuery connection for dbt
3) Testing dbt installation
4) Setup dbt with bigquery as data platform
5) Testing dbt connection
6) ELT Data Architecture & Data Modelling
7) Upload raw data files
8) Create Models
9) Create Test
10) Create documentations

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

### Testing dbt installation
Type command bellow in terminal or command line to testing are dbt is succcessfully installed
```
dbt --version
```

### Setup dbt with bigquery as data platform
- Run dbt cli to init dbt with BigQuery as data platform
```
dbt init <your project name>
```
- Choose bigquery for database
- Choose service account file
- Input full path location service account file
- Input GCP Project ID
- Input dataset in BigQuery
- Input threads 1
- Input job execution timeout seconds 300
- Choose US as desired location option

### Testing dbt connection

Type command bellow in terminal or command line to testing are dbt can connect to BigQuery or other data platform
```
dbt debug
```
Also don't forget to copy dbt_project.yml to your dbt project folder location

### ELT Data Architecture & Data Modelling
#### ELT Data Architecture
![data_architecture](https://github.com/saipulrx/dbt_bigquery/blob/main/assets/elt_data_architecture.drawio.png)

#### Data Modelling
In this course, for Data Modelling use Kimbal's Method - Star Schema

<b>ERD Conceptual</b>
![erd conceptual](https://github.com/saipulrx/dbt_bigquery/blob/main/assets/erd_conceptual.png)

<b>ERD Logical</b>
![erd logical](https://github.com/saipulrx/dbt_bigquery/blob/main/assets/erd_logical.png)

<b>ERD Physical</b>
<br />
![erd physical](https://github.com/saipulrx/dbt_bigquery/blob/main/assets/erd_physical.png)

### Upload Raw Data Files
- Upload Raw data csv files in folder seeds use dbt cli command 
```
dbt seed
```
- After that, there are new table in raw dataset

### Create Models
Copy paste all folder staging and warehouse to your local then run
```
dbt run
```

### Create Test
- Create schema.yml under models/warehouse and copy paste bellow code
```
version: 2

models:
    - name: dim_product
      columns:              
          - name: product_id
            tests:
                - not_null
                - unique
```
- Run dbt cli bellow
```
dbt test
```

### Create Documentation

