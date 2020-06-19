--MedicareDW Cleanup queries

ALTER TABLE FactProviderDetail
DROP COLUMN FirstName, LastName, MiddleName,NameID;

ALTER TABLE FactProviderDetail
ALTER COLUMN ProviderNameID bigint;

--DimCity
ALTER TABLE DimCity
ALTER COLUMN CityID bigint NOT NULL;

ALTER TABLE DimCity
ADD PRIMARY KEY (CityID);

--DimProviderAddress
ALTER TABLE DimProviderAddress
ALTER COLUMN ProviderAddressID bigint NOT NULL;

ALTER TABLE DimProviderAddress
ADD PRIMARY KEY (ProviderAddressID);

--DimProviderName
ALTER TABLE DimProviderName
ALTER COLUMN NameID bigint NOT NULL;

ALTER TABLE DimProviderName
ADD PRIMARY KEY (NameID);

sp_rename @objname = N'[DimProviderName].[PK__DimProvi__EE1C17C1EE756B48]', @newname = N'PK_NameID';


--DimProviderType
ALTER TABLE DimProviderType
ALTER COLUMN ProviderTypeCode varchar(50) NOT NULL;

ALTER TABLE DimProviderType
ADD PRIMARY KEY (ProviderTypeCode);

sp_rename @objname = N'[DimProviderType].[PK__DimProvi__9B7468869763EC0D]', @newname = N'PK_ProviderTypeCode';

sp_rename @objname = N'[DimProviderAddress].[PK__DimProvi__D3C8DD78A6B12E22]', @newname = N'PK_ProviderAddressID';



--FactProviderDetail
ALTER TABLE ProviderDetail
ALTER COLUMN NPI int NOT NULL;

ALTER TABLE ProviderType
ADD PRIMARY KEY (ProviderTypeCode);

ALTER TABLE FactProviderDetail
ADD ID INT IDENTITY(1,1);

ALTER TABLE FactProviderDetail
ADD PRIMARY KEY (ID);
sp_rename @objname = N'[FactProviderDetail].[PK__FactProv__3214EC27E09181DF]', @newname = N'PK_ID';



--Foreign Key (ProviderAddressID (ProviderDetail to ProviderAddress) FK_ProviderFullAddress
ALTER TABLE FactProviderDetail
ADD CONSTRAINT FK_ProviderAddress
FOREIGN KEY (ProviderAddressID) REFERENCES DimProviderAddress(ProviderAddressID);

--Foreign Key (ProviderNameID (ProviderDetail to ProviderName)
ALTER TABLE FactProviderDetail
ADD CONSTRAINT FK_ProviderName
FOREIGN KEY (ProviderNameID) REFERENCES DimProviderName(NameID);

--Foreign Key (ProviderTypeCode (ProviderDetail to ProviderType)
ALTER TABLE FactProviderDetail
ADD CONSTRAINT FK_ProviderTypeCode
FOREIGN KEY (ProviderTypeCode) REFERENCES DimProviderType(ProviderTypeCode);

--Foreign Key (CityID (ProviderFullAddress to City)
ALTER TABLE ProviderFullAddress
ADD FOREIGN KEY (CityID) REFERENCES City(CityID);





select RecordedYear
from FactProviderDetail
group by RecordedYear;

ALTER TABLE ProviderDetail
ALTER COLUMN NPI int NOT NULL;


ALTER TABLE FactProviderDetail
ALTER COLUMN RecordedYear int;


ALTER TABLE FactProviderDetail
ALTER COLUMN NPI int NOT NULL;

select NumberOfDrugServices
from FactProviderDetail f
where f.NPI in (1629000468) and RecordedYear = 2014;


sp_rename 'FactProviderDetail.TotaMedicalMedicarePaymentAmount', 'TotalMedicalMedicarePaymentAmount', 'COLUMN';


BACKUP DATABASE MedicareDW
TO DISK = 'E:\DataBackup\MedicareDW.BAK';


select *
from FactProviderDetail, DimProviderFullAddress



select MAX(
from FactProviderDetail
where RecordedYear = 2015
group by NPI
having MAX(Number_Of_BeneficiariesIdentifiedWithHeartFailure);

--1528094836

select Number_Of_BeneficiariesIdentifiedWithHeartFailure
from FactProviderDetail
where NPI = 1528094836 and RecordedYear = 2015;