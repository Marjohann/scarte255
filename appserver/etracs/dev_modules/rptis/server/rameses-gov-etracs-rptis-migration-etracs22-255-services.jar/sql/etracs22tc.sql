[getFunds]
select 
	objid,
	null as parentid,
	'ACTIVE' as state,
	case 
		when fund = 'GENERAL' then '01' 
		when fund = 'SEF' then '02'
		when fund = 'TRUST' then '03'
    else fund 
  end as code,
	fund as title,
	null as type,
	case when fund in('GENERAL', 'SEF', 'TRUST') then 0 else 1 end special,
	case when fund in('GENERAL', 'SEF', 'TRUST') then 1 else 0 end system,
	null as groupid,
	null as depositoryfundid
from fund 

[getItemAccounts]
select 
	objid,
	'ACTIVE' as state,
	acctcode as code,
	accttitle as title,
	null as description,
	'REVENUE' as type,
	fundid as fund_objid,
	case 
		when fundname = 'GENERAL' then '01' 
		when fundname = 'SEF' then '02' 
		when fundname = 'TRUST' then '03' 
		else fundname
	end as fund_code,
	fundname as fund_title,
	null as defaultvalue,
	null as valuetype,
	null as org_objid,
	null as org_name, 
	null as parentid,
	0 as generic,
	0 as sortorder,
	0 as hidefromlookup
from incomeaccount
where accttitle not like 'BASIC%' 
and  accttitle not like 'SEF%' 


