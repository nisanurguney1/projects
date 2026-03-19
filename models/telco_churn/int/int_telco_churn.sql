SELECT 
CustomerID
,SeniorCitizen
,Partner
,Dependents
,tenure
,CASE
 WHEN tenure < 12 THEN 'new'
 WHEN tenure > 35 THEN 'old'
  ELSE 'mid'
   END AS tenure_status
,PhoneService
,MultipleLines
,InternetService
,OnlineSecurity
,OnlineBackup
,DeviceProtection
,TechSupport
,StreamingTV
,StreamingMovies
,Contract
,PaperlessBilling
,PaymentMethod
,MonthlyCharges
,CASE
 WHEN MonthlyCharges < 50 THEN 'cheap'
 WHEN MonthlyCharges > 79 THEN 'expensive'
  ELSE 'mid'
   END AS monthly_charges_status
,TotalCharges
,Churn
from {{ ref('stg_telco_churn') }}