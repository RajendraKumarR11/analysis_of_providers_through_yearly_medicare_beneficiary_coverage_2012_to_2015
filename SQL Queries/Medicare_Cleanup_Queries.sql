--Medicare Cleanup queries

ALTER TABLE ProviderAddress
ADD PRIMARY KEY (ProviderAddressID);

ALTER TABLE ProviderAddress 
ALTER COLUMN ProviderAddressID bigint NOT NULL;

--City
ALTER TABLE City
ALTER COLUMN CityID bigint NOT NULL;

ALTER TABLE City
ADD PRIMARY KEY (CityID);

--ProviderFullAddress
ALTER TABLE ProviderFullAddress
ALTER COLUMN ProviderAddressID bigint NOT NULL;

ALTER TABLE ProviderFullAddress
ADD PRIMARY KEY (ProviderAddressID);

--ProviderName
ALTER TABLE ProviderName
ALTER COLUMN NameID bigint NOT NULL;

ALTER TABLE ProviderName
ADD PRIMARY KEY (NameID);

--ProviderType
ALTER TABLE ProviderType
ALTER COLUMN ProviderTypeCode varchar(50) NOT NULL;

ALTER TABLE ProviderType
ADD PRIMARY KEY (ProviderTypeCode);

--ProviderDetail
ALTER TABLE ProviderDetail
ALTER COLUMN NPI int NOT NULL;

ALTER TABLE ProviderType
ADD PRIMARY KEY (ProviderTypeCode);

ALTER TABLE ProviderDetail
ADD ID INT IDENTITY(1,1);

ALTER TABLE ProviderDetail
ADD PRIMARY KEY (ID);

select top 100 *
from ProviderDetail;

ALTER TABLE ProviderDetail
DROP COLUMN ID;

ALTER TABLE ProviderDetail
DROP COLUMN FirstName, LastName, MiddleName;

ALTER TABLE ProviderDetail
DROP COLUMN NameID;


--Foreign Key (ProviderAddressID (ProviderDetail to ProviderAddress)
ALTER TABLE ProviderDetail
ADD FOREIGN KEY (ProviderAddressID) REFERENCES ProviderFullAddress(ProviderAddressID);

--Foreign Key (ProviderNameID (ProviderDetail to ProviderName)
ALTER TABLE ProviderDetail
ADD CONSTRAINT FK_ProviderName
FOREIGN KEY (ProviderNameID) REFERENCES ProviderName(NameID);

--Foreign Key (ProviderTypeCode (ProviderDetail to ProviderType)
ALTER TABLE ProviderDetail
ADD CONSTRAINT FK_ProviderTypeCode
FOREIGN KEY (ProviderTypeCode) REFERENCES ProviderType(ProviderTypeCode);

--Foreign Key (CityID (ProviderFullAddress to City)
ALTER TABLE ProviderFullAddress
ADD FOREIGN KEY (CityID) REFERENCES City(CityID);



ALTER TABLE ProviderDetail
ALTER COLUMN ProviderNameID bigint;


ALTER TABLE ProviderDetail
ALTER COLUMN RecordedYear int;

sp_rename 'ProviderDetail.TotaMedicalMedicarePaymentAmount', 'TotalMedicalMedicarePaymentAmount', 'COLUMN';


BACKUP DATABASE Medicare
TO DISK = 'E:\DataBackup\Medicare.BAK';

select *,  into ARCHIVE_BaseProviderEnrollment
from STG_BaseProviderEnrollment;


select *
from 


select top 100 *
from ProviderName;

sp_rename @objname = N'[ProviderDetail].[PK__Provider__3214EC27F58B7C83]', @newname = N'PK_ID';
sp_rename @objname = N'[ProviderName].[PK__Provider__EE1C17C16D40C24F]', @newname = N'PK_NameID';
sp_rename @objname = N'[ProviderType].[PK__Provider__9B746886A8461C33]', @newname = N'PK_ProviderTypeCode';
sp_rename @objname = N'[ProviderFullAddress].[PK__Provider__D3C8DD780D3AB488]', @newname = N'PK_ProviderAddressID';
sp_rename @objname = N'[City].[PK__City__F2D21A96B12AF595]', @newname = N'PK_CityID';



sp_rename @objname = N'[ProviderDetail].[FK__ProviderD__Provi__5E8A0973]', @newname = N'FK_ProviderFullAddress';
sp_rename 'FK__ProviderD__Provi__5E8A0973','FK_ProviderFullAddress';
sp_rename 'FK__ProviderF__CityI__634EBE90','FK_ProviderFullAddressCity';

--Archiving STG_BaseProviderEnrollment
select *, CURRENT_TIMESTAMP AS LoadDate into ARCHIVE_BaseProviderEnrollment
from STG_BaseProviderEnrollment;

--Archiving STG_OrderAndReferring
select *, CURRENT_TIMESTAMP AS LoadDate into ARCHIVE_OrderAndReferring
from STG_OrderAndReferring;

--Archiving STG_MedicarePhyscianAndSupplier
select *, CURRENT_TIMESTAMP AS LoadDate into ARCHIVE_MedicarePhyscianAndSupplier
from STG_MedicarePhyscianAndSupplier;