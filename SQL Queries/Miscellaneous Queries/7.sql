USE [Medicare]
GO

/****** Object:  Table [dbo].[STG_MedicarePhyscianAndSupplier_Formatting]    Script Date: 4/16/2020 1:01:27 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

C
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
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO


