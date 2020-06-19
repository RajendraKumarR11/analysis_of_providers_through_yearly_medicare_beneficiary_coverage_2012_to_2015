USE [MedicareDW]
GO

/****** Object:  Table [dbo].[DimProviderFullAddress]    Script Date: 4/22/2020 1:26:53 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DimProviderAddress](
	[ProviderAddressID] [bigint] NULL,
	[AddressLine1] [varchar](255) NULL,
	[AddressLine2] [varchar](255) NULL,
	[CityName] [varchar](100) NULL,
	[StateCode] [varchar](100) NULL,
	[CountryCode] [varchar](100) NULL,
	[ZipCode] [varchar](100) NULL
) ON [PRIMARY]
GO


select count(*)
from DimProviderAddress;




CREATE TABLE [dbo].[Err_MedicareProvider_Consolidated](
	[ProviderAddressID] [bigint] NULL,
	[AddressLine1] [varchar](255) NULL,
	[AddressLine2] [varchar](255) NULL,
	[CityName] [varchar](100) NULL,
	[StateCode] [varchar](100) NULL,
	[CountryCode] [varchar](100) NULL,
	[ZipCode] [varchar](100) NULL,
	[NPI] [int] NULL,
	[LastName] [varchar](100) NULL,
	[FirstName] [varchar](100) NULL,
	[MiddleName] [varchar](50) NULL,
	[NumberOfDrugServices] [int] NULL,
	[NumberOfMedicareBeneficiariesWithDrugServices] [int] NULL,
	[TotalDrugSubmittedChargeAmount] [decimal](18, 2) NULL,
	[TotalDrugMedicareAllowedAmount] [decimal](18, 2) NULL,
	[TotalDrugMedicarePaymentAmount] [decimal](18, 2) NULL,
	[NumberofMedical Services] [int] NULL,
	[NumberOfMedicareBeneficiariesWithMedicalServices] [int] NULL,
	[TotalMedicalMedicareAllowedAmount] [decimal](18, 2) NULL,
	[TotaMedicalMedicarePaymentAmount] [decimal](18, 2) NULL,
	[NumberOfBeneficiaries_Age_65_To_74] [int] NULL,
	[NumberOfBeneficiaries_Age_75_ To_84] [int] NULL,
	[NumberOfBeneficiaries_Age_ Greater_84] [int] NULL,
	[NumberOfFemaleBeneficiaries] [int] NULL,
	[NumberOfBlackOrAfricanAmerican_Beneficiaries] [int] NULL,
	[NumberOfAsianPacificIslander_ Beneficiaries] [int] NULL,
	[NumberOfHispanic_Beneficiaries] [int] NULL,
	[NumberOfAmerican Indian_AlaskaNative_Beneficiaries] [int] NULL,
	[NumberOfBeneficiaries_WithRaceNotElsewhereClassified] [int] NULL,
	[NumberOfBeneficiaries_AgeLess_ 65] [int] NULL,
	[NumberOfMaleBeneficiaries] [int] NULL,
	[RecordedYear] [nvarchar](4) NULL,
	[Number_Of_BeneficiariesIdentifiedWithAtrialFibrillation] [int] NULL,
	[Number_Of_BeneficiariesIdentifiedWithRheumatoidArthritis_Osteoarthritis] [int] NULL,
	[Number_Of_BeneficiariesIdentifiedWithChronicKidneyDisease] [int] NULL,
	[Number_Of_BeneficiariesIdentifiedWithHeartFailure] [int] NULL,
	[Number_Of_BeneficiariesIdentifiedWithCancer] [int] NULL,
	[Number_Of_BeneficiariesIdentifiedWithDiabetes] [int] NULL,
	[EnrollmentID] [int] NULL,
	[DMEPOSClaim_IND] [varchar](2) NULL,
	[HHAClaim_IND] [varchar](2) NULL,
	[ProviderTypeCode] [varchar](50) NULL,
	[NameID] [int] NULL,
	[ProviderNameID] [int] NULL,
	[TotalMedicalSubmittedChargeAmount] [decimal](18, 2) NULL,
	[LastUpdatedDate] [datetime2](3) NOT NULL,
	[ErrorCode] [varchar](100) NULL,
	[ErrorColumn] [varchar](100) NULL,
	[ErrorDescription] [varchar] (100)
) ON [PRIMARY]
GO


