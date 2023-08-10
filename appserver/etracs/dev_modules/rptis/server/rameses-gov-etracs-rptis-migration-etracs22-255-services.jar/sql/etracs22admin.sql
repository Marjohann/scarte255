[getUsers]
select 
	objid,
	null as state,
	'SYSTEM' as createdby,
	uid as username,
	null as pwd,
	firstname,
	lastname,
	middlename,
	null as name,
	null as jobtitle,
	0 as pwdlogincount,
	null pwdexpirydate,
	null as usedpwds,
	null as lockid,
	null as txncode
from useraccount
where objid <> 'admin';


