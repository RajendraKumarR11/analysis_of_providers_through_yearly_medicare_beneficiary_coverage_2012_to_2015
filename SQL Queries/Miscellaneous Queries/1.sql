select count(*)
from STG_MedicarePhyscianAndSupplier
where year = '2016';


DELETE FROM STG_MedicarePhyscianAndSupplier WHERE year ='2014';

select distinct year 
from STG_MedicarePhyscianAndSupplier


select count(*)
from STG_BaseProviderEnrollment;
--In table - 1888790
--From File - 2349910

select count(*)
from STG_OrderAndReferring;
--In Table - 3126044/1563022
--From File - 1563022


delete from STG_OrderAndReferring;


select Top 10 *
from STG_BaseProviderEnrollment;


select row_number() over (order by NPI) as EnrollmentNPI
--into Lookup_Enrollment 
from STG_BaseProviderEnrollment
group by NPI;

select row_number() over (order by CredentialType) as CredentialType_ID, CredentialType into Lookup_CredentialType from Sample_Health_Care_Provider_Credential_Data
group by CredentialType;


select *
from STG_BaseProviderEnrollment
where NPI = 1144386145;

--1609380120
--1427487917
--ENRLMT_ID

select ENRLMT_ID,count(*) as 'RecordNos'
from STG_BaseProviderEnrollment
group by ENRLMT_ID
having Count(*)> 1;

select row_number() over (order by CredentialType) as CredentialType_ID, CredentialType into Lookup_CredentialType from Sample_Health_Care_Provider_Credential_Data
group by CredentialType;


select row_number() over (order by ENRLMT_ID) as EnrolmentID
--into Lookup_Enrolment 
from STG_BaseProviderEnrollment
group by ENRLMT_ID
--1888790 (E,N)
--1888790

--select *, state + '-' + cast(RIGHT(100 + (row_number() over (partition by state order by au_id desc)),2) as char(10)) as idcol
--from authors
--order by 10
-------------------------------------------------------------------------------------------Queries to be considered----------------------
---Lookup_Enrollment
select row_number() over (order by ENRLMT_ID) as EnrollmentID, NPI into Lookup_Enrollment
from STG_BaseProviderEnrollment
group by ENRLMT_ID, NPI


--Lookup_
select NPI, DME as 'DMEPOSClaim_IND', HHA as 'HHAAClaim_IND' into Lookup_OrderEligibility
from STG_OrderAndReferring
group by NPI, DME, HHA
--1563022

select * 
from Lookup_OrderEligibility;

select *
from Lookup_Enrollment;

ALTER TABLE table_name
ALTER COLUMN column_name datatype;


ALTER TABLE Lookup_Enrollment
ALTER COLUMN EnrollmentID int;

ALTER TABLE Lookup_Enrollment
ALTER COLUMN NPI int;


ALTER TABLE Lookup_OrderEligibility
--ALTER COLUMN NPI int;
--ALTER COLUMN DMEPOSClaim_IND varchar(2);
ALTER COLUMN HHAClaim_IND varchar(2);



select HHAClaim_IND, count(*)
from Lookup_OrderEligibility
group by HHAAClaim_IND;



--33-D4
--14-67
select PROVIDER_TYPE_CD, PROVIDER_TYPE_DESC
from STG_BaseProviderEnrollment
where PROVIDER_TYPE_CD = '14-67'


select PROVIDER_TYPE_CD, Count(*)
from STG_BaseProviderEnrollment
group by PROVIDER_TYPE_CD

----creating Lookup_ProviderType
select PROVIDER_TYPE_CD as 'ProviderTypeCode', PROVIDER_TYPE_DESC as 'ProviderTypeDescription' into Lookup_ProviderType
from STG_BaseProviderEnrollment 
group by PROVIDER_TYPE_CD, PROVIDER_TYPE_DESC
;

ALTER table Lookup_ProviderTypeCode
ALTER COLUMN ProviderTypeCode varchar(10)




---creating sample table
CREATE TABLE [STG_Sample] (
   
    [NPI] int,
    [LastName] varchar(100),
    [FirstName] varchar(50),
    [MiddleName] varchar(20),
    [CredentialType] varchar(50),
    [Gender] varchar(10),
    [EntityType] varchar(10),
    [AddressLine1] varchar(70),
    [AddressLine2] varchar(70),
    [CityName] varchar(50),
    [ZIPCode] varchar(30),
    [StateCode] varchar(10),
    [CountryCode] varchar(10),
    [ProviderTypeDescription] varchar(70),
    [MedicareParticipationIndicator] varchar(10),
    [NumberOfHCPCS] int,
    [NumberOfServices] int,
    [NumberOfMedicareBeneficiaries] int,
    [TotalMedicareAllowedAmount] decimal,
    [TotalMedicarePaymentAmount] decimal,
    [DrugSupressIndicator] varchar(10),
    [NumberOfHCPCSAssociatedWithDrugServices] int,
    [NumberOfDrugServices] int,
    [NumberOfMedicareBeneficiariesWithDrugServices] int,
    [TotalDrugSubmittedChargeAmount] decimal,
    [TotalDrugMedicareAllowedAmount] decimal,
    [TotalDrugMedicarePaymentAmount] decimal,
    [MedicalSuppressIndicator] varchar(10),
    [NumberOfHCPCSAssociatedWithMedicalServices] int,
    [NumberofMedical Services] int,
    [NumberOfMedicareBeneficiariesWithMedicalServices] int,
    [TotalMedicalSubmittedChargeAmount] decimal,
    [TotalMedicalMedicareAllowedAmount] decimal,
    [TotaMedicalMedicarePaymentAmount] decimal,
    [AverageAgeOfBeneficiaries] int,
    [NumberOfBeneficiaries_Age_65_To_74] int,
    [NumberOfBeneficiaries_Age_75_ To_84] int,
    [NumberOfBeneficiaries_Age_ Greater_84] int,
    [NumberOfFemaleBeneficiaries] int,
    [NumberOfBlackOrAfricanAmerican_Beneficiaries] int,
    [NumberOfAsianPacificIslander_ Beneficiaries] int,
    [NumberOfHispanic_Beneficiaries] int,
    [NumberOfAmerican Indian_AlaskaNative_Beneficiaries] int,
    [NumberOfBeneficiaries_WithRaceNotElsewhereClassified] int,
    [NumberOfBeneficiaries_WithMedicareOnlyEntitlement] int,
    [NumberOfBeneficiaries_WithMedicare_MedicaidEntitlement] int,
    [Percent_Of_BeneficiariesIdentifiedWithAtrialFibrillation] int,
    [Percent_Of_BeneficiariesIdentifiedWithAsthma] int,
    [Percent_Of_BeneficiariesIdentifiedWithCancer] int,
    [Percent_Of_Beneficiaries IdentifiedWithHeartFailure] int,
    [Percent_Of_BeneficiariesIdentifiedWithChronicKidneyDisease] int,
    [Percent_Of_BeneficiariesIdentifiedWithChronicObstructivePulmonaryDisease] int,
    [Percent_Of_BeneficiariesIdentifiedWithDepression] int,
    [Percent_Of_BeneficiariesIdentifiedWithDiabetes] int,
    [Percent_Of_BeneficiariesIdentifiedWithHyperlipidemia] int,
    [Percent_Of_BeneficiariesIdentifiedWithHypertension] int,
    [Percent_Of_BeneficiariesIdentifiedWithIschemicHeartDisease] int,
    [Percent_Of_BeneficiariesIdentifiedWithOsteoporosis] int,
    [Percent_Of_BeneficiariesIdentifiedWithRheumatoidArthritis_ Osteoarthritis] int,
    [Percent_Of_BeneficiariesIdentifiedWithSchizophreniaOtherPsychoticDisorders] int,
    [Percent_Of_BeneficiariesIdentifiedWithStroke] int,
    [NumberOfBeneficiaries_AgeLess_ 65] int,
    [NumberOfMaleBeneficiaries] int,
    [NumberOfNon-HispanicWhite_Beneficiaries] int,
    [Percent_Of_BeneficiariesIdentifiedWithAlzheimersDisease_Or_Dementia] int,
    [RecordedYear] nvarchar(4),
    [TotalSubmittedChargeAmount] decimal
)

--1558567750
--1558567677



select *
from STG_MedicarePhyscianAndSupplier
where year = '2015' and [National Provider Identifier]= '1568478972';


--588163
--593787


select count(*)
from STG_MedicarePhyscianAndSupplier
where year = '2015';
--and [National Provider Identifier]= '1568478972';


select count(*)
from STG_MedicarePhyscianAndSupplier_DataConverted;

delete from STG_MedicarePhyscianAndSupplier_DataConverted;

--633787

ALTER TABLE STG_MedicarePhyscianAndSupplier_DataConverted
ALTER COLUMN [MedicareParticipationIndicator] varchar(255);

ALTER TABLE STG_MedicarePhyscianAndSupplier_DataConverted
ALTER COLUMN [StateCode] varchar(255);

ALTER TABLE STG_MedicarePhyscianAndSupplier_DataConverted
ALTER COLUMN [NumberOfHCPCS] varchar(255);


delete from STG_MedicarePhyscianAndSupplier_DataConverted;

ALTER TABLE STG_MedicarePhyscianAndSupplier_DataConverted
ALTER COLUMN [CountryCode] varchar(255);

ALTER TABLE STG_MedicarePhyscianAndSupplier_DataConverted



ALTER TABLE STG_MedicarePhyscianAndSupplier_DataConverted
ALTER COLUMN [CountryCode] varchar(255);

ALTER TABLE STG_MedicarePhyscianAndSupplier_DataConverted
ALTER COLUMN [CountryCode] varchar(255);

ALTER TABLE STG_MedicarePhyscianAndSupplier_DataConverted
ALTER COLUMN [CountryCode] varchar(255);
ALTER COLUMN [ZIPCode] varchar(255);

ALTER TABLE STG_MedicarePhyscianAndSupplier_DataConverted
ALTER COLUMN [AddressLine1] varchar(255);


ALTER TABLE STG_MedicarePhyscianAndSupplier_DataConverted
ALTER COLUMN [AddressLine2] varchar(255);

ALTER TABLE STG_MedicarePhyscianAndSupplier_DataConverted
ALTER COLUMN [CityName] varchar(255);


ALTER TABLE STG_MedicarePhyscianAndSupplier_DataConverted
ALTER COLUMN [EntityType] varchar(100);

ALTER TABLE STG_MedicarePhyscianAndSupplier_DataConverted
ALTER COLUMN [FirstName] varchar(100);

ALTER TABLE STG_MedicarePhyscianAndSupplier_DataConverted
ALTER COLUMN [MiddleName] varchar(50);


select count(*)
from STG_MedicarePhyscianAndSupplier_DataConverted;

ALTER TABLE STG_MedicarePhyscianAndSupplier_DataConverted
ALTER COLUMN [CityName] varchar(255);

----------------------------------------------


ALTER TABLE STG_MedicarePhyscianAndSupplier_DataConverted
ALTER COLUMN [NumberOfAmerican Indian_AlaskaNative_Beneficiaries] varchar(50);

ALTER TABLE STG_MedicarePhyscianAndSupplier_DataConverted
ALTER COLUMN [NumberOfBeneficiaries_Age_ Greater_84] varchar(50);


ALTER TABLE STG_MedicarePhyscianAndSupplier_DataConverted
ALTER COLUMN [NumberOfBeneficiaries_Age_65_To_74] varchar(50);


ALTER TABLE STG_MedicarePhyscianAndSupplier_DataConverted
ALTER COLUMN [NumberOfBeneficiaries_Age_75_ To_84] varchar(50);

ALTER TABLE STG_MedicarePhyscianAndSupplier_DataConverted
ALTER COLUMN [NumberOfBeneficiaries_AgeLess_ 65] varchar(50);

ALTER TABLE STG_MedicarePhyscianAndSupplier_DataConverted
ALTER COLUMN [NumberOfBeneficiaries_WithMedicare_MedicaidEntitlement] varchar(50);

ALTER TABLE STG_MedicarePhyscianAndSupplier_DataConverted
ALTER COLUMN [NumberOfBeneficiaries_WithMedicareOnlyEntitlement] varchar(50);

ALTER TABLE STG_MedicarePhyscianAndSupplier_DataConverted
ALTER COLUMN [NumberOfBeneficiaries_WithRaceNotElsewhereClassified] varchar(50);

ALTER TABLE STG_MedicarePhyscianAndSupplier_DataConverted
ALTER COLUMN [NumberOfBlackOrAfricanAmerican_Beneficiaries] varchar(50);

ALTER TABLE STG_MedicarePhyscianAndSupplier_DataConverted
ALTER COLUMN [NumberOfBlackOrAfricanAmerican_Beneficiaries] varchar(50);

ALTER TABLE STG_MedicarePhyscianAndSupplier_DataConverted
ALTER COLUMN [NumberOfDrugServices] varchar(50);

ALTER TABLE STG_MedicarePhyscianAndSupplier_DataConverted
ALTER COLUMN [NumberOfFemaleBeneficiaries] varchar(50);

ALTER TABLE STG_MedicarePhyscianAndSupplier_DataConverted
ALTER COLUMN [NumberOfHCPCSAssociatedWithDrugServices] varchar(50);

ALTER TABLE STG_MedicarePhyscianAndSupplier_DataConverted
ALTER COLUMN [NumberOfHCPCSAssociatedWithMedicalServices] varchar(50);

ALTER TABLE STG_MedicarePhyscianAndSupplier_DataConverted
ALTER COLUMN [NumberOfHispanic_Beneficiaries] varchar(50);

ALTER TABLE STG_MedicarePhyscianAndSupplier_DataConverted
ALTER COLUMN [NumberOfMaleBeneficiaries] varchar(50);

ALTER TABLE STG_MedicarePhyscianAndSupplier_DataConverted
ALTER COLUMN [NumberofMedical Services] varchar(50);

ALTER TABLE STG_MedicarePhyscianAndSupplier_DataConverted
ALTER COLUMN [NumberOfMedicareBeneficiaries] varchar(50);

ALTER TABLE STG_MedicarePhyscianAndSupplier_DataConverted
ALTER COLUMN [NumberOfMedicareBeneficiariesWithDrugServices] varchar(50);

ALTER TABLE STG_MedicarePhyscianAndSupplier_DataConverted
ALTER COLUMN [NumberOfMedicareBeneficiariesWithMedicalServices] varchar(50);

ALTER TABLE STG_MedicarePhyscianAndSupplier_DataConverted
ALTER COLUMN [NumberOfNon-HispanicWhite_Beneficiaries] varchar(50);

ALTER TABLE STG_MedicarePhyscianAndSupplier_DataConverted
ALTER COLUMN [NumberOfServices] varchar(100);

ALTER TABLE STG_MedicarePhyscianAndSupplier_DataConverted
ALTER COLUMN [Percent_Of_Beneficiaries IdentifiedWithHeartFailure] varchar(50);

ALTER TABLE STG_MedicarePhyscianAndSupplier_DataConverted
ALTER COLUMN [Percent_Of_BeneficiariesIdentifiedWithAlzheimersDisease_Or_Dementia] varchar(50);

ALTER TABLE STG_MedicarePhyscianAndSupplier_DataConverted
ALTER COLUMN [Percent_Of_BeneficiariesIdentifiedWithAsthma] varchar(50);

ALTER TABLE STG_MedicarePhyscianAndSupplier_DataConverted
ALTER COLUMN [Percent_Of_BeneficiariesIdentifiedWithAtrialFibrillation] varchar(50);

ALTER TABLE STG_MedicarePhyscianAndSupplier_DataConverted
ALTER COLUMN [Percent_Of_BeneficiariesIdentifiedWithCancer] varchar(50);

ALTER TABLE STG_MedicarePhyscianAndSupplier_DataConverted
ALTER COLUMN [Percent_Of_BeneficiariesIdentifiedWithChronicKidneyDisease] varchar(50);

ALTER TABLE STG_MedicarePhyscianAndSupplier_DataConverted
ALTER COLUMN [Percent_Of_BeneficiariesIdentifiedWithDepression] varchar(50);

ALTER TABLE STG_MedicarePhyscianAndSupplier_DataConverted
ALTER COLUMN [Percent_Of_BeneficiariesIdentifiedWithDiabetes]	varchar(50);

ALTER TABLE STG_MedicarePhyscianAndSupplier_DataConverted
ALTER COLUMN [Percent_Of_BeneficiariesIdentifiedWithHyperlipidemia] varchar(50);

ALTER TABLE STG_MedicarePhyscianAndSupplier_DataConverted
ALTER COLUMN [Percent_Of_BeneficiariesIdentifiedWithHypertension] varchar(50);

ALTER TABLE STG_MedicarePhyscianAndSupplier_DataConverted
ALTER COLUMN [Percent_Of_BeneficiariesIdentifiedWithIschemicHeartDisease] varchar(50);

ALTER TABLE STG_MedicarePhyscianAndSupplier_DataConverted
ALTER COLUMN [Percent_Of_BeneficiariesIdentifiedWithOsteoporosis] varchar(50);

ALTER TABLE STG_MedicarePhyscianAndSupplier_DataConverted
ALTER COLUMN [Percent_Of_BeneficiariesIdentifiedWithRheumatoidArthritis_ Osteoarthritis] varchar(50);

ALTER TABLE STG_MedicarePhyscianAndSupplier_DataConverted
ALTER COLUMN [Percent_Of_BeneficiariesIdentifiedWithSchizophreniaOtherPsychoticDisorders] varchar(50);


ALTER TABLE STG_MedicarePhyscianAndSupplier_DataConverted
ALTER COLUMN [Percent_Of_BeneficiariesIdentifiedWithStroke] varchar(50);

		Copy of NumberOfAmerican Indian_AlaskaNative_Beneficiaries		string [DT_STR]		50						1252  (ANSI - Latin I)
NumberOfAsianPacificIslander_ Beneficiaries		Copy of NumberOfAsianPacificIslander_ Beneficiaries		string [DT_STR]		50						1252  (ANSI - Latin I)
NumberOfBeneficiaries_Age_ Greater_84		Copy of NumberOfBeneficiaries_Age_ Greater_84		string [DT_STR]		50						1252  (ANSI - Latin I)
NumberOfBeneficiaries_Age_65_To_74		Copy of NumberOfBeneficiaries_Age_65_To_74		string [DT_STR]		50						1252  (ANSI - Latin I)
NumberOfBeneficiaries_Age_75_ To_84		Copy of NumberOfBeneficiaries_Age_75_ To_84		string [DT_STR]		50						1252  (ANSI - Latin I)
NumberOfBeneficiaries_AgeLess_ 65		Copy of NumberOfBeneficiaries_AgeLess_ 65		string [DT_STR]		50						1252  (ANSI - Latin I)
NumberOfBeneficiaries_WithMedicare_MedicaidEntitlement		Copy of NumberOfBeneficiaries_WithMedicare_MedicaidEntitlement		string [DT_STR]		50						1252  (ANSI - Latin I)
NumberOfBeneficiaries_WithMedicareOnlyEntitlement		Copy of NumberOfBeneficiaries_WithMedicareOnlyEntitlement		string [DT_STR]		50						1252  (ANSI - Latin I)
NumberOfBeneficiaries_WithRaceNotElsewhereClassified		Copy of NumberOfBeneficiaries_WithRaceNotElsewhereClassified		string [DT_STR]		50						1252  (ANSI - Latin I)
NumberOfBlackOrAfricanAmerican_Beneficiaries		Copy of NumberOfBlackOrAfricanAmerican_Beneficiaries		string [DT_STR]		50						1252  (ANSI - Latin I)
NumberOfDrugServices		Copy of NumberOfDrugServices		string [DT_STR]		50						1252  (ANSI - Latin I)
NumberOfFemaleBeneficiaries		Copy of NumberOfFemaleBeneficiaries		string [DT_STR]		50						1252  (ANSI - Latin I)
NumberOfHCPCS		Copy of NumberOfHCPCS		string [DT_STR]		255						1252  (ANSI - Latin I)
NumberOfHCPCSAssociatedWithDrugServices		Copy of NumberOfHCPCSAssociatedWithDrugServices		string [DT_STR]		50						1252  (ANSI - Latin I)
NumberOfHCPCSAssociatedWithMedicalServices		Copy of NumberOfHCPCSAssociatedWithMedicalServices		string [DT_STR]		50						1252  (ANSI - Latin I)
NumberOfHispanic_Beneficiaries		Copy of NumberOfHispanic_Beneficiaries		string [DT_STR]		50						1252  (ANSI - Latin I)
NumberOfMaleBeneficiaries		Copy of NumberOfMaleBeneficiaries		string [DT_STR]		50						1252  (ANSI - Latin I)
NumberofMedical Services		Copy of NumberofMedical Services		string [DT_STR]		50						1252  (ANSI - Latin I)
NumberOfMedicareBeneficiaries		Copy of NumberOfMedicareBeneficiaries		string [DT_STR]		50						1252  (ANSI - Latin I)
NumberOfMedicareBeneficiariesWithDrugServices		Copy of NumberOfMedicareBeneficiariesWithDrugServices		string [DT_STR]		50						1252  (ANSI - Latin I)
NumberOfMedicareBeneficiariesWithMedicalServices		Copy of NumberOfMedicareBeneficiariesWithMedicalServices		string [DT_STR]		50						1252  (ANSI - Latin I)
NumberOfNon-HispanicWhite_Beneficiaries		Copy of NumberOfNon-HispanicWhite_Beneficiaries		string [DT_STR]		50						1252  (ANSI - Latin I)
NumberOfServices		Copy of NumberOfServices		string [DT_STR]		100						1252  (ANSI - Latin I)
Percent_Of_Beneficiaries IdentifiedWithHeartFailure		Copy of Percent_Of_Beneficiaries IdentifiedWithHeartFailure		string [DT_STR]		50						1252  (ANSI - Latin I)
Percent_Of_BeneficiariesIdentifiedWithAlzheimersDisease_Or_Dementia		Copy of Percent_Of_BeneficiariesIdentifiedWithAlzheimersDisease_Or_Dementia		string [DT_STR]		50						1252  (ANSI - Latin I)
Percent_Of_BeneficiariesIdentifiedWithAsthma		Copy of Percent_Of_BeneficiariesIdentifiedWithAsthma		string [DT_STR]		50						1252  (ANSI - Latin I)
Percent_Of_BeneficiariesIdentifiedWithAtrialFibrillation		Copy of Percent_Of_BeneficiariesIdentifiedWithAtrialFibrillation		string [DT_STR]		50						1252  (ANSI - Latin I)
Percent_Of_BeneficiariesIdentifiedWithCancer		Copy of Percent_Of_BeneficiariesIdentifiedWithCancer		string [DT_STR]		50						1252  (ANSI - Latin I)
Percent_Of_BeneficiariesIdentifiedWithChronicKidneyDisease		Copy of Percent_Of_BeneficiariesIdentifiedWithChronicKidneyDisease		string [DT_STR]		50						1252  (ANSI - Latin I)
Percent_Of_BeneficiariesIdentifiedWithChronicObstructivePulmonaryDisease		Copy of Percent_Of_BeneficiariesIdentifiedWithChronicObstructivePulmonaryDisease		string [DT_STR]		50						1252  (ANSI - Latin I)
Percent_Of_BeneficiariesIdentifiedWithDepression		Copy of Percent_Of_BeneficiariesIdentifiedWithDepression		string [DT_STR]		50						1252  (ANSI - Latin I)
Percent_Of_BeneficiariesIdentifiedWithDiabetes		Copy of Percent_Of_BeneficiariesIdentifiedWithDiabetes		string [DT_STR]		50						1252  (ANSI - Latin I)
Percent_Of_BeneficiariesIdentifiedWithHyperlipidemia		Copy of Percent_Of_BeneficiariesIdentifiedWithHyperlipidemia		string [DT_STR]		50						1252  (ANSI - Latin I)
Percent_Of_BeneficiariesIdentifiedWithHypertension		Copy of Percent_Of_BeneficiariesIdentifiedWithHypertension		string [DT_STR]		50						1252  (ANSI - Latin I)
Percent_Of_BeneficiariesIdentifiedWithIschemicHeartDisease		Copy of Percent_Of_BeneficiariesIdentifiedWithIschemicHeartDisease		string [DT_STR]		50						1252  (ANSI - Latin I)
Percent_Of_BeneficiariesIdentifiedWithOsteoporosis		Copy of Percent_Of_BeneficiariesIdentifiedWithOsteoporosis		string [DT_STR]		50						1252  (ANSI - Latin I)
Percent_Of_BeneficiariesIdentifiedWithRheumatoidArthritis_ Osteoarthritis		Copy of Percent_Of_BeneficiariesIdentifiedWithRheumatoidArthritis_ Osteoarthritis		string [DT_STR]		50						1252  (ANSI - Latin I)
Percent_Of_BeneficiariesIdentifiedWithSchizophreniaOtherPsychoticDisorders		Copy of Percent_Of_BeneficiariesIdentifiedWithSchizophreniaOtherPsychoticDisorders		string [DT_STR]		50						1252  (ANSI - Latin I)
Percent_Of_BeneficiariesIdentifiedWithStroke		Copy of Percent_Of_BeneficiariesIdentifiedWithStroke		string [DT_STR]		255						1252  (ANSI - Latin I)





select * into STG_MedicarePhysicianAndSupplier_DataConverted_V3
from STG_MedicarePhysicianAndSupplier_DataConverted_V1;

select count(*)
from STG_MedicarePhysicianAndSupplier_DataConverted_V1;
select count(*)
from STG_MedicarePhyscianAndSupplier;


delete from STG_MedicarePhysicianAndSupplier_DataConverted_V1;


select top 1 * into STG_TestNumberRetrieval
from STG_MedicarePhyscianAndSupplier;

CREATE FUNCTION dbo.udf_GetNumeric
(
  @strAlphaNumeric VARCHAR(256)
)
RETURNS VARCHAR(256)
AS
BEGIN
  DECLARE @intAlpha INT
  SET @intAlpha = PATINDEX('%[^0-9]%', @strAlphaNumeric)
  BEGIN
    WHILE @intAlpha > 0
    BEGIN
      SET @strAlphaNumeric = STUFF(@strAlphaNumeric, @intAlpha, 1, '' )
      SET @intAlpha = PATINDEX('%[^0-9]%', @strAlphaNumeric )
    END
  END
  RETURN ISNULL(@strAlphaNumeric,0)
END
GO

SELECT dbo.udf_GetNumeric(b.[Total Medicare Allowed Amount]) 
from STG_TestNumberRetrieval b

select * 
from STG_TestNumberRetrieval

select *
from STG_MedicarePhyscianAndSupplier a
where a.[National Provider Identifier] = '1285717678'

delete from STG_TestNumberRetrieval

select count(*)
from STG_DataConvertedSample;

select * into STG_MedicarePhyscianAndSupplier_Formatting
from STG_MedicarePhyscianAndSupplier;




select *
from STG_MedicarePhysicianAndSupplier_DataConverted_V1;



select 

	[National Provider Identifier] [varchar](max) NULL,
	[Last Name Organization Name of the Provider] [varchar](max) NULL,
	[First Name of the Provider] [varchar](max) NULL,
	[Middle Initial of the Provider] [varchar](max) NULL,
	[Credentials of the Provider] [varchar](max) NULL,
	[Gender of the Provider] [varchar](max) NULL,
	[Entity Type of the Provider] [varchar](max) NULL,
	[Street Address 1 of the Provider] [varchar](max) NULL,
	[Street Address 2 of the Provider] [varchar](max) NULL,
	[City of the Provider] [varchar](max) NULL,
	[Zip Code of the Provider] [varchar](max) NULL,
	[State Code of the Provider] [varchar](max) NULL,
	[Country Code of the Provider] [varchar](max) NULL,
	[Provider Type of the Provider] [varchar](max) NULL,
	[Medicare Participation Indicator] [varchar](max) NULL,
	[Number of HCPCS] [varchar](max) NULL,
	[Number of Services] [varchar](max) NULL,
	[Number of Medicare Beneficiaries] [varchar](max) NULL,
	[Total Submitted Charge Amount] [varchar](max) NULL,
	[Total Medicare Allowed Amount] [varchar](max) NULL,
	[Total Medicare Payment Amount] [varchar](max) NULL,
	[Drug Suppress Indicator] [varchar](max) NULL,
	[Number of HCPCS Associated With Drug Services] [varchar](max) NULL,
	[Number of Drug Services] [varchar](max) NULL,
	[Number of Medicare Beneficiaries With Drug Services] [varchar](max) NULL,
	[Total Drug Submitted Charge Amount] [varchar](max) NULL,
	[Total Drug Medicare Allowed Amount] [varchar](max) NULL,
	[Total Drug Medicare Payment Amount] [varchar](max) NULL,
	[Medical Suppress Indicator] [varchar](max) NULL,
	[Number of HCPCS Associated With Medical Services] [varchar](max) NULL,
	[Number of Medical Services] [varchar](max) NULL,
	[Number of Medicare Beneficiaries With Medical Services] [varchar](max) NULL,
	[Total Medical Submitted Charge Amount] [varchar](max) NULL,
	[Total Medical Medicare Allowed Amount] [varchar](max) NULL,
	[Total Medical Medicare Payment Amount] [varchar](max) NULL,
	[Average Age of Beneficiaries] [varchar](max) NULL,
	[Number of Beneficiaries Age 65 to 74] [varchar](max) NULL,
	[Number of Beneficiaries Age 75 to 84] [varchar](max) NULL,
	[Number of Beneficiaries Age Greater 84] [varchar](max) NULL,
	[Number of Female Beneficiaries] [varchar](max) NULL,
	[Number of Black or African American Beneficiaries] [varchar](max) NULL,
	[Number of Asian Pacific Islander Beneficiaries] [varchar](max) NULL,
	[Number of Hispanic Beneficiaries] [varchar](max) NULL,
	[Number of American Indian Alaska Native Beneficiaries] [varchar](max) NULL,
	[Number of Beneficiaries With Race Not Elsewhere Classified] [varchar](max) NULL,
	[Number of Beneficiaries With Medicare Only Entitlement] [varchar](max) NULL,
	[Number of Beneficiaries With Medicare & Medicaid Entitlement] [varchar](max) NULL,
	[Percent (%) of Beneficiaries Identified With Atrial Fibrillation] [varchar](max) NULL,
	[Percent (%) of Beneficiaries Identified With Asthma] [varchar](max) NULL,
	[Percent (%) of Beneficiaries Identified With Cancer] [varchar](max) NULL,
	[Percent (%) of Beneficiaries Identified With Heart Failure] [varchar](max) NULL,
	[Percent (%) of Beneficiaries Identified With Chronic Kidney Disease] [varchar](max) NULL,
	[Percent (%) of Beneficiaries Identified With Chronic Obstructive Pulmonary Disease] [varchar](max) NULL,
	[Percent (%) of Beneficiaries Identified With Depression] [varchar](max) NULL,
	[Percent (%) of Beneficiaries Identified With Diabetes] [varchar](max) NULL,
	[Percent (%) of Beneficiaries Identified With Hyperlipidemia] [varchar](max) NULL,
	[Percent (%) of Beneficiaries Identified With Hypertension] [varchar](max) NULL,
	[Percent (%) of Beneficiaries Identified With Ischemic Heart Disease] [varchar](max) NULL,
	[Percent (%) of Beneficiaries Identified With Osteoporosis] [varchar](max) NULL,
	[Percent (%) of Beneficiaries Identified With Rheumatoid Arthritis   Osteoarthritis] [varchar](max) NULL,
	[Percent (%) of Beneficiaries Identified With Schizophrenia   Other Psychotic Disorders] [varchar](max) NULL,
	[Percent (%) of Beneficiaries Identified With Stroke] [varchar](max) NULL,
	[Number of Beneficiaries Age Less than 65] [varchar](max) NULL,
	[Number of Male Beneficiaries] [varchar](max) NULL,
	[Number of Non-Hispanic White Beneficiaries] [varchar](max) NULL,
	[Percent (%) of Beneficiaries Identified With Alzheimer’s Disease or Dementia] [varchar](max) NULL,
	[Year] [nvarchar](4) NULL




Go
CREATE FUNCTION dbo.RemoveNonNumericCharacters 
(
@Temp VARCHAR(1000)
)
RETURNS VARCHAR(1000)

AS

BEGIN

    While PatIndex('%[^0-9]%', @Temp) > 0

        Set @Temp = Stuff(@Temp, PatIndex('%[^0-9]%', @Temp), 1, '')

    Return @Temp

END
Go
select dbo.RemoveNonNumericCharacters('1.2 SORRY NOW SOLD')




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
select dbo.RemoveNonNumericCharacters('123.4*"')
SELECT dbo.RemoveNonNumericCharacters (b.[Total Medical Submitted Charge Amount]) 
from STG_TestNumberRetrieval b


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

select count(*)
from STG_MedicarePhyscianAndSupplier_Formatted_Back;


select * into STG_MedicarePhyscianAndSupplier_Formatting
from STG_MedicarePhyscianAndSupplier;


select top 10 * into STG_TestNumberRetrieval
from STG_MedicarePhyscianAndSupplier;


select *
from STG_TestNumberRetrieval
select top 100 *
from STG_MedicarePhyscianAndSupplier_Formatted;

select *
into STG_MedicarePhyscianAndSupplier_Formatted_Backup
from STG_MedicarePhyscianAndSupplier_Formatted;


--NPI
ALTER TABLE STG_MedicarePhyscianAndSupplier_Formatted_Backup
ALTER COLUMN [NPI] int;

--[LastName]
ALTER TABLE STG_MedicarePhyscianAndSupplier_Formatted_Backup
ALTER COLUMN [LastName] varchar(100);

--FirstName
ALTER TABLE STG_MedicarePhyscianAndSupplier_Formatted_Backup
ALTER COLUMN [FirstName] varchar(100);
----------------------------------------------------------------------
--[MiddleName]
ALTER TABLE STG_MedicarePhyscianAndSupplier_Formatted_Backup
ALTER COLUMN [MiddleName] varchar(50);
--------------------------------------------------------------------

--CredentialType
ALTER TABLE STG_MedicarePhyscianAndSupplier_Formatted_Backup
ALTER COLUMN [CredentialType] varchar(50);
--------------------------------------------------------------------

--Gender
ALTER TABLE STG_MedicarePhyscianAndSupplier_Formatted_Backup
ALTER COLUMN [Gender] varchar(100);
---------------------------------------------------------------------

--EntityType
ALTER TABLE STG_MedicarePhyscianAndSupplier_Formatted_Backup
ALTER COLUMN [EntityType] varchar(100);
---------------------------------------------------------------------------

--AddressLine1
ALTER TABLE STG_MedicarePhyscianAndSupplier_Formatted_Backup
ALTER COLUMN [AddressLine1] varchar(255);
---------------------------------------------------------

--AddressLine2
ALTER TABLE STG_MedicarePhyscianAndSupplier_Formatted_Backup
ALTER COLUMN [AddressLine2] varchar(255);
----------------------------------------------------------

--CityName
ALTER TABLE STG_MedicarePhyscianAndSupplier_Formatted_Backup
ALTER COLUMN [CityName] varchar(100);
------------------------------------------------------------

--ZIPCode
ALTER TABLE STG_MedicarePhyscianAndSupplier_Formatted_Backup
ALTER COLUMN [ZIPCode] varchar(100);
-------------------------------------------------------------

--StateCode
ALTER TABLE STG_MedicarePhyscianAndSupplier_Formatted_Backup
ALTER COLUMN [StateCode] varchar(100);
----------------------------------------------------------------

--CountryCode
ALTER TABLE STG_MedicarePhyscianAndSupplier_Formatted_Backup
ALTER COLUMN [CountryCode] varchar(100);
-----------------------------------------------------------------
--ProviderTypeDescription
ALTER TABLE STG_MedicarePhyscianAndSupplier_Formatted_Backup
ALTER COLUMN [ProviderTypeDescription] varchar(70);
--------------------------------------------------------------------

--MedicareParticipationIndicator
ALTER TABLE STG_MedicarePhyscianAndSupplier_Formatted_Backup
ALTER COLUMN [MedicareParticipationIndicator] varchar(50);
---------------------------------------------------------------------

--NumberOfHCPCS
ALTER TABLE STG_MedicarePhyscianAndSupplier_Formatted_Backup
ALTER COLUMN [NumberOfHCPCS] int;
------------------------------------------------------------------------

--select ROUND (NumberOfServices,0) 
--from STG_MedicarePhyscianAndSupplier_Formatted_Backup

