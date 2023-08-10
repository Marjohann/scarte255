-- delete from income_ledger
-- ;
-- delete from cashreceipt_share
-- ;
-- delete from cashreceiptitem
-- ;

set foreign_key_checks = 0
;


delete from itemaccount_tag where objid in (
	select objid from itemaccount where objid like 'RPT_%'
)
;

delete from itemaccount where objid like 'RPT_%'
;

delete from rpt_syncdata_forsync;
delete from rpt_syncdata_item;
delete from rpt_syncdata_item_completed;
delete from rpt_syncdata_error;
delete from rpt_syncdata_completed;
delete from rpt_syncdata;
delete from rpt_syncdata_fordownload;

delete from rptbill_ledger;
delete from rptbill;

delete from rptpayment_share;
delete from rptpayment_item;
delete from rptpayment;
delete from rptcertificationitem;
delete from rptcertification_task;
delete from rpttaxclearance;
delete from rptcertification;
delete from rptledger_avdifference;
delete from rptledger_item;
delete from rptledgerfaas;
delete from rptledger;
delete from txnlog;
delete from txnref;
delete from txnsignatory;
delete from workflowstate;

delete from rptpayment_item;
delete from rptpayment_share;
delete from rptpayment;
delete from batch_rpttaxcredit;
delete from batch_rpttaxcredit_ledger_posted;
delete from batch_rpttaxcredit_ledger;
delete from assessmentnotice_online;
delete from assessmentnoticeitem;
delete from assessmentnotice;
delete from batchgr_item;
delete from batchgr_task;
delete from batchgr;
delete from cancelannotation;
delete from cancelledfaas_signatory;
delete from cancelledfaas;
delete from cancelledfaas_task;
delete from cancelledfaas_signatory;
delete from cashreceipt_rpt_share_forposting_repost;
delete from cashreceipt_rpt_share_forposting;
delete from cashreceipt_rpt;
delete from signatory;
delete from subdivision_assist;
delete from subdivision_assist_item;
delete from subdivision_cancelledimprovement;
delete from subdivision_motherland;
delete from subdivision_task;
delete from subdivisionaffectedrpu;
delete from subdividedland;
delete from subdivision;
delete from planttreedetail;
delete from planttreerpu;
delete from bldgflooradditionalparam;
delete from bldgflooradditional;
delete from bldgfloor;
delete from bldgrpu_land;
delete from bldgstructure;
delete from bldguse;
delete from bldgrpu_structuraltype;
delete from bldgrpu;
delete from consolidationaffectedrpu;
delete from consolidatedland;
delete from consolidation_task;
delete from consolidation;
delete from examiner_finding;
delete from faas_affectedrpu;
delete from faas_list;
delete from faas_previous;
delete from faas_restriction;
delete from faas_signatory;
delete from faas_sketch;
delete from faas_stewardship;
delete from faas_task;
delete from faasannotation_faas;
delete from faasannotation;
delete from faasbacktax;
delete from faas;
delete from machdetail;
delete from machuse;
delete from machrpu;
delete from miscrpuitem_rptparameter;
delete from miscrpuitem;
delete from miscrpu;
delete from landadjustmentparameter;
delete from landadjustment;
delete from landdetail;
delete from landrpu;
delete from propertypayer_item;
delete from propertypayer;
delete from report_rptdelinquency_error;
delete from report_rptdelinquency_forprocess;
delete from report_rptdelinquency_item;
delete from report_rptdelinquency_barangay;
delete from report_rptdelinquency;
delete from resection_item;
delete from resection_task;
delete from resection;
delete from rpt_changeinfo;
delete from rpt_redflag;
delete from rpt_requirement;
delete from rpt_requirement_type;
delete from rpt_sales_data;
delete from rpt_sms;
delete from rpt_sms_registration;
delete from rpt_syncdata_completed;
delete from rpt_syncdata_error;
delete from rpt_syncdata_fordownload;
delete from rpt_syncdata_forsync;
delete from rpt_syncdata_item;
delete from rpt_syncdata;
delete from rptacknowledgement_item;
delete from rptacknowledgement;
delete from rptcertification_online;
delete from rptcertificationitem;
delete from rptcertification;
delete from rptcompromise_credit;
delete from rptcompromise_installment;
delete from rptcompromise_item;
delete from rptcompromise;
delete from rptexpiry;
delete from rptledger_avdifference;
delete from rptledger_credit;
delete from rptledger_item;
delete from rptledger_redflag;
delete from rptledger_restriction;
delete from rptledger_subledger;
delete from rptledger_tag;
delete from rptledgerfaas;
delete from rptledger;
delete from rpttask;
delete from rpttaxclearance;
delete from rpttaxcredit;
delete from rpttaxincentive_item;
delete from rpttaxincentive;
delete from rpttracking;
delete from rpttransmittal_item;
delete from rpttransmittal;
delete from rpu_assessment;
delete from rpu;
delete from realproperty;
delete from rpumaster;

delete from miscassesslevelrange;
delete from miscassesslevel;
delete from miscitemvalue;
delete from miscrysetting;

update planttreerysetting set previd = null;
delete from planttreeunitvalue;
delete from planttreeassesslevel;
delete from planttreerysetting;

delete from machine_smv;
delete from machforex;
delete from machassesslevelrange;
delete from machassesslevel;
delete from machrysetting;

update bldgadditionalitem set previd = null;
delete from bldgadditionalitem;
delete from bldgtype_storeyadjustment;
delete from bldgtype_depreciation;
delete from bldgkindbucc;
delete from bldgtype;
delete from bldgassesslevelrange;
delete from bldgassesslevel;
delete from bldgrysetting;

delete from landadjustmenttype_classification;
delete from landadjustmenttype;
delete from lcuvstripping;
delete from lcuvsubclass;
delete from lcuvspecificclass;
delete from landassesslevelrange;
delete from landassesslevel;
delete from landrysetting;

delete from rysetting_lgu;


delete from memoranda_template;
delete from rptparameter;
delete from miscitem;
delete from planttree;
delete from machine;
delete from structurematerial;
delete from structure;
delete from material;
delete from bldgkind;
delete from canceltdreason;
delete from landspecificclass;
delete from exemptiontype;
delete from propertyclassification;

set foreign_key_checks = 1
;
