--NumberOfAsianPacificIslander_ Beneficiaries
UPDATE STG_MedicarePhyscianAndSupplier_Formatted
SET [NumberOfAsianPacificIslander_ Beneficiaries] = ISNULL(NULLIF(TRY_PARSE( [NumberOfAsianPacificIslander_ Beneficiaries] as int), ''),0);

--NumberOfAsianPacificIslander_ Beneficiaries
ALTER TABLE STG_MedicarePhyscianAndSupplier_Formatted
ALTER COLUMN [NumberOfAsianPacificIslander_ Beneficiaries] int;



--NumberOfHispanic_Beneficiaries
UPDATE STG_MedicarePhyscianAndSupplier_Formatted
SET NumberOfHispanic_Beneficiaries = ISNULL(NULLIF(TRY_PARSE( NumberOfHispanic_Beneficiaries as int), ''),0);


--NumberOfHispanic_Beneficiaries
ALTER TABLE STG_MedicarePhyscianAndSupplier_Formatted
ALTER COLUMN [NumberOfHispanic_Beneficiaries] int;

--NumberOfAmerican Indian_AlaskaNative_Beneficiaries

--NumberOfAmerican Indian_AlaskaNative_Beneficiaries
UPDATE STG_MedicarePhyscianAndSupplier_Formatted
SET NumberOfHispanic_Beneficiaries = ISNULL(NULLIF(TRY_PARSE( NumberOfHispanic_Beneficiaries as int), ''),0);



ALTER TABLE STG_MedicarePhyscianAndSupplier_Formatted
ALTER COLUMN [TotalDrugSubmittedChargeAmount] decimal(18,2);