--ALTER TABLE STG_MedicarePhyscianAndSupplier_Formatted_Backup
--ADD NumberOfServices_ varchar(255);

UPDATE STG_MedicarePhyscianAndSupplier_Formatted_Backup
SET NumberOfServices = ROUND(NumberOfServices, 0)

--NumberOfServices
ALTER TABLE STG_MedicarePhyscianAndSupplier_Formatted_Backup
ALTER COLUMN [NumberOfServices] int;

select *
from STG_MedicarePhyscianAndSupplier_Formatted_Backup
where NumberOfServices like '3.88015e+008'

delete from STG_MedicarePhyscianAndSupplier_Formatted_Backup
where NumberOfServices like '3.88015e+008';
----------------------------------------------------------------------------
UPDATE STG_MedicarePhyscianAndSupplier_Formatted_Backup
SET NumberOfMedicareBeneficiaries = ROUND(NumberOfMedicareBeneficiaries, 0)

---NumberOfMedicareBeneficiaries
ALTER TABLE STG_MedicarePhyscianAndSupplier_Formatted_Backup
ALTER COLUMN [NumberOfMedicareBeneficiaries] int;
----------------------------------------------------------------------------------

DELETE FROM STG_MedicarePhyscianAndSupplier_Formatted_Backup
where ISNUMERIC(TotalMedicareAllowedAmount) != 1;

--TotalMedicareAllowedAmount
ALTER TABLE STG_MedicarePhyscianAndSupplier_Formatted_Backup
ALTER COLUMN [TotalMedicareAllowedAmount] decimal(18,2);
----------------------------------------------------------------------------------------
--TotalMedicarePaymentAmount
ALTER TABLE STG_MedicarePhyscianAndSupplier_Formatted_Backup
ALTER COLUMN [TotalMedicarePaymentAmount] decimal(18,2);
---------------------------------------------------------------------------------------

--DrugSupressIndicator
ALTER TABLE STG_MedicarePhyscianAndSupplier_Formatted_Backup
ALTER COLUMN [DrugSupressIndicator] varchar(10);
-----------------------------------------------------------------------------------------------
UPDATE STG_MedicarePhyscianAndSupplier_Formatted_Backup
SET NumberOfHCPCSAssociatedWithDrugServices = ROUND(NumberOfHCPCSAssociatedWithDrugServices, 0)

--NumberOfHCPCSAssociatedWithDrugServices
ALTER TABLE STG_MedicarePhyscianAndSupplier_Formatted_Backup
ALTER COLUMN [NumberOfHCPCSAssociatedWithDrugServices] int;
-------------------------------------------------------------------------------------------------
UPDATE STG_MedicarePhyscianAndSupplier_Formatted_Backup
SET NumberOfDrugServices = ROUND(NumberOfDrugServices, 0)

--NumberOfDrugServices
ALTER TABLE STG_MedicarePhyscianAndSupplier_Formatted_Backup
ALTER COLUMN [NumberOfDrugServices] int;
--------------------------------------------------------------------------------------------------
UPDATE STG_MedicarePhyscianAndSupplier_Formatted_Backup
SET NumberOfMedicareBeneficiariesWithDrugServices = ROUND(NumberOfMedicareBeneficiariesWithDrugServices, 0)

--NumberOfMedicareBeneficiariesWithDrugServices
ALTER TABLE STG_MedicarePhyscianAndSupplier_Formatted_Backup
ALTER COLUMN [NumberOfMedicareBeneficiariesWithDrugServices] int;
-------------------------------------------------------------------------------------------------------

-------------------------------***********************------------------------------
--TotalDrugSubmittedChargeAmount

--CAST(COALESCE(debit, '0') AS DECIMAL(9,2))
--SELECT CAST(ISNULL(NULLIF(Column1, ''),0) AS DECIMAL(12,2)) FROM table

UPDATE STG_MedicarePhyscianAndSupplier_Formatted_Backup
SET TotalDrugSubmittedChargeAmount = CAST(ISNULL(NULLIF(TotalDrugSubmittedChargeAmount, ''),0) AS DECIMAL(18,2));


Select count(*) FROM STG_MedicarePhyscianAndSupplier_Formatted_Backup
where ISNUMERIC(TotalDrugSubmittedChargeAmount) != 1;



ALTER TABLE STG_MedicarePhyscianAndSupplier_Formatted_Backup
ALTER COLUMN [TotalDrugSubmittedChargeAmount] decimal(18,2);

--TotalDrugMedicareAllowedAmount
Select count(*) FROM STG_MedicarePhyscianAndSupplier_Formatted_Backup
where ISNUMERIC(TotalDrugMedicareAllowedAmount) != 1;
----------------------------------------------------------------------------

UPDATE STG_MedicarePhyscianAndSupplier_Formatted_Backup
SET [TotalDrugMedicareAllowedAmount] = CAST(ISNULL(NULLIF([TotalDrugMedicareAllowedAmount], ''),0) AS DECIMAL(18,2));

ALTER TABLE STG_MedicarePhyscianAndSupplier_Formatted_Backup
ALTER COLUMN [TotalDrugMedicareAllowedAmount] decimal(18,2);
----------------------------******************************************-----------------------------------------------------

--TotalDrugMedicarePaymentAmount

UPDATE STG_MedicarePhyscianAndSupplier_Formatted_Backup
SET [TotalDrugMedicarePaymentAmount] = CAST(ISNULL(NULLIF([TotalDrugMedicarePaymentAmount], ''),0) AS DECIMAL(18,2));

Select TotalDrugMedicarePaymentAmount,* FROM STG_MedicarePhyscianAndSupplier_Formatted_Backup
where ISNUMERIC(TotalDrugMedicarePaymentAmount) != 1;

ALTER TABLE STG_MedicarePhyscianAndSupplier_Formatted_Backup
ALTER COLUMN [TotalDrugMedicarePaymentAmount] decimal(18,2);
------------------------------------------------------------------------------------------------------------------------------------
--MedicalSuppressIndicator

UPDATE STG_MedicarePhyscianAndSupplier_Formatted_Backup
SET [MedicalSuppressIndicator] = ROUND([MedicalSuppressIndicator], 0)

ALTER TABLE STG_MedicarePhyscianAndSupplier_Formatted_Backup
ALTER COLUMN [MedicalSuppressIndicator] varchar(10);
---------------------------------------------------------------------------------------
--NumberOfHCPCSAssociatedWithMedicalServices

UPDATE STG_MedicarePhyscianAndSupplier_Formatted_Backup
SET [NumberOfHCPCSAssociatedWithMedicalServices] = ROUND([NumberOfHCPCSAssociatedWithMedicalServices], 0)

ALTER TABLE STG_MedicarePhyscianAndSupplier_Formatted_Backup
ALTER COLUMN [NumberOfHCPCSAssociatedWithMedicalServices] int;
------------------------------------------------------------------------------------------
--NumberofMedicalServices
UPDATE STG_MedicarePhyscianAndSupplier_Formatted_Backup
SET [NumberofMedical Services] = ROUND([NumberofMedical Services], 0)

ALTER TABLE STG_MedicarePhyscianAndSupplier_Formatted_Backup
ALTER COLUMN [NumberofMedical Services] int;
--------------------------------------------------------------------

--NumberOfMedicareBeneficiariesWithMedicalServices

UPDATE STG_MedicarePhyscianAndSupplier_Formatted_Backup
SET [NumberOfMedicareBeneficiariesWithMedicalServices] = ROUND([NumberOfMedicareBeneficiariesWithMedicalServices], 0)
ALTER TABLE STG_MedicarePhyscianAndSupplier_Formatted_Backup
ALTER COLUMN [NumberOfMedicareBeneficiariesWithMedicalServices] int;
-------------------------------------------------------------------------------------
--TotalMedicalSubmittedChargeAmount
--SET [TotalDrugMedicareAllowedAmount] = CAST(ISNULL(NULLIF([TotalDrugMedicareAllowedAmount], ''),0) AS DECIMAL(18,2));
UPDATE STG_MedicarePhyscianAndSupplier_Formatted_Backup
SET [TotalMedicalSubmittedChargeAmount] = CAST(ISNULL(NULLIF([TotalMedicalSubmittedChargeAmount], ''),0) AS DECIMAL(18,2));
ALTER TABLE STG_MedicarePhyscianAndSupplier_Formatted_Backup
ALTER COLUMN [TotalMedicalSubmittedChargeAmount] decimal(18,2);
--------------------------------------------------------------------------------------------------
--TotalMedicalMedicareAllowedAmount
UPDATE STG_MedicarePhyscianAndSupplier_Formatted_Backup
SET [TotalMedicalMedicareAllowedAmount] = CAST(ISNULL(NULLIF([TotalMedicalMedicareAllowedAmount], ''),0) AS DECIMAL(18,2));

ALTER TABLE STG_MedicarePhyscianAndSupplier_Formatted_Backup
ALTER COLUMN [TotalMedicalMedicareAllowedAmount] decimal(18,2);
------------------------------------------------------------------------
--TotaMedicalMedicarePaymentAmount
UPDATE STG_MedicarePhyscianAndSupplier_Formatted_Backup
SET [TotaMedicalMedicarePaymentAmount] = CAST(ISNULL(NULLIF([TotaMedicalMedicarePaymentAmount], ''),0) AS DECIMAL(18,2));

