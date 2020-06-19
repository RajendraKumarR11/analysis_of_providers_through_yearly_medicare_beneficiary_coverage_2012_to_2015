select count(*)
from STG_MedicarePhysicianAndSupplier_LookedUp_Transformation
where NameID is not NULL;


select top 10 NameID
from STG_MedicarePhysicianAndSupplier_LookedUp_Transformation;