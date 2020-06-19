UPDATE STG_MedicarePhysicianAndSupplier_Lookedup_Transformation
SET STG_MedicarePhysicianAndSupplier_Lookedup_Transformation.NameID = p.NameID
From ProviderName as p
where STG_MedicarePhysicianAndSupplier_Lookedup_Transformation.FirstName = p.FirstName
And STG_MedicarePhysicianAndSupplier_Lookedup_Transformation.LastName = p.LastName
And STG_MedicarePhysicianAndSupplier_Lookedup_Transformation.MiddleName = p.MiddleName;


select top 10 FirstName
from STG_MedicarePhysicianAndSupplier_Lookedup_Transformation


select top 100 NameID
from STG_MedicarePhysicianAndSupplier_LookedUp_Transformation;

select count(*)
from STG_Medicare


UPDATE a
SET ReasonForstayCode = b.ReasonForStayCode
FROM MissingReasonForStay b
INNER JOIN ReservationStay a
ON a.ReservationStayID = b.ReservationStayID