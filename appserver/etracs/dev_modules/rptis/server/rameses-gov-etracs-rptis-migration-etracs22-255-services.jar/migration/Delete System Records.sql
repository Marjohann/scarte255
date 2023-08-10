
delete from sys_usergroup_member where user_objid in (
	select objid from sys_user where username <> 'admin'
)
;

delete from sys_user where username <> 'admin'
;

delete from barangay;
delete from municipality;
delete from province;
update sys_org set parent_objid = null;
delete from sys_org;
delete from sys_sequence;
delete from sys_terminal;