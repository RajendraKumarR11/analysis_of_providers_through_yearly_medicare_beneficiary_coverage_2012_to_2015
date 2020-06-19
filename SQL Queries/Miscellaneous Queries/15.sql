select * into STG_MedicarePhysicianAndSupplier_LookedUp_Transformation
from STG_MedicarePhysicianAndSupplier_LookedUp;


select row_number() over (order by ENRLMT_ID) as EnrolmentID
--into Lookup_Enrolment 
from STG_MedicarePhysicianAndSupplier_LookedUp_Transformation
group by ENRLMT_ID

--select row_number() over (order by CredentialType) as CredentialType_ID, CredentialType into Lookup_CredentialType from Sample_Health_Care_Provider_Credential_Data
--group by CredentialType;


select row_number() over (order by FirstName, LastName, MiddleName) as NameID, FirstName, LastName, MiddleName into ProviderName
from STG_MedicarePhysicianAndSupplier_LookedUp_Transformation
group by FirstName, LastName, MiddleName;


ALTER TABLE STG_MedicarePhysicianAndSupplier_LookedUp_Transformation
ADD NameID int;


UPDATE STG_MedicarePhyscianAndSupplier_DataCleaning
SET [Average Age of Beneficiaries] = REPLACE([Average Age of Beneficiaries], '"', '')

UPDATE STG_MedicarePhysicianAndSupplier_LookedUp_Transformation
SET NameID = p.NameID
From ProviderName as p
where p.FirstName = FirstName
And p.LastName = LastName
And p.MiddleName = MiddleName;


UPDATE st
  SET st.school_code = sc.school_id 
FROM master.student AS st
  JOIN Master.school AS sc
ON st.school_code = sc.school_code
WHERE sc.year=x
  AND st.year=x;


  select row_number() over (order by FirstName, LastName, MiddleName) as NameID, FirstName, LastName, MiddleName
from STG_MedicarePhysicianAndSupplier_LookedUp_Transformation;
--group by FirstName, LastName, MiddleName;