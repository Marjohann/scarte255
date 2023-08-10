set foreign_key_checks=0
; 
delete from af_control; 
delete from af_control_detail; 
delete from afrequest; 
delete from afrequestitem; 
delete from aftxn; 
delete from aftxnitem; 
delete from bankaccount_ledger; 
delete from batchcapture_collection; 
delete from batchcapture_collection_entry; 
delete from batchcapture_collection_entry_item; 
delete from cash_treasury_ledger; 
delete from cashbook_revolving_fund; 
delete from cashreceipt; 
delete from cashreceipt_burial; 
delete from cashreceipt_cancelseries; 
delete from cashreceipt_cashticket; 
delete from cashreceipt_changelog; 
delete from cashreceipt_ctc_corporate; 
delete from cashreceipt_ctc_individual; 
delete from cashreceipt_group; 
delete from cashreceipt_groupitem; 
delete from cashreceipt_largecattleownership; 
delete from cashreceipt_largecattletransfer; 
delete from cashreceipt_marriage; 
delete from cashreceipt_reprint_log; 
delete from cashreceipt_rpt; 
delete from cashreceipt_rpt_share_forposting; 
delete from cashreceipt_share; 
delete from cashreceipt_slaughter; 
delete from cashreceipt_void; 
delete from cashreceiptitem; 
delete from cashreceiptitem_discount; 
-- delete from cashreceiptitem_rpt; 
delete from cashreceiptitem_rpt_account; 
-- delete from cashreceiptitem_rpt_noledger; 
delete from cashreceiptitem_rpt_online; 
delete from cashreceiptpayment_creditmemo; 
delete from cashreceiptpayment_noncash; 
delete from cashreceipts; 
delete from checkpayment; 
delete from checkpayment_deadchecks; 
delete from checkpayment_dishonored; 
delete from collectionvoucher; 
delete from collectionvoucher_fund; 
delete from creditmemo; 
delete from creditmemoitem; 
delete from deposit_fund_transfer; 
delete from depositslip; 
delete from depositvoucher; 
delete from depositvoucher_fund; 
delete from draftremittance; 
delete from draftremittanceitem; 
delete from eftpayment; 
delete from income_ledger; 
delete from income_summary; 
delete from interfund_transfer_ledger; 
delete from jev; 
delete from jevitem; 
delete from payable_ledger; 
delete from paymentorder; 
delete from remittance; 
delete from remittance_af; 
delete from remittance_fund; 
delete from subcollector_remittance; 
delete from subcollector_remittance_cashreceipt; 

delete from sys_sequence where objid in ('AFSERIALFORWARD', 'CASHTICKETFORWARD', 'IRAF', 'RIS');
delete from sys_sequence where objid in ('CT1','CT2','CT5','CT10'); 
delete from sys_sequence where objid like 'DEP-%';  
delete from sys_sequence where objid like 'DV-%';  
delete from sys_sequence where objid like 'LIQ-%'; 
delete from sys_sequence where objid like 'LIQ'; 
delete from sys_sequence where objid like 'REM-%';  
delete from sys_sequence where objid like 'REM';  
delete from sys_sequence where objid like 'SUBREM%'; 

delete from txnlog where ref in ('remittance','liquidation','collectionvoucher','bankdeposit','depositvoucher'); 


delete from creditmemotype_account;
delete from creditmemotype;
delete from collectiongroup_account;
delete from collectiongroup;
delete from collectiontype_account;
delete from collectiontype where fund_objid is not null;
delete from bank;
delete from bankaccount;
delete from itemaccount_tag;
delete from itemaccount;
delete from fund;

set foreign_key_checks=1; 
