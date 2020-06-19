--NumberOfMedicareBeneficiariesWithDrugServices ---done
UPDATE STG_MedicarePhyscianAndSupplier_DataCleaning
SET [Number of Medicare Beneficiaries With Drug Services] = REPLACE([Number of Medicare Beneficiaries With Drug Services], '"', '')

UPDATE STG_MedicarePhyscianAndSupplier_DataCleaning
SET [Number of Medicare Beneficiaries With Drug Services] = ISNULL(NULLIF(TRY_PARSE(RTRIM(LTRIM([Number of Medicare Beneficiaries With Drug Services])) as int), ''),0)

ALTER TABLE STG_MedicarePhyscianAndSupplier_DataCleaning
ALTER COLUMN [Number of Medicare Beneficiaries With Drug Services] int;


--TotalDrugSubmittedChargeAmount
UPDATE STG_MedicarePhyscianAndSupplier_DataCleaning
SET [Total Drug Submitted Charge Amount] = REPLACE([Total Drug Submitted Charge Amount], '"', '')

UPDATE STG_MedicarePhyscianAndSupplier_DataCleaning
SET [Total Drug Submitted Charge Amount] = ISNULL(NULLIF(TRY_PARSE([Total Drug Submitted Charge Amount] as decimal(18,2)), ''),0)

UPDATE STG_MedicarePhyscianAndSupplier_DataCleaning
SET [Total Drug Submitted Charge Amount] = ISNULL(NULLIF(TRY_CAST([Total Drug Submitted Charge Amount] as decimal(18,2)), ''),0)

CAST(@TestConvert AS DECIMAL(18, 4))

ALTER TABLE STG_MedicarePhyscianAndSupplier_DataCleaning
ALTER COLUMN  [Total Drug Submitted Charge Amount] decimal(18,2);








ALTER FUNCTION dbo.RemoveNonNumericCharacters (@Temp VARCHAR(max))

RETURNS VARCHAR(max)

AS

BEGIN

    While PatIndex('%[^0-9,.]%', @Temp) > 0

        Set @Temp = Stuff(@Temp, PatIndex('%[^0-9,.]%', @Temp), 1, '')

    Return @Temp

END
Go


dbo.RemoveNonNumericCharacters(b.[Total Drug Submitted Charge Amount]) as 'TotalDrugSubmittedChargeAmount',

UPDATE STG_MedicarePhyscianAndSupplier_DataCleaning
SET [Total Drug Submitted Charge Amount] = ISNULL(NULLIF(TRY_PARSE(dbo.RemoveNonNumericCharacters(b.[Total Drug Submitted Charge Amount]) as decimal(18,2)), ''),0);

ISNULL(NULLIF(TRY_PARSE(RTRIM(LTRIM([Number of Medicare Beneficiaries With Drug Services])) as int), ''),0)


--TotalDrugMedicareAllowedAmount
UPDATE STG_MedicarePhyscianAndSupplier_DataCleaning
SET [Total Drug Medicare Allowed Amount] = REPLACE([Total Drug Medicare Allowed Amount], '"', '')

--TotalDrugMedicareAllowedAmount
UPDATE STG_MedicarePhyscianAndSupplier_DataCleaning
SET [Total Drug Medicare Allowed Amount] = REPLACE([Total Drug Medicare Allowed Amount], '"', '')

--NumberofMedical Services
UPDATE STG_MedicarePhyscianAndSupplier_DataCleaning
SET [Number of Medical Services] = REPLACE([Number of Medical Services], '"', '')

--NumberOfMedicareBeneficiariesWithMedicalServices
UPDATE STG_MedicarePhyscianAndSupplier_DataCleaning
SET [Number of Medicare Beneficiaries With Medical Services] = REPLACE([Number of Medicare Beneficiaries With Medical Services], '"', '')

--AverageAgeOfBeneficiaries
UPDATE STG_MedicarePhyscianAndSupplier_DataCleaning
SET [Average Age of Beneficiaries] = REPLACE([Average Age of Beneficiaries], '"', '')

--NumberOfBeneficiaries_Age_65_To_74
UPDATE STG_MedicarePhyscianAndSupplier_DataCleaning
SET [Number of Beneficiaries Age 65 to 74] = REPLACE([Number of Beneficiaries Age 65 to 74], '"', '')

--NumberOfBeneficiaries_Age_75_ To_84
UPDATE STG_MedicarePhyscianAndSupplier_DataCleaning
SET [Number of Beneficiaries Age 75 to 84] = REPLACE([Number of Beneficiaries Age 75 to 84], '"', '')

--NumberOfBeneficiaries_Age_ Greater_84
UPDATE STG_MedicarePhyscianAndSupplier_DataCleaning
SET [Number of Beneficiaries Age Greater 84] = REPLACE([Number of Beneficiaries Age Greater 84], '"', '')

--NumberOfFemaleBeneficiaries
UPDATE STG_MedicarePhyscianAndSupplier_DataCleaning
SET [Number of Female Beneficiaries] = REPLACE([Number of Female Beneficiaries], '"', '')

--NumberOfBlackOrAfricanAmerican_Beneficiaries
UPDATE STG_MedicarePhyscianAndSupplier_DataCleaning
SET [Number of Black or African American Beneficiaries] = REPLACE([Number of Black or African American Beneficiaries], '"', '')

--NumberOfAsianPacificIslander_ Beneficiaries
UPDATE STG_MedicarePhyscianAndSupplier_DataCleaning
SET [Number of Asian Pacific Islander Beneficiaries] = REPLACE([Number of Asian Pacific Islander Beneficiaries], '"', '')

--NumberOfHispanic_Beneficiaries
UPDATE STG_MedicarePhyscianAndSupplier_DataCleaning
SET [Number of Hispanic Beneficiaries] = REPLACE([Number of Hispanic Beneficiaries], '"', '')

--NumberOfAmerican Indian_AlaskaNative_Beneficiaries
UPDATE STG_MedicarePhyscianAndSupplier_DataCleaning
SET [Number of American Indian Alaska Native Beneficiaries] = REPLACE([Number of American Indian Alaska Native Beneficiaries], '"', '')

--NumberOfBeneficiaries_WithRaceNotElsewhereClassified
UPDATE STG_MedicarePhyscianAndSupplier_DataCleaning
SET [Number of Beneficiaries With Race Not Elsewhere Classified] = REPLACE([Number of Beneficiaries With Race Not Elsewhere Classified], '"', '')

--NumberOfBeneficiaries_WithMedicareOnlyEntitlement
UPDATE STG_MedicarePhyscianAndSupplier_DataCleaning
SET [Number of Beneficiaries With Medicare Only Entitlement] = REPLACE([Number of Beneficiaries With Medicare Only Entitlement], '"', '')

--NumberOfBeneficiaries_WithMedicare_MedicaidEntitlement
UPDATE STG_MedicarePhyscianAndSupplier_DataCleaning
SET [Number of Beneficiaries With Medicare & Medicaid Entitlement] = REPLACE([Number of Beneficiaries With Medicare & Medicaid Entitlement], '"', '')

--Percent_Of_BeneficiariesIdentifiedWithAsthma
UPDATE STG_MedicarePhyscianAndSupplier_DataCleaning
SET [Percent (%) of Beneficiaries Identified With Asthma] = REPLACE([Percent (%) of Beneficiaries Identified With Asthma], '"', '')

--Percent_Of_BeneficiariesIdentifiedWithCancer
UPDATE STG_MedicarePhyscianAndSupplier_DataCleaning
SET [Percent (%) of Beneficiaries Identified With Cancer] = REPLACE([Percent (%) of Beneficiaries Identified With Cancer], '"', '')

--Percent_Of_Beneficiaries IdentifiedWithHeartFailure
UPDATE STG_MedicarePhyscianAndSupplier_DataCleaning
SET [Percent (%) of Beneficiaries Identified With Heart Failure] = REPLACE([Percent (%) of Beneficiaries Identified With Heart Failure], '"', '')

--Percent_Of_BeneficiariesIdentifiedWithChronicKidneyDisease
UPDATE STG_MedicarePhyscianAndSupplier_DataCleaning
SET [Percent (%) of Beneficiaries Identified With Chronic Kidney Disease] = REPLACE([Percent (%) of Beneficiaries Identified With Chronic Kidney Disease], '"', '')

