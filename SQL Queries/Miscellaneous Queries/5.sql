UPDATE STG_MedicarePhyscianAndSupplier_Formatted
SET [NumberOfDrugServices] = ISNULL(NULLIF(TRY_PARSE( [NumberOfDrugServices] as int), ''),0)

UPDATE STG_MedicarePhyscianAndSupplier_Formatted
SET NumberOfMedicareBeneficiariesWithDrugServices = ISNULL(NULLIF(TRY_PARSE( [NumberOfMedicareBeneficiariesWithDrugServices] as int), ''),0)

select top 3000 *
from STG_MedicarePhyscianAndSupplier_Formatted;


UPDATE STG_MedicarePhyscianAndSupplier_Formatted
SET [NumberofMedical Services] = ISNULL(NULLIF(TRY_PARSE( [NumberofMedical Services] as int), ''),0)


select top 100 [NumberofMedical Services]
from STG_MedicarePhyscianAndSupplier_Formatted;




UPDATE STG_MedicarePhyscianAndSupplier_Formatted
SET NumberOfMedicareBeneficiariesWithMedicalServices = ISNULL(NULLIF(TRY_PARSE( NumberOfMedicareBeneficiariesWithMedicalServices as int), ''),0)


--TotalMedicalMedicareAllowedAmount
UPDATE STG_MedicarePhyscianAndSupplier_Formatted_Backup
SET [TotalMedicalMedicareAllowedAmount] = CAST(ISNULL(NULLIF([TotalMedicalMedicareAllowedAmount], ''),0) AS DECIMAL(18,2));


UPDATE STG_MedicarePhyscianAndSupplier_Formatted
SET NumberOfBeneficiaries_Age_65_To_74 = ISNULL(NULLIF(TRY_PARSE( NumberOfBeneficiaries_Age_65_To_74 as int), ''),0)

ALTER TABLE STG_MedicarePhyscianAndSupplier_Formatted_Backup
ALTER COLUMN [NumberOfBeneficiaries_Age_65_To_74] int;




UPDATE STG_MedicarePhyscianAndSupplier_Formatted
SET [NumberOfBeneficiaries_Age_75_ To_84] = ISNULL(NULLIF(TRY_PARSE( [NumberOfBeneficiaries_Age_75_ To_84] as int), ''),0)

ALTER TABLE STG_MedicarePhyscianAndSupplier_Formatted_Backup
ALTER COLUMN [NumberOfBeneficiaries_Age_75_ To_84] int;


NumberOfBeneficiaries_Age_ Greater_84

UPDATE STG_MedicarePhyscianAndSupplier_Formatted
SET [NumberOfBeneficiaries_Age_ Greater_84] = ISNULL(NULLIF(TRY_PARSE( [NumberOfBeneficiaries_Age_ Greater_84] as int), ''),0)

ALTER TABLE STG_MedicarePhyscianAndSupplier_Formatted
ALTER COLUMN [NumberOfBeneficiaries_Age_ Greater_84] int;


NumberOfFemaleBeneficiaries

UPDATE STG_MedicarePhyscianAndSupplier_Formatted
SET NumberOfFemaleBeneficiaries = ISNULL(NULLIF(TRY_PARSE( NumberOfFemaleBeneficiaries as int), ''),0)

ALTER TABLE STG_MedicarePhyscianAndSupplier_Formatted
ALTER COLUMN NumberOfFemaleBeneficiaries int;


select top 150 NumberOfFemaleBeneficiaries
from STG_MedicarePhyscianAndSupplier_Formatted;



--NumberOfBlackOrAfricanAmerican_Beneficiaries

UPDATE STG_MedicarePhyscianAndSupplier_Formatted
SET NumberOfBlackOrAfricanAmerican_Beneficiaries = ISNULL(NULLIF(TRY_PARSE( NumberOfBlackOrAfricanAmerican_Beneficiaries as int), ''),0)

select top 100 TotalMedicalMedicareAllowedAmount
from STG_MedicarePhyscianAndSupplier_Formatted

ALTER TABLE STG_MedicarePhyscianAndSupplier_Formatted
ALTER COLUMN NumberOfBlackOrAfricanAmerican_Beneficiaries int;


--NumberOfAsianPacificIslander_ Beneficiaries
UPDATE STG_MedicarePhyscianAndSupplier_Formatted
SET Number = ISNULL(NULLIF(TRY_PARSE( NumberOfAsianPacificIslander_ Beneficiaries as int), ''),0)