ALTER TABLE STG_MedicarePhyscianAndSupplier_Formatted_Backup
ALTER COLUMN [TotaMedicalMedicarePaymentAmount] decimal(18,2);
-------------------------------------------------------------------------------------
--AverageAgeOfBeneficiaries
ALTER TABLE STG_MedicarePhyscianAndSupplier_Formatted_Backup
ALTER COLUMN [MedicalSuppressIndicator] int;
------------------------------------------------------------------------------------

--NumberOfBeneficiaries_Age_65_To_74
UPDATE STG_MedicarePhyscianAndSupplier_Formatted_Backup
SET [NumberOfBeneficiaries_Age_65_To_74] = ROUND([NumberOfBeneficiaries_Age_65_To_74], 0)

ALTER TABLE STG_MedicarePhyscianAndSupplier_Formatted_Backup
ALTER COLUMN [NumberOfBeneficiaries_Age_65_To_74] int;
------------------------------------------------------------------------

--NumberOfBeneficiaries_Age_75_ To_84

UPDATE STG_MedicarePhyscianAndSupplier_Formatted_Backup
SET [NumberOfBeneficiaries_Age_75_ To_84] = ROUND([NumberOfBeneficiaries_Age_75_ To_84], 0)
ALTER TABLE STG_MedicarePhyscianAndSupplier_Formatted_Backup
ALTER COLUMN [NumberOfBeneficiaries_Age_75_ To_84] int;
--------------------------------------------------------------------------
--NumberOfBeneficiaries_Age_ Greater_84
UPDATE STG_MedicarePhyscianAndSupplier_Formatted_Backup
SET [NumberOfBeneficiaries_Age_ Greater_84] = ROUND([NumberOfBeneficiaries_Age_ Greater_84], 0)

ALTER TABLE STG_MedicarePhyscianAndSupplier_Formatted_Backup
ALTER COLUMN [NumberOfBeneficiaries_Age_ Greater_84] int;
-------------------------------------------------------------------------------
--NumberOfFemaleBeneficiaries
UPDATE STG_MedicarePhyscianAndSupplier_Formatted_Backup
SET [NumberOfFemaleBeneficiaries] = ROUND([NumberOfFemaleBeneficiaries], 0)

ALTER TABLE STG_MedicarePhyscianAndSupplier_Formatted_Backup
ALTER COLUMN [NumberOfFemaleBeneficiaries] int;
------------------------------------------------------------------
--NumberOfBlackOrAfricanAmerican_Beneficiaries
UPDATE STG_MedicarePhyscianAndSupplier_Formatted_Backup
SET [NumberOfBlackOrAfricanAmerican_Beneficiaries] = ROUND([NumberOfBlackOrAfricanAmerican_Beneficiaries], 0)

ALTER TABLE STG_MedicarePhyscianAndSupplier_Formatted_Backup
ALTER COLUMN [NumberOfBlackOrAfricanAmerican_Beneficiaries] int;
--------------------------------------------------------------------------
--NumberOfAsianPacificIslander_ Beneficiaries
UPDATE STG_MedicarePhyscianAndSupplier_Formatted_Backup
SET [NumberOfAsianPacificIslander_ Beneficiaries] = ROUND([NumberOfAsianPacificIslander_ Beneficiaries], 0)

ALTER TABLE STG_MedicarePhyscianAndSupplier_Formatted_Backup
ALTER COLUMN [NumberOfAsianPacificIslander_ Beneficiaries] int;
---------------------------------------------------------------------------------
--NumberOfHispanic_Beneficiaries
UPDATE STG_MedicarePhyscianAndSupplier_Formatted_Backup
SET [NumberOfHispanic_Beneficiaries] = ROUND([NumberOfHispanic_Beneficiaries], 0)

ALTER TABLE STG_MedicarePhyscianAndSupplier_Formatted_Backup
ALTER COLUMN [NumberOfHispanic_Beneficiaries] int;
-----------------------------------------------------------------------------
--NumberOfAmerican Indian_AlaskaNative_Beneficiaries
UPDATE STG_MedicarePhyscianAndSupplier_Formatted_Backup
SET [NumberOfAmerican Indian_AlaskaNative_Beneficiaries] = ROUND([NumberOfAmerican Indian_AlaskaNative_Beneficiaries], 0)

ALTER TABLE STG_MedicarePhyscianAndSupplier_Formatted_Backup
ALTER COLUMN [NumberOfAmerican Indian_AlaskaNative_Beneficiaries] int;

--------------------------------------------------------------------------------
--NumberOfBeneficiaries_WithRaceNotElsewhereClassified
UPDATE STG_MedicarePhyscianAndSupplier_Formatted_Backup
SET [NumberOfBeneficiaries_WithRaceNotElsewhereClassified] = ROUND([NumberOfBeneficiaries_WithRaceNotElsewhereClassified], 0)

ALTER TABLE STG_MedicarePhyscianAndSupplier_Formatted_Backup
ALTER COLUMN [NumberOfBeneficiaries_WithRaceNotElsewhereClassified] int;
--------------------------------------------------------------------------------------------
--NumberOfBeneficiaries_WithMedicareOnlyEntitlement
UPDATE STG_MedicarePhyscianAndSupplier_Formatted_Backup
SET [NumberOfBeneficiaries_WithMedicareOnlyEntitlement] = ROUND([NumberOfBeneficiaries_WithMedicareOnlyEntitlement], 0)

ALTER TABLE STG_MedicarePhyscianAndSupplier_Formatted_Backup
ALTER COLUMN [NumberOfBeneficiaries_WithMedicareOnlyEntitlement] int;

--NumberOfBeneficiaries_WithMedicare_MedicaidEntitlement
UPDATE STG_MedicarePhyscianAndSupplier_Formatted_Backup
SET [NumberOfBeneficiaries_WithMedicare_MedicaidEntitlement] = ROUND([NumberOfBeneficiaries_WithMedicare_MedicaidEntitlement], 0)

ALTER TABLE STG_MedicarePhyscianAndSupplier_Formatted_Backup
ALTER COLUMN [NumberOfBeneficiaries_WithMedicare_MedicaidEntitlement] int;
----------------------------------------------------------------------------
--Percent_Of_BeneficiariesIdentifiedWithAtrialFibrillation
UPDATE STG_MedicarePhyscianAndSupplier_Formatted_Backup
SET [Percent_Of_BeneficiariesIdentifiedWithAtrialFibrillation] = ROUND([Percent_Of_BeneficiariesIdentifiedWithAtrialFibrillation], 0)

ALTER TABLE STG_MedicarePhyscianAndSupplier_Formatted_Backup
ALTER COLUMN [Percent_Of_BeneficiariesIdentifiedWithAtrialFibrillation] int;
---------------------------------------------------------------------------------------
--Percent_Of_BeneficiariesIdentifiedWithAsthma
UPDATE STG_MedicarePhyscianAndSupplier_Formatted_Backup
SET [Percent_Of_BeneficiariesIdentifiedWithAsthma] = ROUND([Percent_Of_BeneficiariesIdentifiedWithAsthma], 0)

ALTER TABLE STG_MedicarePhyscianAndSupplier_Formatted_Backup
ALTER COLUMN [Percent_Of_BeneficiariesIdentifiedWithAsthma] int;
----------------------------------------------------------------------------------------------
--Percent_Of_BeneficiariesIdentifiedWithCancer
UPDATE STG_MedicarePhyscianAndSupplier_Formatted_Backup
SET [Percent_Of_BeneficiariesIdentifiedWithCancer] = ROUND([Percent_Of_BeneficiariesIdentifiedWithCancer], 0)

ALTER TABLE STG_MedicarePhyscianAndSupplier_Formatted_Backup
ALTER COLUMN [Percent_Of_BeneficiariesIdentifiedWithCancer] int;

--Percent_Of_Beneficiaries IdentifiedWithHeartFailure
UPDATE STG_MedicarePhyscianAndSupplier_Formatted_Backup
SET [Percent_Of_Beneficiaries IdentifiedWithHeartFailure] = ROUND([Percent_Of_Beneficiaries IdentifiedWithHeartFailure], 0)

ALTER TABLE STG_MedicarePhyscianAndSupplier_Formatted_Backup
ALTER COLUMN [Percent_Of_Beneficiaries IdentifiedWithHeartFailure] int;
----------------------------------------------------------------------------------------
--Percent_Of_BeneficiariesIdentifiedWithChronicKidneyDisease
UPDATE STG_MedicarePhyscianAndSupplier_Formatted_Backup
SET [Percent_Of_BeneficiariesIdentifiedWithChronicKidneyDisease] = ROUND([Percent_Of_BeneficiariesIdentifiedWithChronicKidneyDisease], 0)

ALTER TABLE STG_MedicarePhyscianAndSupplier_Formatted_Backup
ALTER COLUMN [Percent_Of_BeneficiariesIdentifiedWithChronicKidneyDisease] int;

--Percent_Of_BeneficiariesIdentifiedWithChronicObstructivePulmonaryDisease
UPDATE STG_MedicarePhyscianAndSupplier_Formatted_Backup
SET [Percent_Of_BeneficiariesIdentifiedWithChronicObstructivePulmonaryDisease] = ROUND([Percent_Of_BeneficiariesIdentifiedWithChronicObstructivePulmonaryDisease], 0)

