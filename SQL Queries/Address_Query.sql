---Address table(s) Queries

select row_number() over (order by AddressLine1, AddressLine2 , Ci) as NameID, FirstName, LastName, MiddleName
from STG_MedicarePhysicianAndSupplier_LookedUp_Transformation;


--ProviderAdress Table Creation
select row_number() over (order by AddressLine1, AddressLine2, CityName, StateCode, CountryCode,ZipCode) as ProviderAddressID, AddressLine1, AddressLine2, CityName, StateCode, CountryCode,ZipCode into ProviderAddress
from STG_MedicarePhysicianAndSupplier_LookedUp_Transformation_V2
group by AddressLine1, AddressLine2, CityName, StateCode, CountryCode,ZipCode;

select ROW_NUMBER() over(order by CityName, StateCode, CountryCode,ZipCode) as CityID, CityName, StateCode, CountryCode,ZipCode
from STG_MedicarePhysicianAndSupplier_LookedUp_Transformation_V2
group by CityName, StateCode, CountryCode,ZipCode;


select count(*)
from ProviderAddress
where len(CountryCode) > 2;
--6690

select count(CountryCode)
from ProviderAddress
where CountryCode != 'US';


select top 10 StateCode
from ProviderAddress
where len (StateCode) = 2;


delete from ProviderAddress
where len(CountryCode) > 2;

select ROW_NUMBER() over (order by CountryCode), CountryCode
from ProviderAddress
where CountryCode not in ('AE', 'AG', 'AR', 'AU', 'BO, ‘BR’, ‘CA’,  ‘CH’, ‘CN’,  ‘CO’,  ‘DE’,  ‘ES’, ‘FR’, ‘GB’, ‘HU’, ‘IL’,‘IN’, ‘IS’, ‘IT’,‘JP’,‘KR’,‘KW’,‘KY’, ‘LB’, ‘MX’, ‘NL’, ‘NO’,‘NZ’, ‘PA’, ‘PK’, ‘RW’, ‘SA’, ‘SY’, ‘TR’, ‘TH’, ‘VE', 'US')
group by CountryCode;

‘AE’ = ‘United Arab Emirates’; 'AG'='Antigua'; ‘AR’= ‘Argentina’; ‘AU’= ‘Australia’; 'BO'='Bolivia'; ‘BR’= ‘Brazil’; ‘CA’= ‘Canada’; ‘CH’= Switzerland’; ‘CN’= China’; ‘CO’= Colombia’; ‘DE’= ‘Germany’; ‘ES’= ‘Spain’; ‘FR’= France’; ‘GB’= Great Britain’; ‘HU’= Hungary’; ‘IL’= Israel’; ‘IN’= India’; ‘IS’= Iceland; ‘IT’= Italy’; ‘JP’= Japan’; ‘KR’= ‘Korea’; 'KW'='Kuwait'; 'KY'='Cayman Islands'; 'LB'='Lebanon'; 'MX'='Mexico'; ‘NL’= ‘Netherlands’; 'NO'='Norway'; 'NZ'='New Zealand'; 'PA'='Panama'; ‘PK’= ‘Pakistan’; 'RW'='Rwanda'; ‘SA’= ‘Saudi Arabia’; ‘SY’= ‘Syria’; ‘TR’= ‘Turkey’; ' TH'='Thailand'; ‘VE’= ‘Venezuela’ .



delete from ProviderAddress
where CountryCode not in ('AE', 'AG', 'AR', 'AU', 'BO, ‘BR’, ‘CA’,  ‘CH’, ‘CN’,  ‘CO’,  ‘DE’,  ‘ES’, ‘FR’, ‘GB’, ‘HU’, ‘IL’,‘IN’, ‘IS’, ‘IT’,‘JP’,‘KR’,‘KW’,‘KY’, ‘LB’, ‘MX’, ‘NL’, ‘NO’,‘NZ’, ‘PA’, ‘PK’, ‘RW’, ‘SA’, ‘SY’, ‘TR’, ‘TH’, ‘VE', 'US');

select CountryCode
from ProviderAddress
group by CountryCode;


select StateCode
from ProviderAddress
where StateCode not in ( 'XX', 'AA', 'AE', 'AP', 'AS', 'GU','MP' = 'North Mariana Islands' 'PR' = 'Puerto Rico' 'VI' = 'Virgin Islands' 'ZZ' = 'Foreign Country'



delete from ProviderAddress
where len(StateCode) > 2;

select StateCode
from ProviderAddress
group by StateCode;

select StateCode, CountryCode, ZipCode
from ProviderAddress
where len(ZipCode) > 5;


select * into STG_MedicarePhysicianAndSupplier_LookedUp_Transformation_V2B
from STG_MedicarePhysicianAndSupplier_LookedUp_Transformation_V2;



select count(*)
from ProviderAddress;

select ROW_NUMBER() over(order by CityName, StateCode,CountryCode) as CityID, CityName, StateCode, CountryCode into City
from ProviderAddress
group by CityName, StateCode, CountryCode;


ALTER TABLe ERR_MedicarePhysicianAndSupplier_Consolidated
ADD CityID bigint;



select top 100 *
from Address_v1;

select * into ProviderFullAddress
from Address_V1;

--Delete Columns from ProviderFullAddress
ALTER TABLE ProviderFullAddress
DROP COLUMN CityName, StateCode, CountryCode;

select top 100 *
from ProviderFullAddress;

select top 100 *
from City;



ALTER TABLE STG_MedicarePhysicianAndSupplier_LookedUp_Transformation_V2B
ADD ProviderAddressID bigint;

select * into STG_MedicarePhysicianAndSupplier_LookedUp_Transformation_V3B
from STG_MedicarePhysicianAndSupplier_LookedUp_Transformation_V2B;


select count(*)
from STG_MedicarePhysicianAndSupplier_LookedUp_Transformation_V2B;
