--TotalMedicalMedicarePaymentAmount
ALTER TABLE STG_MedicarePhyscianAndSupplier_Formatted
ALTER COLUMN Total decimal(18,2);

select top 10 TotalMed
from STG_MedicarePhyscianAndSupplier_Formatted