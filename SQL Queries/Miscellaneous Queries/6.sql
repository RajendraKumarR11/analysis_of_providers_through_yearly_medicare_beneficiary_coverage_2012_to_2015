--NumberOfAmerican Indian_AlaskaNative_Beneficiaries
UPDATE STG_MedicarePhyscianAndSupplier_Formatted
SET [NumberOfAmerican Indian_AlaskaNative_Beneficiaries] = ISNULL(NULLIF(TRY_PARSE( [NumberOfAmerican Indian_AlaskaNative_Beneficiaries] as int), ''),0);


--NumberOfAmerican Indian_AlaskaNative_Beneficiaries
ALTER TABLE STG_MedicarePhyscianAndSupplier_Formatted
ALTER COLUMN [NumberOfAmerican Indian_AlaskaNative_Beneficiaries] int;

select top 100 *
from STG_MedicarePhyscianAndSupplier_Formatted;

--NumberOfBeneficiaries_WithRaceNotElsewhereClassified
UPDATE STG_MedicarePhyscianAndSupplier_Formatted
SET [NumberOfBeneficiaries_WithRaceNotElsewhereClassified] = ISNULL(NULLIF(TRY_PARSE( [NumberOfBeneficiaries_WithRaceNotElsewhereClassified] as int), ''),0);


--NumberOfBeneficiaries_WithRaceNotElsewhereClassified
ALTER TABLE STG_MedicarePhyscianAndSupplier_Formatted
ALTER COLUMN [NumberOfBeneficiaries_WithRaceNotElsewhereClassified] int;

--NumberOfBeneficiaries_WithRaceNotElsewhereClassified
ALTER TABLE STG_MedicarePhyscianAndSupplier_Formatted
ALTER COLUMN [NumberOfBeneficiaries_WithRaceNotElsewhereClassified] int;


Percent_Of_BeneficiariesIdentifiedWithAtrialFibrillation
UPDATE STG_MedicarePhyscianAndSupplier_Formatted
SET [NumberOfBeneficiaries_WithRaceNotElsewhereClassified] = ISNULL(NULLIF(TRY_PARSE( [NumberOfBeneficiaries_WithRaceNotElsewhereClassified] as int), ''),0);


select top 1000 Percent_Of_BeneficiariesIdentifiedWithAtrialFibrillation, [Percent_Of_Beneficiaries IdentifiedWithHeartFailure], Percent_Of_BeneficiariesIdentifiedWithAlzheimersDisease_Or_Dementia, Percent_Of_BeneficiariesIdentifiedWithAsthma, Percent_Of_BeneficiariesIdentifiedWithCancer, Percent_Of_BeneficiariesIdentifiedWithChronicKidneyDisease, Percent_Of_BeneficiariesIdentifiedWithChronicObstructivePulmonaryDisease, Percent_Of_BeneficiariesIdentifiedWithDepression, Percent_Of_BeneficiariesIdentifiedWithDiabetes, [Percent_Of_BeneficiariesIdentifiedWithRheumatoidArthritis_ Osteoarthritis], Percent_Of_BeneficiariesIdentifiedWithSchizophreniaOtherPsychoticDisorders
from STG_MedicarePhyscianAndSupplier_Formatted;


--Number_Of_BeneficiariesIdentifiedWithAtrialFibrillation
ALTER TABLE STG_MedicarePhyscianAndSupplier_Formatted
ADD Number_Of_BeneficiariesIdentifiedWithAtrialFibrillation int;

select RIGHT('875.50', 2);



--NumberOfBeneficiaries_AgeLess_ 65
UPDATE STG_MedicarePhyscianAndSupplier_Formatted
SET [NumberOfBeneficiaries_AgeLess_ 65] = ISNULL(NULLIF(TRY_PARSE( [NumberOfBeneficiaries_AgeLess_ 65] as int), ''),0);


--NumberOfBeneficiaries_AgeLess_ 65

ALTER TABLE STG_MedicarePhyscianAndSupplier_Formatted
ALTER COLUMN [NumberOfBeneficiaries_AgeLess_ 65] int;


--NumberOfMaleBeneficiaries
UPDATE STG_MedicarePhyscianAndSupplier_Formatted
SET [NumberOfMaleBeneficiaries] = ISNULL(NULLIF(TRY_PARSE( [NumberOfMaleBeneficiaries] as int), ''),0);
NumberOfMaleBeneficiaries

--NumberOfMaleBeneficiaries
ALTER TABLE STG_MedicarePhyscianAndSupplier_Formatted
ALTER COLUMN [NumberOfMaleBeneficiaries] int;

select top 100 TotalMedicalMedicareAllowedAmount 
from STG_MedicarePhyscianAndSupplier_Formatted;


--TotalMedicalMedicareAllowedAmount
ALTER TABLE STG_MedicarePhyscianAndSupplier_Formatted
ALTER COLUMN TotalMedicalMedicareAllowedAmount decimal(18,2);


--NumberOfMaleBeneficiaries
/*ALTER TABLE STG_MedicarePhyscianAndSupplier_Formatted
ALTER COLUMN [NumberOfMaleBeneficiaries] int;*/


--TotaMedicalMedicarePaymentAmount
UPDATE STG_MedicarePhyscianAndSupplier_Formatted
SET TotalMedicalMedicarePaymentAmount = CAST(ISNULL(NULLIF(TotalMedicalMedicarePaymentAmount, ''),0) AS DECIMAL(18,2));