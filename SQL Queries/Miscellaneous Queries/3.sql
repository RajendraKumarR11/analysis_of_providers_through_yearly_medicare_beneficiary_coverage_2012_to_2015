

ALTER TABLE STG_MedicarePhyscianAndSupplier_Formatted
ALTER COLUMN [TotalMedicalMedicareAllowedAmount] decimal(18,2);

select top 100 TotalMedicalMedicareAllowedAmount
from STG_MedicarePhyscianAndSupplier_Formatted;