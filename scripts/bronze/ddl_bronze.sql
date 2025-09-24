/*
============================================================================
DDL Script: Create Bronze Tables
============================================================================
Script Purpose: 
  This script creates tables for the 'bronze' schema, dropping existing tables
  if they already exists.   
  Run This script tp re-define the DDL struction of 'bronze' Tables
=============================================================================
*/

IF OBJECT_ID ('bronze.crm_cust_info', 'U') IS NOT NULL
	DROP TABLE bronze.crm_cust_info;

CREATE TABLE bronze.crm_cust_info (
  cst_id   INT,
  cst_key  NVARCHAR(50),
  cst_firstname NVARCHAR(50),
  cst_lastname NVARCHAR(50),
  cst_martial_status NVARCHAR(50),
  cst_gndr NVARCHAR(50),
  cs_create_date DATE 
);

IF OBJECT_ID ('bronze.crm_prd_info', 'U') IS NOT NULL
	DROP TABLE bronze.crm_prd_info;
CREATE TABLE bronze.crm_prd_info (
  prd_id INT,
  prd_key NVARCHAR(50),
  prd_nm NVARCHAR(50),
  prd_cost INT,
  prd_line NVARCHAR(50),
  prd_start_dt DATETIME,
  prd_end_dt DATETIME
);

IF OBJECT_ID ('bronze.crm_sales_details', 'U') IS NOT NULL
	DROP TABLE bronze.crm_sales_details;
CREATE TABLE bronze.crm_sales_details (
  sls_ord_num NVARCHAR(50),
  sls_prd_key NVARCHAR(50),
  sls_cust_id INT,
  sls_order_dt INT,
  sls_ship_dt INT,
  sls_due_dt INT,
  sls_sales INT,
  sls_quantity INT,
  sls_price INT
);

IF OBJECT_ID ('bronze.erp_CUST_AZ12', 'U') IS NOT NULL
	DROP TABLE bronze.erp_CUST_AZ12;
CREATE TABLE bronze.erp_CUST_AZ12 (
  cid NVARCHAR(50),
  bdate DATE,
  GEN NVARCHAR(50)
);

IF OBJECT_ID ('bronze.erp_LOC_A101', 'U') IS NOT NULL
	DROP TABLE bronze.erp_LOC_A101;
CREATE TABLE bronze.erp_LOC_A101 (
  cid NVARCHAR(50),
  cntry NVARCHAR(50)
);

IF OBJECT_ID ('bronze.erp_PX_CATG1V2', 'U') IS NOT NULL
	DROP TABLE bronze.erp_PX_CATG1V2;
CREATE TABLE bronze.erp_PX_CATG1V2 (
  id NVARCHAR(50),
  cat NVARCHAR(50),
  subcat NVARCHAR(50),
maintenance NVARCHAR(50)
);