ALTER TABLE STG_MedicarePhyscianAndSupplier_Formatted_Backup
ALTER COLUMN [Percent_Of_BeneficiariesIdentifiedWithChronicObstructivePulmonaryDisease] int;

--Percent_Of_BeneficiariesIdentifiedWithDepression
UPDATE STG_MedicarePhyscianAndSupplier_Formatted_Backup
SET [Percent_Of_BeneficiariesIdentifiedWithDepression] = ROUND([Percent_Of_BeneficiariesIdentifiedWithDepression], 0)

ALTER TABLE STG_MedicarePhyscianAndSupplier_Formatted_Backup
ALTER COLUMN [Percent_Of_BeneficiariesIdentifiedWithDepression] int;

--Percent_Of_BeneficiariesIdentifiedWithDiabetes
UPDATE STG_MedicarePhyscianAndSupplier_Formatted_Backup
SET [Percent_Of_BeneficiariesIdentifiedWithDiabetes] = ROUND([Percent_Of_BeneficiariesIdentifiedWithDiabetes], 0)

ALTER TABLE STG_MedicarePhyscianAndSupplier_Formatted_Backup
ALTER COLUMN [Percent_Of_BeneficiariesIdentifiedWithDiabetes] int;

--Percent_Of_BeneficiariesIdentifiedWithHyperlipidemia
UPDATE STG_MedicarePhyscianAndSupplier_Formatted_Backup
SET [Percent_Of_BeneficiariesIdentifiedWithHyperlipidemia] = ROUND([Percent_Of_BeneficiariesIdentifiedWithHyperlipidemia], 0)

ALTER TABLE STG_MedicarePhyscianAndSupplier_Formatted_Backup
ALTER COLUMN [Percent_Of_BeneficiariesIdentifiedWithHyperlipidemia] int;
-----------------------------------------------------------------------------------------------
--Percent_Of_BeneficiariesIdentifiedWithHypertension
UPDATE STG_MedicarePhyscianAndSupplier_Formatted_Backup
SET [BeneficiariesIdentifiedWithHypertension] = ROUND([BeneficiariesIdentifiedWithHypertension], 0)

ALTER TABLE STG_MedicarePhyscianAndSupplier_Formatted_Backup
ALTER COLUMN [BeneficiariesIdentifiedWithHypertension] int;

--Percent_Of_BeneficiariesIdentifiedWithIschemicHeartDisease
UPDATE STG_MedicarePhyscianAndSupplier_Formatted_Backup
SET [BeneficiariesIdentifiedWithIschemicHeartDisease] = ROUND([BeneficiariesIdentifiedWithIschemicHeartDisease], 0)

ALTER TABLE STG_MedicarePhyscianAndSupplier_Formatted_Backup
ALTER COLUMN [BeneficiariesIdentifiedWithIschemicHeartDisease] int;

--Percent_Of_BeneficiariesIdentifiedWithOsteoporosis
UPDATE STG_MedicarePhyscianAndSupplier_Formatted_Backup
SET [Percent_Of_BeneficiariesIdentifiedWithOsteoporosis] = ROUND([Percent_Of_BeneficiariesIdentifiedWithOsteoporosis], 0)

ALTER TABLE STG_MedicarePhyscianAndSupplier_Formatted_Backup
ALTER COLUMN [Percent_Of_BeneficiariesIdentifiedWithOsteoporosis] int;

--Percent_Of_BeneficiariesIdentifiedWithRheumatoidArthritis_ Osteoarthritis
UPDATE STG_MedicarePhyscianAndSupplier_Formatted_Backup
SET [Percent_Of_BeneficiariesIdentifiedWithRheumatoidArthritis_ Osteoarthritis] = ROUND([Percent_Of_BeneficiariesIdentifiedWithRheumatoidArthritis_ Osteoarthritis], 0)

ALTER TABLE STG_MedicarePhyscianAndSupplier_Formatted_Backup
ALTER COLUMN [Percent_Of_BeneficiariesIdentifiedWithRheumatoidArthritis_ Osteoarthritis] int;

--Percent_Of_BeneficiariesIdentifiedWithSchizophreniaOtherPsychoticDisorders
UPDATE STG_MedicarePhyscianAndSupplier_Formatted_Backup
SET [Percent_Of_BeneficiariesIdentifiedWithSchizophreniaOtherPsychoticDisorders] = ROUND([Percent_Of_BeneficiariesIdentifiedWithSchizophreniaOtherPsychoticDisorders], 0)

ALTER TABLE STG_MedicarePhyscianAndSupplier_Formatted_Backup
ALTER COLUMN [Percent_Of_BeneficiariesIdentifiedWithSchizophreniaOtherPsychoticDisorders] int;

--NumberOfBeneficiaries_AgeLess_ 65
UPDATE STG_MedicarePhyscianAndSupplier_Formatted_Backup
SET [NumberOfBeneficiaries_AgeLess_ 65] = ROUND([NumberOfBeneficiaries_AgeLess_ 65], 0)


ALTER TABLE STG_MedicarePhyscianAndSupplier_Formatted_Backup
ALTER COLUMN [NumberOfBeneficiaries_AgeLess_ 65] int;

--NumberOfMaleBeneficiaries
UPDATE STG_MedicarePhyscianAndSupplier_Formatted_Backup
SET [NumberOfMaleBeneficiaries] = ROUND([NumberOfMaleBeneficiaries], 0)

ALTER TABLE STG_MedicarePhyscianAndSupplier_Formatted_Backup
ALTER COLUMN [NumberOfMaleBeneficiaries] int;

--NumberOfNon-HispanicWhite_Beneficiaries
UPDATE STG_MedicarePhyscianAndSupplier_Formatted_Backup
SET [NumberOfNon-HispanicWhite_Beneficiaries] = ROUND([NumberOfNon-HispanicWhite_Beneficiaries], 0)

ALTER TABLE STG_MedicarePhyscianAndSupplier_Formatted_Backup
ALTER COLUMN [NumberOfNon-HispanicWhite_Beneficiaries] int;


--Percent_Of_BeneficiariesIdentifiedWithAlzheimersDisease_Or_Dementia
UPDATE STG_MedicarePhyscianAndSupplier_Formatted_Backup
SET [Percent_Of_BeneficiariesIdentifiedWithAlzheimersDisease_Or_Dementia] = ROUND([Percent_Of_BeneficiariesIdentifiedWithAlzheimersDisease_Or_Dementia], 0)

ALTER TABLE STG_MedicarePhyscianAndSupplier_Formatted_Backup
ALTER COLUMN [Percent_Of_BeneficiariesIdentifiedWithAlzheimersDisease_Or_Dementia] int;

--TotalSubmittedChargeAmount
UPDATE STG_MedicarePhyscianAndSupplier_Formatted_Backup
SET [TotalSubmittedChargeAmount] = CAST(ISNULL(NULLIF([TotalSubmittedChargeAmount], ''),0) AS DECIMAL(18,2));

ALTER TABLE STG_MedicarePhyscianAndSupplier_Formatted_Backup
ALTER COLUMN [TotalSubmittedChargeAmount] decimal(18,2);


--------------------*****************************------
------------------------

--Percent_Of_BeneficiariesIdentifiedWithStroke
UPDATE STG_MedicarePhyscianAndSupplier_Formatted_Backup
SET [Percent_Of_BeneficiariesIdentifiedWithStroke] = ROUND([Percent_Of_BeneficiariesIdentifiedWithStroke], 0)

ALTER TABLE STG_MedicarePhyscianAndSupplier_Formatted_Backup
ALTER COLUMN [Percent_Of_BeneficiariesIdentifiedWithStroke] int;

--NumberOfNon-HispanicWhite_Beneficiaries
UPDATE STG_MedicarePhyscianAndSupplier_Formatted_Backup
SET [NumberOfNon-HispanicWhite_Beneficiaries] = ROUND([NumberOfNon-HispanicWhite_Beneficiaries], 0)

ALTER TABLE STG_MedicarePhyscianAndSupplier_Formatted_Backup
ALTER COLUMN [NumberOfNon-HispanicWhite_Beneficiaries] int;
-------------------------------------------------------------------------------------------------
--AverageAgeOfBeneficiaries
UPDATE STG_MedicarePhyscianAndSupplier_Formatted_Backup
SET [AverageAgeOfBeneficiaries] = ROUND([AverageAgeOfBeneficiaries], 0)

ALTER TABLE STG_MedicarePhyscianAndSupplier_Formatted_Backup
ALTER COLUMN [AverageAgeOfBeneficiaries] int;

--NumberOfMedicareBeneficiariesWithMedicalServices
UPDATE STG_MedicarePhyscianAndSupplier_Formatted_Backup
SET [NumberOfMedicareBeneficiariesWithMedicalServices] = ROUND([NumberOfMedicareBeneficiariesWithMedicalServices], 0)

ALTER TABLE STG_MedicarePhyscianAndSupplier_Formatted_Backup
ALTER COLUMN [NumberOfMedicareBeneficiariesWithMedicalServices] int;


--NumberOfDrugServices
UPDATE STG_MedicarePhyscianAndSupplier_Formatted_Backup
SET [NumberOfDrugServices] = ROUND([NumberOfDrugServices], 0)

ALTER TABLE STG_MedicarePhyscianAndSupplier_Formatted_Backup
ALTER COLUMN [NumberOfDrugServices] int;

--TotalMedicalSubmittedChargeAmount


UPDATE STG_MedicarePhyscianAndSupplier_Formatted_Backup
SET [TotalMedicalSubmittedChargeAmount] = CAST(ISNULL(NULLIF([TotalMedicalSubmittedChargeAmount], ''),0) AS DECIMAL(18,2));

ALTER TABLE STG_MedicarePhyscianAndSupplier_Formatted_Backup
ALTER COLUMN [TotalMedicalSubmittedChargeAmount] decimal(18,2);


SELECT CAST(CAST ('888.67' AS NUMERIC) AS INT);
SELECT CAST(CAST ('888.6789' AS NUMERIC(19,4)) AS INT);






ALTER TABLE STG_MedicarePhysicianAndSupplier_Lookup_Processed
ALTER COLUMN [StateCode] varchar(100);







ALTER TABLE STG_MedicarePhysicianAndSupplier_Lookup_Processed
ALTER COLUMN [CountryCode] varchar(100);


ALTER TABLE ERR_MedicarePhysicianAndSupplier
ALTER COLUMN [StateCode] varchar(100);

ALTER TABLE ERR_MedicarePhysicianAndSupplier
ALTER COLUMN [CountryCode] varchar(100);


select top 1 b.[NumberofMedical Services]
from STG_MedicarePhyscianAndSupplier_Formatted_Backup b;




select count(*)
from STG_MedicarePhysicianAndSupplier_DataConverted_V1 
where LastName = '';

select top 10 *
from STG_MedicarePhysicianAndSupplier_DataConverted_V1;


select top 100 NumberOfDrugServices
from STG_MedicarePhysicianAndSupplier_DataConverted_V1;

UPDATE STG_MedicarePhyscianAndSupplier_Formatted_Backup
SET [NumberOfDrugServices] = ROUND([NumberOfDrugServices], 0)

ALTER TABLE STG_MedicarePhyscianAndSupplier_Formatted_Backup
ALTER COLUMN [NumberOfDrugServices] int;



DELETE FROM STG_MedicarePhyscianAndSupplier_Formatted_Backup
where ISNUMERIC(TotalMedicareAllowedAmount) != 1;
--where FirstName like '"'

select count(*)
from  STG_MedicarePhysicianAndSupplier_DataConverted_V3;
--where ISNUMERIC(NumberOfDrugServices) = 1;


select * into STG_MedicarePhysicianAndSupplier_DataConverted_V5
from STG_MedicarePhysicianAndSupplier_DataConverted_V1;

select count(*) 
from STG_MedicarePhysicianAndSupplier_DataConverted_V1;


select count(*)
from STG_MedicarePhyscianAndSupplier b
where ISNUMERIC(b.[Total Medical Medicare Allowed Amount]) != 1;

select * into STG_MedicarePhyscianAndSupplier_DataCleaning
from STG_MedicarePhyscianAndSupplier;
--Removal of Quotes


UPDATE STG_MedicarePhyscianAndSupplier_DataCleaning
SET [Total Medical Medicare Allowed Amount] = REPLACE([Total Medical Medicare Allowed Amount], '"', '')



select top 100 [Total Medical Medicare Payment Amount]
from STG_MedicarePhyscianAndSupplier_DataCleaning;

select top 1 *
from STG_MedicarePhyscianAndSupplier;



UPDATE STG_MedicarePhyscianAndSupplier_DataCleaning
SET [Total Medical Medicare Payment Amount] = REPLACE([Total Medical Medicare Payment Amount], '"', '')


UPDATE STG_MedicarePhyscianAndSupplier_DataCleaning
SET [Total Drug Medicare Payment Amount] = REPLACE([Total Drug Medicare Payment Amount], '"', '')

UPDATE STG_MedicarePhyscianAndSupplier_DataCleaning
SET [Total Medical Medicare Payment Amount] = REPLACE([Total Medical Medicare Payment Amount], '"', '')


UPDATE STG_MedicarePhyscianAndSupplier_DataCleaning
SET [Total Drug Medicare Payment Amount] = REPLACE([Total Drug Medicare Payment Amount], '"', '')



select top 100 [Total Drug Medicare Payment Amount]
from STG_MedicarePhyscianAndSupplier_DataCleaning;



--NumberOfMedicareBeneficiariesWithDrugServices
UPDATE STG_MedicarePhyscianAndSupplier_DataCleaning
SET [Number of Medicare Beneficiaries With Drug Services] = REPLACE([Number of Medicare Beneficiaries With Drug Services], '"', '')

--TotalDrugSubmittedChargeAmount
UPDATE STG_MedicarePhyscianAndSupplier_DataCleaning
SET [Total Drug Submitted Charge Amount] = REPLACE([Total Drug Submitted Charge Amount], '"', '')

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

[Execute SQL Task] Error: Executing the query "--NumberOfMedicareBeneficiariesWithDrugServices
UP..." failed with the following error: "Time-out occurred while waiting for buffer latch type 4 for page (1:938097), database ID 20.". Possible failure reasons: Problems with the query, "ResultSet" property not set correctly, parameters not set correctly, or connection not established correctly.


select count(*)
from STG_MedicarePhyscianAndSupplier_Formatted_Backup
where RecordedYear = 2012;


select top 100 [Number of Medicare Beneficiaries With Drug Services]
from STG_MedicarePhyscianAndSupplier_DataCleaning

SELECT CAST(CAST ('888.67' AS NUMERIC) AS INT);
SELECT CAST(CAST ('888.6789' AS NUMERIC(19,4)) AS INT);
select ROUND('888.67', 0);



UPDATE STG_MedicarePhyscianAndSupplier_DataCleaning
SET [Number of Medicare Beneficiaries With Drug Services] = ROUND([Number of Medicare Beneficiaries With Drug Services],0)

select count(*)
from STG_MedicarePhyscianAndSupplier_DataCleaning
where ISNUMERIC([Number of Medicare Beneficiaries With Medical Services]) !=1;
SET [TotalSubmittedChargeAmount] = CAST(ISNULL(NULLIF([TotalSubmittedChargeAmount], ''),0) AS DECIMAL(18,2));


ALTER TABLE STG_MedicarePhyscianAndSupplier_DataCleaning
ALTER COLUMN [NumberOfDrugServices] int;

UPDATE STG_MedicarePhyscianAndSupplier_Formatted_Backup
SET NumberOfDrugServices = ROUND(NumberOfDrugServices, 0)

SELECT 
 TRY_PARSE('123' as int) as '123'
 ,TRY_PARSE('123.67' as DECIMAL(18,2)) as '123.0'
 ,TRY_PARSE('123.1' as decimal(4,1)) as '123.1'
 ,TRY_PARSE('$123.55' as money) as '$123.55'
 ,TRY_PARSE('2013/09/20' as datetime) as '2013/09/20';

 CAST(ISNULL(NULLIF([TotalMedicalSubmittedChargeAmount], ''),0) AS DECIMAL(18,2));

 SELECT 
 TRY_PARSE('123' as int) as '123'
 ,TRY_PARSE('abc' as int) as 'abc'
 ,TRY_PARSE('-' as int) as '-'
 ,TRY_PARSE('+' as int) as '+'
 ,TRY_PARSE('$' as int) as '$'
 ,TRY_PARSE('.' as int) as '.'
 ,TRY_PARSE(',' as int) as ','
 ,TRY_PARSE('\' as int) as '\';
--NumberOfDrugServices


select top 10  [Total Drug Submitted Charge Amount]
from STG_MedicarePhyscianAndSupplier_DataCleaning;

select ISNULL(NULLIF(TRY_PARSE(RTRIM(LTRIM('		 ')) as int), ''),0);
TRY_PARSE('123.67' as int)

ALTER TABLE STG_MedicarePhyscianAndSupplier_Formatted_Backup
ALTER COLUMN [NumberOfDrugServices] int;

CAST(ISNULL(NULLIF([Tota, ''),0) AS DECIMAL(18,2));


select '123';


UPDATE STG_MedicarePhyscianAndSupplier_DataCleaning
SET [Number of Medicare Beneficiaries With Drug Services] = ISNULL(NULLIF(TRY_PARSE(RTRIM(LTRIM([Number of Medicare Beneficiaries With Drug Services])) as int), ''),0)


select count(*)
from STG_MedicarePhyscianAndSupplier_DataCleaning
where [Number of Medicare Beneficiaries With Drug Services]=0;





SELECT LEFT(ExampleColumn, CHARINDEX('.', ExampleColumn) - 1) PreDecimal
	, SUBSTRING(ExampleColumn,(CHARINDEX('.',ExampleColumn)+1),6) PostDecimal
	, LEFT(ExampleColumn, CHARINDEX('.', ExampleColumn) - 1) + '.' + SUBSTRING(ExampleColumn,(CHARINDEX('.',ExampleColumn)+1),6) FormattedVarchar
	, CAST(LEFT(ExampleColumn, CHARINDEX('.', ExampleColumn) - 1) + '.' + SUBSTRING(ExampleColumn,(CHARINDEX('.',ExampleColumn)+1),3) AS DECIMAL(13,6)) CastedNumeric
FROM VarcharExample


select top 1000   [Total Drug Submitted Charge Amount]
from STG_MedicarePhyscianAndSupplier_DataCleaning;