--Percent_Of_BeneficiariesIdentifiedWithChronicObstructivePulmonaryDisease
UPDATE STG_MedicarePhyscianAndSupplier_DataCleaning
SET [Percent (%) of Beneficiaries Identified With Chronic Obstructive Pulmonary Disease] = REPLACE([Percent (%) of Beneficiaries Identified With Chronic Obstructive Pulmonary Disease], '"', '')

--Percent_Of_BeneficiariesIdentifiedWithAtrialFibrillation
UPDATE STG_MedicarePhyscianAndSupplier_DataCleaning
SET [Percent (%) of Beneficiaries Identified With Atrial Fibrillation] = REPLACE([Percent (%) of Beneficiaries Identified With Atrial Fibrillation], '"', '')

--Percent_Of_BeneficiariesIdentifiedWithDepression
UPDATE STG_MedicarePhyscianAndSupplier_DataCleaning
SET [Percent (%) of Beneficiaries Identified With Depression] = REPLACE([Percent (%) of Beneficiaries Identified With Depression], '"', '')

--Percent_Of_BeneficiariesIdentifiedWithDiabetes
UPDATE STG_MedicarePhyscianAndSupplier_DataCleaning
SET [Percent (%) of Beneficiaries Identified With Diabetes] = REPLACE([Percent (%) of Beneficiaries Identified With Diabetes], '"', '')

--Percent_Of_BeneficiariesIdentifiedWithHyperlipidemia
UPDATE STG_MedicarePhyscianAndSupplier_DataCleaning
SET [Percent (%) of Beneficiaries Identified With Hyperlipidemia] = REPLACE([Percent (%) of Beneficiaries Identified With Hyperlipidemia], '"', '')

--Percent_Of_BeneficiariesIdentifiedWithHypertension
UPDATE STG_MedicarePhyscianAndSupplier_DataCleaning
SET [Percent (%) of Beneficiaries Identified With Hypertension] = REPLACE([Percent (%) of Beneficiaries Identified With Hypertension], '"', '')

--Percent_Of_BeneficiariesIdentifiedWithIschemicHeartDisease
UPDATE STG_MedicarePhyscianAndSupplier_DataCleaning
SET [Percent (%) of Beneficiaries Identified With Ischemic Heart Disease] = REPLACE([Percent (%) of Beneficiaries Identified With Ischemic Heart Disease], '"', '')

--Percent_Of_BeneficiariesIdentifiedWithOsteoporosis
UPDATE STG_MedicarePhyscianAndSupplier_DataCleaning
SET [Percent (%) of Beneficiaries Identified With Osteoporosis] = REPLACE([Percent (%) of Beneficiaries Identified With Osteoporosis], '"', '')

--Percent_Of_BeneficiariesIdentifiedWithRheumatoidArthritis_ Osteoarthritis
UPDATE STG_MedicarePhyscianAndSupplier_DataCleaning
SET [Percent (%) of Beneficiaries Identified With Rheumatoid Arthritis   Osteoarthritis] = REPLACE([Percent (%) of Beneficiaries Identified With Rheumatoid Arthritis   Osteoarthritis], '"', '')

--Percent_Of_BeneficiariesIdentifiedWithSchizophreniaOtherPsychoticDisorders
UPDATE STG_MedicarePhyscianAndSupplier_DataCleaning
SET [Percent (%) of Beneficiaries Identified With Schizophrenia   Other Psychotic Disorders] = REPLACE([Percent (%) of Beneficiaries Identified With Schizophrenia   Other Psychotic Disorders], '"', '')

--NumberOfBeneficiaries_AgeLess_ 65
UPDATE STG_MedicarePhyscianAndSupplier_DataCleaning
SET [Number of Beneficiaries Age Less than 65] = REPLACE([Number of Beneficiaries Age Less than 65], '"', '')

--NumberOfMaleBeneficiaries
UPDATE STG_MedicarePhyscianAndSupplier_DataCleaning
SET [Number of Male Beneficiaries] = REPLACE([Number of Male Beneficiaries], '"', '')

--NumberOfNon-HispanicWhite_Beneficiaries
UPDATE STG_MedicarePhyscianAndSupplier_DataCleaning
SET [Number of Non-Hispanic White Beneficiaries] = REPLACE([Number of Non-Hispanic White Beneficiaries], '"', '')

