UPDATE STG_MedicarePhyscianAndSupplier_Formatted
SET Number_Of_BeneficiariesIdentifiedWithRheumatoidArthritis_Osteoarthritis = ISNULL(NULLIF(TRY_PARSE( Right([Percent_Of_BeneficiariesIdentifiedWithRheumatoidArthritis_ Osteoarthritis],2) as int), ''),0) * (NumberOfMedicareBeneficiariesWithMedicalServices + NumberOfMedicareBeneficiariesWithDrugServices);




select top 100 Percent Percent_Of_BeneficiariesIdentifiedWithDiabetes
from STG_MedicarePhyscianAndSupplier_Formatted;

--IdentifiedWithHeartFailure
ALTER TABLE STG_MedicarePhyscianAndSupplier_Formatted
ADD Number_Of_BeneficiariesIdentifiedWithHeartFailure int;

--IdentifiedWithChronicKidneyDisease
UPDATE STG_MedicarePhyscianAndSupplier_Formatted
SET Number_Of_BeneficiariesIdentifiedWithChronicKidneyDisease = ISNULL(NULLIF(TRY_PARSE( Right([Percent_Of_BeneficiariesIdentifiedWithChronicKidneyDisease],2) as int), ''),0) * (NumberOfMedicareBeneficiariesWithMedicalServices + NumberOfMedicareBeneficiariesWithDrugServices);


--IdentifiedWithDiabetes
ALTER TABLE STG_MedicarePhyscianAndSupplier_Formatted
ADD Number_Of_BeneficiariesIdentifiedWithDiabetes int;


--IdentifiedWithChronicKidneyDisease
UPDATE STG_MedicarePhyscianAndSupplier_Formatted
SET Number_Of_BeneficiariesIdentifiedWithDiabetes = ISNULL(NULLIF(TRY_PARSE( Right([Percent_Of_BeneficiariesIdentifiedWithChronicKidneyDisease],2) as int), ''),0) * (NumberOfMedicareBeneficiariesWithMedicalServices + NumberOfMedicareBeneficiariesWithDrugServices);
--IdentifiedWithChronicKidneyDisease
UPDATE STG_MedicarePhyscianAndSupplier_Formatted
SET Number_Of_BeneficiariesIdentifiedWithHeartFailure = ISNULL(NULLIF(TRY_PARSE( Right([Percent_Of_Beneficiaries IdentifiedWithHeartFailure],2) as int), ''),0) * (NumberOfMedicareBeneficiariesWithMedicalServices + NumberOfMedicareBeneficiariesWithDrugServices);


--IdentifiedWithCancer
ALTER TABLE STG_MedicarePhyscianAndSupplier_Formatted
ADD Number_Of_BeneficiariesIdentifiedWithCancer int;

--Number_Of_BeneficiariesIdentifiedWithDiabetes
UPDATE STG_MedicarePhyscianAndSupplier_Formatted
SET Number_Of_BeneficiariesIdentifiedWithDiabetes = (ISNULL(NULLIF(TRY_PARSE( Right([Percent_Of_BeneficiariesIdentifiedWithDiabetes],2) as int), ''),0) * (NumberOfMedicareBeneficiariesWithMedicalServices + NumberOfMedicareBeneficiariesWithDrugServices))/100;


select top 100 Number_Of_BeneficiariesIdentifiedWithAtrialFibrillation
from STG_MedicarePhyscianAndSupplier_Formatted;

select 9/2 ;

select top 1000 Number_Of_BeneficiariesIdentifiedWithAtrialFibrillation
from STG_MedicarePhyscianAndSupplier_Formatted;

--IdentifiedWithAtrialFibrillation(% division)
UPDATE STG_MedicarePhyscianAndSupplier_Formatted
SET Number_Of_BeneficiariesIdentifiedWithAtrialFibrillation = Number_Of_BeneficiariesIdentifiedWithAtrialFibrillation/100;


--IdentifiedWithRheumatoidArthritis_Osteoarthritis(% division)
UPDATE STG_MedicarePhyscianAndSupplier_Formatted
SET Number_Of_BeneficiariesIdentifiedWithRheumatoidArthritis_Osteoarthritis = Number_Of_BeneficiariesIdentifiedWithRheumatoidArthritis_Osteoarthritis/100;



Number_Of_BeneficiariesIdentifiedWithChronicKidneyDisease

--IdentifiedWithChronicKidneyDisease(% division)
UPDATE STG_MedicarePhyscianAndSupplier_Formatted
SET Number_Of_BeneficiariesIdentifiedWithChronicKidneyDisease = Number_Of_BeneficiariesIdentifiedWithChronicKidneyDisease/100;


--IdentifiedWithHeartFailure(% division)
UPDATE STG_MedicarePhyscianAndSupplier_Formatted
SET Number_Of_BeneficiariesIdentifiedWithHeartFailure = Number_Of_BeneficiariesIdentifiedWithHeartFailure/100;


--IdentifiedWithCancer(% division)
UPDATE STG_MedicarePhyscianAndSupplier_Formatted
SET Number_Of_BeneficiariesIdentifiedWithCancer = Number_Of_BeneficiariesIdentifiedWithCancer/100;


select top 100 *
from STG_MedicarePhyscianAndSupplier_Formatted f, Lookup_ProviderType p
where f.ProviderTypeDescription = p.ProviderTypeDescription;

select top 100 *
from STG_MedicarePhyscianAndSupplier_Formatted;


select *
from Lookup_ProviderType;

select top 10 ProviderTypeDescription
from STG_MedicarePhyscianAndSupplier_Formatted
where ProviderTypeDescription is not null;


----creating Lookup_ProviderType
select NPI,PROVIDER_TYPE_CD as 'ProviderTypeCode', PROVIDER_TYPE_DESC as 'ProviderTypeDescription' into Lookup_ProviderType_Consolidated
from STG_BaseProviderEnrollment 
group by NPI,PROVIDER_TYPE_CD, PROVIDER_TYPE_DESC


select top 100 *
from Lookup_ProviderType_Consolidated;


select top 100 *
from STG_MedicarePhyscianAndSupplier_Formatted f, Lookup_OrderEligibility pc
where f.NPI = pc.NPI;


ALTER TABLE Lookup_ProviderType_Consolidated
ALTER COLUMN NPI int;


ALTER TABLE STG_MedicarePhyscianAndSupplier_DataCleaning
ALTER COLUMN [NumberOfDrugServices] int;


ALTER TABLE STG_MedicarePhysicianAndSupplier_LookedUp
ALTER COLUMN DMEPOSClaim_IND varchar(2);

ALTER TABLE ERR_MedicarePhysicianAndSupplier_Consolidated
ALTER COLUMN DMEPOSClaim_IND varchar(2);


ALTER TABLE STG_MedicarePhysicianAndSupplier_LookedUp
ALTER COLUMN HHAClaim_IND varchar(2);

ALTER TABLE ERR_MedicarePhysicianAndSupplier_Consolidated
ALTER COLUMN HHAClaim_IND varchar(2);


select count(*)
from STG_MedicarePhysicianAndSupplier_LookedUp;

select * into STG_Medic


select count(*)
from STG_MedicarePhysicianAndSupplier_Lookup;

delete from ERR_MedicarePhysicianAndSupplier_Consolidated;

select count(*)
from STG_MedicarePhysicianAndSupplier_LookedUp;