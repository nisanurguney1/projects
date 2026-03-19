select 
*
FROM {{ source('telco_churn','raw_telco_churn') }}