--Percent_Of_BeneficiariesIdentifiedWithAlzheimersDisease_Or_Dementia
UPDATE STG_MedicarePhyscianAndSupplier_DataCleaning
SET [Percent (%) of Beneficiaries Identified With Alzheimer’s Disease or Dementia] = REPLACE([Percent (%) of Beneficiaries Identified With Alzheimer’s Disease or Dementia], '"', '')

--Percent_Of_BeneficiariesIdentifiedWithAlzheimersDisease_Or_Dementia
UPDATE STG_MedicarePhyscianAndSupplier_DataCleaning
SET [Percent (%) of Beneficiaries Identified With Alzheimer’s Disease or Dementia] = REPLACE([Percent (%) of Beneficiaries Identified With Alzheimer’s Disease or Dementia], '"', '')

--NumberOfDrugServices
UPDATE STG_MedicarePhyscianAndSupplier_DataCleaning
SET [Number of Drug Services] = REPLACE([Number of Drug Services], '"', '')

--NumberOfDrugServices
UPDATE STG_MedicarePhyscianAndSupplier_DataCleaning
SET [Number of Drug Services] = REPLACE([Number of Drug Services], '"', '')

--LastName
UPDATE STG_MedicarePhyscianAndSupplier_DataCleaning
SET [Last Name Organization Name of the Provider] = REPLACE([Last Name Organization Name of the Provider], '"', '')

--FirstName
UPDATE STG_MedicarePhyscianAndSupplier_DataCleaning
SET [First Name of the Provider] = REPLACE([First Name of the Provider], '"', '')

--MiddleName
UPDATE STG_MedicarePhyscianAndSupplier_DataCleaning
SET [Middle Initial of the Provider] = REPLACE([Middle Initial of the Provider], '"', '')

--CredentialType
UPDATE STG_MedicarePhyscianAndSupplier_DataCleaning
SET [Credentials of the Provider] = REPLACE([Credentials of the Provider], '"', '')

--Gender
UPDATE STG_MedicarePhyscianAndSupplier_DataCleaning
SET [Gender of the Provider] = REPLACE([Gender of the Provider], '"', '')

--EntityType
UPDATE STG_MedicarePhyscianAndSupplier_DataCleaning
SET [Entity Type of the Provider] = REPLACE([Entity Type of the Provider], '"', '')

--AddressLine1
UPDATE STG_MedicarePhyscianAndSupplier_DataCleaning
SET [Street Address 1 of the Provider] = REPLACE([Street Address 1 of the Provider], '"', '')


--AddressLine2
UPDATE STG_MedicarePhyscianAndSupplier_DataCleaning
SET [Street Address 2 of the Provider] = REPLACE([Street Address 2 of the Provider], '"', '')


--CityName
UPDATE STG_MedicarePhyscianAndSupplier_DataCleaning
SET [City of the Provider] = REPLACE([City of the Provider], '"', '')

--ZIPCode
UPDATE STG_MedicarePhyscianAndSupplier_DataCleaning
SET [Zip Code of the Provider] = REPLACE([Zip Code of the Provider], '"', '')

--StateCode
UPDATE STG_MedicarePhyscianAndSupplier_DataCleaning
SET [State Code of the Provider] = REPLACE([State Code of the Provider], '"', '')

--CountryCode
UPDATE STG_MedicarePhyscianAndSupplier_DataCleaning
SET [Country Code of the Provider] = REPLACE([Country Code of the Provider], '"', '')

--ProviderTypeDescription
UPDATE STG_MedicarePhyscianAndSupplier_DataCleaning
SET [Provider Type of the Provider] = REPLACE([Provider Type of the Provider], '"', '')

--ProviderTypeDescription
UPDATE STG_MedicarePhyscianAndSupplier_DataCleaning
SET [Provider Type of the Provider] = REPLACE([Provider Type of the Provider], '"', '')

select * into STG_MedicarePhyscianAndSupplier_Formatted_V1
from STG_MedicarePhyscianAndSupplier_Formatted;

select top 200 *
from STG_MedicarePhyscianAndSupplier_Formatted;