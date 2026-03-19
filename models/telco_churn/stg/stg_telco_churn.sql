select
*
from {{ source('telco_churn','raw_telco_churn') }}