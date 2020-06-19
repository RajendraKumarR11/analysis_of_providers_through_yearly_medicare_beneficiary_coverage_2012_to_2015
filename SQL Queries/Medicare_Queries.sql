---Lookup_Enrollment
select row_number() over (order by ENRLMT_ID) as EnrollmentID, NPI into Lookup_Enrollment
from STG_BaseProviderEnrollment
group by ENRLMT_ID, NPI

--Lookup_OrderEligibility
select NPI, DME as 'DMEPOSClaim_IND', HHA as 'HHAAClaim_IND' into Lookup_OrderEligibility
from STG_OrderAndReferring
group by NPI, DME, HHA

----Lookup_ProviderType
select PROVIDER_TYPE_CD as 'ProviderTypeCode', PROVIDER_TYPE_DESC as 'ProviderTypeDescription' into Lookup_ProviderType
from STG_BaseProviderEnrollment 
group by PROVIDER_TYPE_CD, PROVIDER_TYPE_DESC

--Backup table creation (STG_MedicarePhyscianAndSupplier_Formatting) before datacleaning (removal of junk characters)
select * into STG_MedicarePhyscianAndSupplier_Formatting
from STG_MedicarePhyscianAndSupplier;

--Function RemoveNonNumericCharacters() definition
Go
ALTER FUNCTION dbo.RemoveNonNumericCharacters (@Temp VARCHAR(1000))

RETURNS VARCHAR(1000)

AS

BEGIN

    While PatIndex('%[^0-9,.]%', @Temp) > 0

        Set @Temp = Stuff(@Temp, PatIndex('%[^0-9,.]%', @Temp), 1, '')

    Return @Temp

END
Go

--Data cleaning using above method and storing the resultant data in STG_MedicarePhyscianAndSupplier_Formatted
select 
	dbo.RemoveNonNumericCharacters (b.[National Provider Identifier]) as 'NPI',
	b.[Last Name Organization Name of the Provider] as 'LastName',
	b.[First Name of the Provider] as 'FirstName',
	b.[Middle Initial of the Provider] as 'MiddleName',
	dbo.RemoveNonNumericCharacters (b.[Credentials of the Provider]) as 'CredentialType',
	dbo.RemoveNonNumericCharacters (b.[Gender of the Provider]) as 'Gender',
	dbo.RemoveNonNumericCharacters (b.[Entity Type of the Provider]) as 'EntityType',
	b.[Street Address 1 of the Provider] as 'AddressLine1',
	b.[Street Address 2 of the Provider] as 'AddressLine2',
	b.[City of the Provider] as 'CityName',
	dbo.RemoveNonNumericCharacters (b.[Zip Code of the Provider]) as 'ZIPCode',
	b.[State Code of the Provider] as 'StateCode',
	b.[Country Code of the Provider] as 'CountryCode',
	dbo.RemoveNonNumericCharacters(b.[Provider Type of the Provider]) as 'ProviderTypeDescription',
	dbo.RemoveNonNumericCharacters(b.[Medicare Participation Indicator]) as 'MedicareParticipationIndicator',
	dbo.RemoveNonNumericCharacters(b.[Number of HCPCS]) as 'NumberOfHCPCS',
	dbo.RemoveNonNumericCharacters(b.[Number of Services]) as 'NumberOfServices',
	dbo.RemoveNonNumericCharacters(b.[Number of Medicare Beneficiaries]) as 'NumberOfMedicareBeneficiaries',
	dbo.RemoveNonNumericCharacters(b.[Total Submitted Charge Amount]) as 'TotalSubmittedChargeAmount',
	dbo.RemoveNonNumericCharacters(b.[Total Medicare Allowed Amount]) as 'TotalMedicareAllowedAmount',
	dbo.RemoveNonNumericCharacters(b.[Total Medicare Payment Amount]) as 'TotalMedicarePaymentAmount',
	dbo.RemoveNonNumericCharacters(b.[Drug Suppress Indicator]) as 'DrugSupressIndicator',
	dbo.RemoveNonNumericCharacters(b.[Number of HCPCS Associated With Drug Services]) as 'NumberOfHCPCSAssociatedWithDrugServices',
	dbo.RemoveNonNumericCharacters(b.[Number of Drug Services]) as 'NumberOfDrugServices',
	dbo.RemoveNonNumericCharacters(b.[Number of Medicare Beneficiaries With Drug Services]) as 'NumberOfMedicareBeneficiariesWithDrugServices',
	dbo.RemoveNonNumericCharacters(b.[Total Drug Submitted Charge Amount]) as 'TotalDrugSubmittedChargeAmount',
	dbo.RemoveNonNumericCharacters(b.[Total Drug Medicare Allowed Amount]) as 'TotalDrugMedicareAllowedAmount',
	dbo.RemoveNonNumericCharacters(b.[Total Drug Medicare Payment Amount]) as 'TotalDrugMedicarePaymentAmount',
	dbo.RemoveNonNumericCharacters(b.[Medical Suppress Indicator]) as 'MedicalSuppressIndicator',
	dbo.RemoveNonNumericCharacters(b.[Number of HCPCS Associated With Medical Services]) as 'NumberOfHCPCSAssociatedWithMedicalServices',
	dbo.RemoveNonNumericCharacters(b.[Number of Medical Services]) as 'NumberofMedical Services',
	dbo.RemoveNonNumericCharacters(b.[Number of Medicare Beneficiaries With Medical Services]) as 'NumberOfMedicareBeneficiariesWithMedicalServices',
	dbo.RemoveNonNumericCharacters(b.[Total Medical Submitted Charge Amount]) as 'TotalMedicalSubmittedChargeAmount',
	dbo.RemoveNonNumericCharacters(b.[Total Medical Medicare Allowed Amount]) as 'TotalMedicalMedicareAllowedAmount',
	dbo.RemoveNonNumericCharacters(b.[Total Medical Medicare Payment Amount]) as 'TotaMedicalMedicarePaymentAmount',
	dbo.RemoveNonNumericCharacters(b.[Average Age of Beneficiaries]) as 'AverageAgeOfBeneficiaries',
	dbo.RemoveNonNumericCharacters(b.[Number of Beneficiaries Age 65 to 74]) as 'NumberOfBeneficiaries_Age_65_To_74',
	dbo.RemoveNonNumericCharacters(b.[Number of Beneficiaries Age 75 to 84]) as 'NumberOfBeneficiaries_Age_75_ To_84',
	dbo.RemoveNonNumericCharacters(b.[Number of Beneficiaries Age Greater 84]) as 'NumberOfBeneficiaries_Age_ Greater_84',
	dbo.RemoveNonNumericCharacters(b.[Number of Female Beneficiaries]) as 'NumberOfFemaleBeneficiaries',
	dbo.RemoveNonNumericCharacters(b.[Number of Black or African American Beneficiaries]) as 'NumberOfBlackOrAfricanAmerican_Beneficiaries',
	dbo.RemoveNonNumericCharacters(b.[Number of Asian Pacific Islander Beneficiaries]) as 'NumberOfAsianPacificIslander_ Beneficiaries',
	dbo.RemoveNonNumericCharacters(b.[Number of Hispanic Beneficiaries]) as 'NumberOfHispanic_Beneficiaries',
	dbo.RemoveNonNumericCharacters(b.[Number of American Indian Alaska Native Beneficiaries]) as 'NumberOfAmerican Indian_AlaskaNative_Beneficiaries',
	dbo.RemoveNonNumericCharacters(b.[Number of Beneficiaries With Race Not Elsewhere Classified]) as 'NumberOfBeneficiaries_WithRaceNotElsewhereClassified',
	dbo.RemoveNonNumericCharacters(b.[Number of Beneficiaries With Medicare Only Entitlement]) as 'NumberOfBeneficiaries_WithMedicareOnlyEntitlement',
	dbo.RemoveNonNumericCharacters(b.[Number of Beneficiaries With Medicare & Medicaid Entitlement]) as 'NumberOfBeneficiaries_WithMedicare_MedicaidEntitlement',
	dbo.RemoveNonNumericCharacters(b.[Percent (%) of Beneficiaries Identified With Atrial Fibrillation]) as 'Percent_Of_BeneficiariesIdentifiedWithAtrialFibrillation',
	dbo.RemoveNonNumericCharacters(b.[Percent (%) of Beneficiaries Identified With Asthma]) as 'Percent_Of_BeneficiariesIdentifiedWithAsthma',
	dbo.RemoveNonNumericCharacters(b.[Percent (%) of Beneficiaries Identified With Cancer]) as 'Percent_Of_BeneficiariesIdentifiedWithCancer',
	dbo.RemoveNonNumericCharacters(b.[Percent (%) of Beneficiaries Identified With Heart Failure]) as 'Percent_Of_Beneficiaries IdentifiedWithHeartFailure',
	dbo.RemoveNonNumericCharacters(b.[Percent (%) of Beneficiaries Identified With Chronic Kidney Disease]) as 'Percent_Of_BeneficiariesIdentifiedWithChronicKidneyDisease',
	dbo.RemoveNonNumericCharacters(b.[Percent (%) of Beneficiaries Identified With Chronic Obstructive Pulmonary Disease]) as 'Percent_Of_BeneficiariesIdentifiedWithChronicObstructivePulmonaryDisease',
	dbo.RemoveNonNumericCharacters(b.[Percent (%) of Beneficiaries Identified With Depression]) as 'Percent_Of_BeneficiariesIdentifiedWithDepression',
	dbo.RemoveNonNumericCharacters(b.[Percent (%) of Beneficiaries Identified With Diabetes]) as 'Percent_Of_BeneficiariesIdentifiedWithDiabetes',
	dbo.RemoveNonNumericCharacters(b.[Percent (%) of Beneficiaries Identified With Hyperlipidemia]) as 'Percent_Of_BeneficiariesIdentifiedWithHyperlipidemia',
	dbo.RemoveNonNumericCharacters(b.[Percent (%) of Beneficiaries Identified With Hypertension]) as 'BeneficiariesIdentifiedWithHypertension',
	dbo.RemoveNonNumericCharacters(b.[Percent (%) of Beneficiaries Identified With Ischemic Heart Disease]) as 'BeneficiariesIdentifiedWithIschemicHeartDisease',
	dbo.RemoveNonNumericCharacters(b.[Percent (%) of Beneficiaries Identified With Osteoporosis]) as 'Percent_Of_BeneficiariesIdentifiedWithOsteoporosis',
	dbo.RemoveNonNumericCharacters(b.[Percent (%) of Beneficiaries Identified With Rheumatoid Arthritis   Osteoarthritis]) as 'Percent_Of_BeneficiariesIdentifiedWithRheumatoidArthritis_ Osteoarthritis',
	dbo.RemoveNonNumericCharacters(b.[Percent (%) of Beneficiaries Identified With Schizophrenia   Other Psychotic Disorders]) as 'Percent_Of_BeneficiariesIdentifiedWithSchizophreniaOtherPsychoticDisorders',
	dbo.RemoveNonNumericCharacters(b.[Percent (%) of Beneficiaries Identified With Stroke]) as 'Percent_Of_BeneficiariesIdentifiedWithStroke',
	dbo.RemoveNonNumericCharacters(b.[Number of Beneficiaries Age Less than 65]) as 'NumberOfBeneficiaries_AgeLess_ 65',
	dbo.RemoveNonNumericCharacters(b.[Number of Male Beneficiaries]) as 'NumberOfMaleBeneficiaries',
	dbo.RemoveNonNumericCharacters(b.[Number of Non-Hispanic White Beneficiaries]) as 'NumberOfNon-HispanicWhite_Beneficiaries',
	dbo.RemoveNonNumericCharacters(b.[Percent (%) of Beneficiaries Identified With Alzheimer’s Disease or Dementia]) as 'Percent_Of_BeneficiariesIdentifiedWithAlzheimersDisease_Or_Dementia',
	b.[Year] as 'RecordedYear'
into STG_MedicarePhyscianAndSupplier_Formatted
from dbo.STG_MedicarePhyscianAndSupplier_Formatting b;


----creating Lookup_ProviderType
select NPI,PROVIDER_TYPE_CD as 'ProviderTypeCode', PROVIDER_TYPE_DESC as 'ProviderTypeDescription' into Lookup_ProviderType_Consolidated
from STG_BaseProviderEnrollment 
group by NPI,PROVIDER_TYPE_CD, PROVIDER_TYPE_DESC

--Creation ProviderName Table
select row_number() over (order by FirstName, LastName, MiddleName) as NameID, FirstName, LastName, MiddleName into ProviderName
from STG_MedicarePhysicianAndSupplier_LookedUp_Transformation
group by FirstName, LastName, MiddleName;

