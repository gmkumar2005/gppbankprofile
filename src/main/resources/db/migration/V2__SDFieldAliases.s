CREATE TABLE SD_FIELDSALIAS(
   "TABLE_NAME" VARCHAR2(30),
   "FIELD_NAME" VARCHAR2(30),
  "ALIAS" VARCHAR2(80),
  "COLUMN_ALIAS" VARCHAR2(80),
  "FIELD_ID" NUMBER(10,0),
  "FIELDTYPE" VARCHAR2(14),
  "CONTROL_TYPE" NUMBER(2,0) DEFAULT (1),
  "FORMAT_STYLE" NUMBER(2,0) DEFAULT (1),
  "CONTENT_SOURCE" VARCHAR2(4000),
  "FAILURE_ACTION" NUMBER(2,0) DEFAULT (0),
  "ACCESS_KEY" CHAR(1),
  "MAX_LENGTH" VARCHAR2(10),
  "DEFAULT_VALUE" VARCHAR2(25),
  "COLUMN_WIDTH" NUMBER(2,0) DEFAULT (0),
  "DESCRIPTION" VARCHAR2(1000),
  "DEFAULT_VALUE_TYPE" NUMBER(1,0) DEFAULT 0
 );


insert into SD_FIELDSALIAS (TABLE_NAME, FIELD_NAME, ALIAS, COLUMN_ALIAS, FIELD_ID, FIELDTYPE, CONTROL_TYPE, FORMAT_STYLE, CONTENT_SOURCE, FAILURE_ACTION, ACCESS_KEY, MAX_LENGTH, DEFAULT_VALUE, COLUMN_WIDTH, DESCRIPTION, DEFAULT_VALUE_TYPE)
values ('BANKS', 'ACCOUNTNO', 'Special processing account', null, 27014, 'STRING', 2, 1, 'P_=28', 0, 'S', '34', null, 0, null, 0);

insert into SD_FIELDSALIAS (TABLE_NAME, FIELD_NAME, ALIAS, COLUMN_ALIAS, FIELD_ID, FIELDTYPE, CONTROL_TYPE, FORMAT_STYLE, CONTENT_SOURCE, FAILURE_ACTION, ACCESS_KEY, MAX_LENGTH, DEFAULT_VALUE, COLUMN_WIDTH, DESCRIPTION, DEFAULT_VALUE_TYPE)
values ('BANKS', 'BSNESSDATE', 'Business date', null, 27002, 'DATE', 6, 26, null, 0, 'd', '7', null, 0, 'Office business date < default business date, updated by end-of-day task', 0);

insert into SD_FIELDSALIAS (TABLE_NAME, FIELD_NAME, ALIAS, COLUMN_ALIAS, FIELD_ID, FIELDTYPE, CONTROL_TYPE, FORMAT_STYLE, CONTENT_SOURCE, FAILURE_ACTION, ACCESS_KEY, MAX_LENGTH, DEFAULT_VALUE, COLUMN_WIDTH, DESCRIPTION, DEFAULT_VALUE_TYPE)
values ('BANKS', 'PROFILE_CHANGE_STATUS', 'Change status', null, 27024, 'STRING', 1, 1, null, 0, ' ', '2', null, 0, 'Indicates if profile changes are pending: NO=no, PN=changes are pending approval, FU=changes are waiting for effective date', 0);

insert into SD_FIELDSALIAS (TABLE_NAME, FIELD_NAME, ALIAS, COLUMN_ALIAS, FIELD_ID, FIELDTYPE, CONTROL_TYPE, FORMAT_STYLE, CONTENT_SOURCE, FAILURE_ACTION, ACCESS_KEY, MAX_LENGTH, DEFAULT_VALUE, COLUMN_WIDTH, DESCRIPTION, DEFAULT_VALUE_TYPE)
values ('BANKS', 'BTCH_CTRL_ID', 'Batch Control Id', null, null, 'STRING', 2, 1, '|SELECT BATCH_CONTROL.BTCH_CTRL_ID FROM BATCH_CONTROL@@@list-columns:BATCH_CONTROL.BTCH_CTRL_ID', 0, ' ', '4', null, 0, 'Hold default Batch Control Id at the office level.', 0);

insert into SD_FIELDSALIAS (TABLE_NAME, FIELD_NAME, ALIAS, COLUMN_ALIAS, FIELD_ID, FIELDTYPE, CONTROL_TYPE, FORMAT_STYLE, CONTENT_SOURCE, FAILURE_ACTION, ACCESS_KEY, MAX_LENGTH, DEFAULT_VALUE, COLUMN_WIDTH, DESCRIPTION, DEFAULT_VALUE_TYPE)
values ('BANKS', 'OFFICE', 'Office ID', null, 27025, 'STRING', 1, 12, 'CACHE_OFFICE', 0, ' ', '3', null, 0, 'Office ID. When a department is changed, the Office field is automatically filled in.', 0);

insert into SD_FIELDSALIAS (TABLE_NAME, FIELD_NAME, ALIAS, COLUMN_ALIAS, FIELD_ID, FIELDTYPE, CONTROL_TYPE, FORMAT_STYLE, CONTENT_SOURCE, FAILURE_ACTION, ACCESS_KEY, MAX_LENGTH, DEFAULT_VALUE, COLUMN_WIDTH, DESCRIPTION, DEFAULT_VALUE_TYPE)
values ('BANKS', 'TRUNC_LEAD_ZERO', 'Force truncating zero', null, 27012, 'NUMBER', 8, 1, null, 0, ' ', '22', '0', 0, 'If selected, leading zeros of account number are truncated down to max length', 2);

insert into SD_FIELDSALIAS (TABLE_NAME, FIELD_NAME, ALIAS, COLUMN_ALIAS, FIELD_ID, FIELDTYPE, CONTROL_TYPE, FORMAT_STYLE, CONTENT_SOURCE, FAILURE_ACTION, ACCESS_KEY, MAX_LENGTH, DEFAULT_VALUE, COLUMN_WIDTH, DESCRIPTION, DEFAULT_VALUE_TYPE)
values ('BANKS', 'CALNAME', 'Calendar', null, 27003, 'STRING', 2, 1, 'P_=49', 0, 'r', '8', null, 0, 'Holiday calendar for office derived from Profile>Schedule>Calendars', 0);

insert into SD_FIELDSALIAS (TABLE_NAME, FIELD_NAME, ALIAS, COLUMN_ALIAS, FIELD_ID, FIELDTYPE, CONTROL_TYPE, FORMAT_STYLE, CONTENT_SOURCE, FAILURE_ACTION, ACCESS_KEY, MAX_LENGTH, DEFAULT_VALUE, COLUMN_WIDTH, DESCRIPTION, DEFAULT_VALUE_TYPE)
values ('BANKS', 'LEGAL_ENTITY', 'Sharing group', null, 27008, 'STRING', 2, 1, '|SELECT REASONS.REASONDESCRIPTION, REASONS.REASONCODE FROM REASONS WHERE REASONS.REASONTYPE = ''LGENTITY'' AND REC_STATUS <> ''DL''@@@list-columns:REASONS.REASONDESCRIPTION, REASONS.REASONCODE', 0, ' ', '3', null, 0, null, 0);

insert into SD_FIELDSALIAS (TABLE_NAME, FIELD_NAME, ALIAS, COLUMN_ALIAS, FIELD_ID, FIELDTYPE, CONTROL_TYPE, FORMAT_STYLE, CONTENT_SOURCE, FAILURE_ACTION, ACCESS_KEY, MAX_LENGTH, DEFAULT_VALUE, COLUMN_WIDTH, DESCRIPTION, DEFAULT_VALUE_TYPE)
values ('BANKS', 'CLRNG_STTLMT_ON_SNDNG_DT', 'Clearing settlement on sending date', null, null, 'NUMBER', 8, 1, null, 0, null, '5', '1', 0, null, 0);

insert into SD_FIELDSALIAS (TABLE_NAME, FIELD_NAME, ALIAS, COLUMN_ALIAS, FIELD_ID, FIELDTYPE, CONTROL_TYPE, FORMAT_STYLE, CONTENT_SOURCE, FAILURE_ACTION, ACCESS_KEY, MAX_LENGTH, DEFAULT_VALUE, COLUMN_WIDTH, DESCRIPTION, DEFAULT_VALUE_TYPE)
values ('BANKS', 'COUNTRYCODE', 'Country code', null, 27018, 'STRING', 2, 9, 'P_=50', 0, ' ', '2', null, 0, '2-char country code for office set in Profiles>Global>Countries Info', 0);

insert into SD_FIELDSALIAS (TABLE_NAME, FIELD_NAME, ALIAS, COLUMN_ALIAS, FIELD_ID, FIELDTYPE, CONTROL_TYPE, FORMAT_STYLE, CONTENT_SOURCE, FAILURE_ACTION, ACCESS_KEY, MAX_LENGTH, DEFAULT_VALUE, COLUMN_WIDTH, DESCRIPTION, DEFAULT_VALUE_TYPE)
values ('BANKS', 'MAX_ACC_LENGTH', 'Max account no length', null, 27016, 'NUMBER', 1, 1, null, 0, ' ', '2', null, 2, 'Max digits in account number for general  or specific processes', 0);

insert into SD_FIELDSALIAS (TABLE_NAME, FIELD_NAME, ALIAS, COLUMN_ALIAS, FIELD_ID, FIELDTYPE, CONTROL_TYPE, FORMAT_STYLE, CONTENT_SOURCE, FAILURE_ACTION, ACCESS_KEY, MAX_LENGTH, DEFAULT_VALUE, COLUMN_WIDTH, DESCRIPTION, DEFAULT_VALUE_TYPE)
values ('BANKS', 'REC_STATUS', 'Status', null, 27023, 'STRING', 4, 1, 'REC_STAT', 0, ' ', '2', null, 0, null, 0);

insert into SD_FIELDSALIAS (TABLE_NAME, FIELD_NAME, ALIAS, COLUMN_ALIAS, FIELD_ID, FIELDTYPE, CONTROL_TYPE, FORMAT_STYLE, CONTENT_SOURCE, FAILURE_ACTION, ACCESS_KEY, MAX_LENGTH, DEFAULT_VALUE, COLUMN_WIDTH, DESCRIPTION, DEFAULT_VALUE_TYPE)
values ('BANKS', 'REL_ORDER', 'Release order', null, 27019, 'STRING', 4, 1, 'REL_ORDER', 0, ' ', '16', null, 0, null, 0);

insert into SD_FIELDSALIAS (TABLE_NAME, FIELD_NAME, ALIAS, COLUMN_ALIAS, FIELD_ID, FIELDTYPE, CONTROL_TYPE, FORMAT_STYLE, CONTENT_SOURCE, FAILURE_ACTION, ACCESS_KEY, MAX_LENGTH, DEFAULT_VALUE, COLUMN_WIDTH, DESCRIPTION, DEFAULT_VALUE_TYPE)
values ('BANKS', 'CURRENCY', 'Base currency', null, 27004, 'STRING', 4, 1, 'CURRENCY', 0, ' ', '3', null, 0, 'Code for base currency this office uses derived from Profile>Global>Currencies Info', 0);

insert into SD_FIELDSALIAS (TABLE_NAME, FIELD_NAME, ALIAS, COLUMN_ALIAS, FIELD_ID, FIELDTYPE, CONTROL_TYPE, FORMAT_STYLE, CONTENT_SOURCE, FAILURE_ACTION, ACCESS_KEY, MAX_LENGTH, DEFAULT_VALUE, COLUMN_WIDTH, DESCRIPTION, DEFAULT_VALUE_TYPE)
values ('BANKS', 'MIN_ACC_LENGTH', 'Min account no. length', null, 27017, 'NUMBER', 1, 1, null, 0, ' ', '2', null, 2, 'Min digits in account number for general  or specific processes', 0);

insert into SD_FIELDSALIAS (TABLE_NAME, FIELD_NAME, ALIAS, COLUMN_ALIAS, FIELD_ID, FIELDTYPE, CONTROL_TYPE, FORMAT_STYLE, CONTENT_SOURCE, FAILURE_ACTION, ACCESS_KEY, MAX_LENGTH, DEFAULT_VALUE, COLUMN_WIDTH, DESCRIPTION, DEFAULT_VALUE_TYPE)
values ('BANKS', 'PROCESSING_STATUS', 'Processing status', null, 27009, 'STRING', 4, 1, 'PROCSTATUS', 0, ' ', '10', null, 0, null, 0);

insert into SD_FIELDSALIAS (TABLE_NAME, FIELD_NAME, ALIAS, COLUMN_ALIAS, FIELD_ID, FIELDTYPE, CONTROL_TYPE, FORMAT_STYLE, CONTENT_SOURCE, FAILURE_ACTION, ACCESS_KEY, MAX_LENGTH, DEFAULT_VALUE, COLUMN_WIDTH, DESCRIPTION, DEFAULT_VALUE_TYPE)
values ('BANKS', 'CUST_CODE', 'Bank info party code', 'Party code', 27015, 'STRING', 2, 1, 'P_=191', 0, ' ', '20', null, 0, 'Code of bank that operates this office. Name of bank automatically displayed.', 0);

insert into SD_FIELDSALIAS (TABLE_NAME, FIELD_NAME, ALIAS, COLUMN_ALIAS, FIELD_ID, FIELDTYPE, CONTROL_TYPE, FORMAT_STYLE, CONTENT_SOURCE, FAILURE_ACTION, ACCESS_KEY, MAX_LENGTH, DEFAULT_VALUE, COLUMN_WIDTH, DESCRIPTION, DEFAULT_VALUE_TYPE)
values ('BANKS', 'DEF_BOOKNG_ENT', 'Default booking entity', null, 27029, 'STRING', 2, 1, '|SELECT REASONCODE, REASONDESCRIPTION FROM REASONS  WHERE REASONTYPE = ''BOOKNG_ENT''@@@list-columns:REASONS.REASONCODE, REASONS.REASONDESCRIPTION', 0, null, '10', null, 0, null, 0);

insert into SD_FIELDSALIAS (TABLE_NAME, FIELD_NAME, ALIAS, COLUMN_ALIAS, FIELD_ID, FIELDTYPE, CONTROL_TYPE, FORMAT_STYLE, CONTENT_SOURCE, FAILURE_ACTION, ACCESS_KEY, MAX_LENGTH, DEFAULT_VALUE, COLUMN_WIDTH, DESCRIPTION, DEFAULT_VALUE_TYPE)
values ('BANKS', 'DEF_CNSLD_PNL_POST', 'Consolidated P&L posting entries', null, 27028, 'STRING', 4, 1, 'CNSLD_PNL_POST', 0, null, null, null, 0, null, 0);

insert into SD_FIELDSALIAS (TABLE_NAME, FIELD_NAME, ALIAS, COLUMN_ALIAS, FIELD_ID, FIELDTYPE, CONTROL_TYPE, FORMAT_STYLE, CONTENT_SOURCE, FAILURE_ACTION, ACCESS_KEY, MAX_LENGTH, DEFAULT_VALUE, COLUMN_WIDTH, DESCRIPTION, DEFAULT_VALUE_TYPE)
values ('BANKS', 'OTHER_BASE_CCY', 'Base currency', null, null, 'STRING', 2, 1, null, 0, ' ', '3', null, 0, 'Code for base currency this office uses derived from Profile>Global>Currencies Info', 0);

insert into SD_FIELDSALIAS (TABLE_NAME, FIELD_NAME, ALIAS, COLUMN_ALIAS, FIELD_ID, FIELDTYPE, CONTROL_TYPE, FORMAT_STYLE, CONTENT_SOURCE, FAILURE_ACTION, ACCESS_KEY, MAX_LENGTH, DEFAULT_VALUE, COLUMN_WIDTH, DESCRIPTION, DEFAULT_VALUE_TYPE)
values ('BANKS', 'CUTOFF_NAME', 'Default cutoff name', null, null, 'STRING', 2, 1, 'P_=26', 0, ' ', '25', null, 0, null, 0);

insert into SD_FIELDSALIAS (TABLE_NAME, FIELD_NAME, ALIAS, COLUMN_ALIAS, FIELD_ID, FIELDTYPE, CONTROL_TYPE, FORMAT_STYLE, CONTENT_SOURCE, FAILURE_ACTION, ACCESS_KEY, MAX_LENGTH, DEFAULT_VALUE, COLUMN_WIDTH, DESCRIPTION, DEFAULT_VALUE_TYPE)
values ('BANKS', 'HISTORY_PROC_DT', 'Archive date', null, null, 'DATE', 6, 26, null, 0, 'd', '7', null, 0, 'Business date on which message will be archived', 0);

insert into SD_FIELDSALIAS (TABLE_NAME, FIELD_NAME, ALIAS, COLUMN_ALIAS, FIELD_ID, FIELDTYPE, CONTROL_TYPE, FORMAT_STYLE, CONTENT_SOURCE, FAILURE_ACTION, ACCESS_KEY, MAX_LENGTH, DEFAULT_VALUE, COLUMN_WIDTH, DESCRIPTION, DEFAULT_VALUE_TYPE)
values ('BANKS', 'DEF_CNSLD_FEE_POST', 'Consolidated fee posting entries', null, 27027, 'STRING', 4, 1, 'CNSLDFEEPOST', 0, null, null, '1', 0, null, 0);

insert into SD_FIELDSALIAS (TABLE_NAME, FIELD_NAME, ALIAS, COLUMN_ALIAS, FIELD_ID, FIELDTYPE, CONTROL_TYPE, FORMAT_STYLE, CONTENT_SOURCE, FAILURE_ACTION, ACCESS_KEY, MAX_LENGTH, DEFAULT_VALUE, COLUMN_WIDTH, DESCRIPTION, DEFAULT_VALUE_TYPE)
values ('BANKS', 'POST_ZERO_FEE', 'Include posting entry for 0 amount fee', null, null, 'BOOL', 8, 1, 'GEN_BOOL', 0, null, '0', '0', 0, null, 2);

insert into SD_FIELDSALIAS (TABLE_NAME, FIELD_NAME, ALIAS, COLUMN_ALIAS, FIELD_ID, FIELDTYPE, CONTROL_TYPE, FORMAT_STYLE, CONTENT_SOURCE, FAILURE_ACTION, ACCESS_KEY, MAX_LENGTH, DEFAULT_VALUE, COLUMN_WIDTH, DESCRIPTION, DEFAULT_VALUE_TYPE)
values ('BANKS', 'DEF_CNSLD_TAX_PNL_POST', 'Consolidated tax P&L posting entries', null, null, 'STRING', 4, 1, 'CNSLD_PNL_POST', 0, null, null, null, 0, null, 0);

insert into SD_FIELDSALIAS (TABLE_NAME, FIELD_NAME, ALIAS, COLUMN_ALIAS, FIELD_ID, FIELDTYPE, CONTROL_TYPE, FORMAT_STYLE, CONTENT_SOURCE, FAILURE_ACTION, ACCESS_KEY, MAX_LENGTH, DEFAULT_VALUE, COLUMN_WIDTH, DESCRIPTION, DEFAULT_VALUE_TYPE)
values ('BANKS', 'DEF_CNSLD_TAX_POST', 'Consolidated tax posting entries', null, null, 'STRING', 4, 1, 'CNSLDFEEPOST', 0, null, null, '1', 0, null, 0);

insert into SD_FIELDSALIAS (TABLE_NAME, FIELD_NAME, ALIAS, COLUMN_ALIAS, FIELD_ID, FIELDTYPE, CONTROL_TYPE, FORMAT_STYLE, CONTENT_SOURCE, FAILURE_ACTION, ACCESS_KEY, MAX_LENGTH, DEFAULT_VALUE, COLUMN_WIDTH, DESCRIPTION, DEFAULT_VALUE_TYPE)
values ('BANKS', 'EFFECTIVE_DATE', 'As of', 'Effective date', 27022, 'DATE', 5, 26, null, 0, ' ', '10', null, 0, 'Date on which changes become effective', 0);

insert into SD_FIELDSALIAS (TABLE_NAME, FIELD_NAME, ALIAS, COLUMN_ALIAS, FIELD_ID, FIELDTYPE, CONTROL_TYPE, FORMAT_STYLE, CONTENT_SOURCE, FAILURE_ACTION, ACCESS_KEY, MAX_LENGTH, DEFAULT_VALUE, COLUMN_WIDTH, DESCRIPTION, DEFAULT_VALUE_TYPE)
values ('BANKS', 'REFERENCEBRANCH', 'ID in other systems', null, 27001, 'STRING', 1, 1, null, 0, ' ', '20', null, 0, null, 0);

insert into SD_FIELDSALIAS (TABLE_NAME, FIELD_NAME, ALIAS, COLUMN_ALIAS, FIELD_ID, FIELDTYPE, CONTROL_TYPE, FORMAT_STYLE, CONTENT_SOURCE, FAILURE_ACTION, ACCESS_KEY, MAX_LENGTH, DEFAULT_VALUE, COLUMN_WIDTH, DESCRIPTION, DEFAULT_VALUE_TYPE)
values ('BANKS', 'ESTM_DUPLICATE_CHECK_IND', 'eSTM Duplicate check', null, null, 'NUMBER', 8, 1, null, 0, null, '1', '0', 0, 'Indication whether duplicate check should be performed on eSTM packages', 0);

insert into SD_FIELDSALIAS (TABLE_NAME, FIELD_NAME, ALIAS, COLUMN_ALIAS, FIELD_ID, FIELDTYPE, CONTROL_TYPE, FORMAT_STYLE, CONTENT_SOURCE, FAILURE_ACTION, ACCESS_KEY, MAX_LENGTH, DEFAULT_VALUE, COLUMN_WIDTH, DESCRIPTION, DEFAULT_VALUE_TYPE)
values ('BANKS', 'FORMAT_NAME', 'Format name', 'Format name', null, 'STRING', 2, 1, '|SELECT DISTINCT FIE.FORMAT_NAME FROM EBPRODUCT_FORMATS EF, FORMAT_IDENTIFIERS_EXT FIE WHERE FIE.FORMAT_NAME = EF.FORMAT_NAME AND FIE.GPP_GMP_CATALOG_ELEMENT_NAME = ''FORMAT_FAMILY'' AND FIE.ELEMENT_VALUE = ''PAIN.002''@@@list-columns:FIE.FORMAT_NAME', 0, ' ', '256', null, 0, 'Possible format names of the eSTM sent by the back end that should go through duplicate check', 0);

insert into SD_FIELDSALIAS (TABLE_NAME, FIELD_NAME, ALIAS, COLUMN_ALIAS, FIELD_ID, FIELDTYPE, CONTROL_TYPE, FORMAT_STYLE, CONTENT_SOURCE, FAILURE_ACTION, ACCESS_KEY, MAX_LENGTH, DEFAULT_VALUE, COLUMN_WIDTH, DESCRIPTION, DEFAULT_VALUE_TYPE)
values ('BANKS', 'RFF_DUPLICATE_CHECK_IND', 'RFF Duplicate check', null, null, 'NUMBER', 8, 1, null, 0, null, '1', '0', 0, 'Indication whether duplicate check should be performed on RFF packages', 0);

insert into SD_FIELDSALIAS (TABLE_NAME, FIELD_NAME, ALIAS, COLUMN_ALIAS, FIELD_ID, FIELDTYPE, CONTROL_TYPE, FORMAT_STYLE, CONTENT_SOURCE, FAILURE_ACTION, ACCESS_KEY, MAX_LENGTH, DEFAULT_VALUE, COLUMN_WIDTH, DESCRIPTION, DEFAULT_VALUE_TYPE)
values ('BANKS', 'STATEMENT_DUPLICATE_CHECK_IND', 'Statements duplicate check', null, null, 'BOOL', 8, 1, 'GEN_BOOL', 0, null, '1', '0', 0, 'Indication whether duplicate check should be performed on Statements', 0);

insert into SD_FIELDSALIAS (TABLE_NAME, FIELD_NAME, ALIAS, COLUMN_ALIAS, FIELD_ID, FIELDTYPE, CONTROL_TYPE, FORMAT_STYLE, CONTENT_SOURCE, FAILURE_ACTION, ACCESS_KEY, MAX_LENGTH, DEFAULT_VALUE, COLUMN_WIDTH, DESCRIPTION, DEFAULT_VALUE_TYPE)
values ('BANKS', 'STATEMENT_FORMAT_NAME', 'Format name', null, null, 'STRING', 2, 1, '|SELECT FORMAT_NAME FROM FORMATS WHERE FORMAT_SUBTYPE = ''FST_STATEMENT'' AND STATUS = ''AC''@@@list-columns:FORMATS.FORMAT_NAME', 0, ' ', '256', null, 0, 'Possible format names of the Statments sent by the back end that should go through duplicate check', 0);

insert into SD_FIELDSALIAS (TABLE_NAME, FIELD_NAME, ALIAS, COLUMN_ALIAS, FIELD_ID, FIELDTYPE, CONTROL_TYPE, FORMAT_STYLE, CONTENT_SOURCE, FAILURE_ACTION, ACCESS_KEY, MAX_LENGTH, DEFAULT_VALUE, COLUMN_WIDTH, DESCRIPTION, DEFAULT_VALUE_TYPE)
values ('BANKS', 'FILE_DUPLICATE_CHECK_IND', 'File Duplicate check', null, null, 'NUMBER', 8, 1, null, 0, null, '5', '1', 0, null, 0);

insert into SD_FIELDSALIAS (TABLE_NAME, FIELD_NAME, ALIAS, COLUMN_ALIAS, FIELD_ID, FIELDTYPE, CONTROL_TYPE, FORMAT_STYLE, CONTENT_SOURCE, FAILURE_ACTION, ACCESS_KEY, MAX_LENGTH, DEFAULT_VALUE, COLUMN_WIDTH, DESCRIPTION, DEFAULT_VALUE_TYPE)
values ('BANKS', 'FORCE_LEAD_ZERO', 'Force padding zero', null, 27013, 'NUMBER', 8, 1, null, 0, ' ', '22', '0', 15, 'If selected, leading zeros are inserted in account number to produce min length', 2);

insert into SD_FIELDSALIAS (TABLE_NAME, FIELD_NAME, ALIAS, COLUMN_ALIAS, FIELD_ID, FIELDTYPE, CONTROL_TYPE, FORMAT_STYLE, CONTENT_SOURCE, FAILURE_ACTION, ACCESS_KEY, MAX_LENGTH, DEFAULT_VALUE, COLUMN_WIDTH, DESCRIPTION, DEFAULT_VALUE_TYPE)
values ('BANKS', 'GPI_MEMBER', 'GPI member', null, 27030, 'BOOL', 8, 1, 'GEN_BOOL', 0, ' ', '22', '0', 0, 'Indicates whether GPI members are subscribed to the SWIFT GPI gCCT service.', 2);

insert into SD_FIELDSALIAS (TABLE_NAME, FIELD_NAME, ALIAS, COLUMN_ALIAS, FIELD_ID, FIELDTYPE, CONTROL_TYPE, FORMAT_STYLE, CONTENT_SOURCE, FAILURE_ACTION, ACCESS_KEY, MAX_LENGTH, DEFAULT_VALUE, COLUMN_WIDTH, DESCRIPTION, DEFAULT_VALUE_TYPE)
values ('BANKS', 'HEDGE_CURRENCY', 'Hedge currency', null, 27007, 'STRING', 4, 1, 'CURRENCY', 0, ' ', '3', null, 0, null, 0);

insert into SD_FIELDSALIAS (TABLE_NAME, FIELD_NAME, ALIAS, COLUMN_ALIAS, FIELD_ID, FIELDTYPE, CONTROL_TYPE, FORMAT_STYLE, CONTENT_SOURCE, FAILURE_ACTION, ACCESS_KEY, MAX_LENGTH, DEFAULT_VALUE, COLUMN_WIDTH, DESCRIPTION, DEFAULT_VALUE_TYPE)
values ('BANKS', 'IN_SCOPE_IND', 'In scope', null, null, 'NUMBER', 8, 1, null, 0, null, '5', '1', 0, null, 0);

insert into SD_FIELDSALIAS (TABLE_NAME, FIELD_NAME, ALIAS, COLUMN_ALIAS, FIELD_ID, FIELDTYPE, CONTROL_TYPE, FORMAT_STYLE, CONTENT_SOURCE, FAILURE_ACTION, ACCESS_KEY, MAX_LENGTH, DEFAULT_VALUE, COLUMN_WIDTH, DESCRIPTION, DEFAULT_VALUE_TYPE)
values ('BANKS', 'ISO_CODE_LOGICAL_FIELD', 'HR code source', null, null, 'STRING', 9, 1, null, 0, null, '50', null, 15, null, 0);

insert into SD_FIELDSALIAS (TABLE_NAME, FIELD_NAME, ALIAS, COLUMN_ALIAS, FIELD_ID, FIELDTYPE, CONTROL_TYPE, FORMAT_STYLE, CONTENT_SOURCE, FAILURE_ACTION, ACCESS_KEY, MAX_LENGTH, DEFAULT_VALUE, COLUMN_WIDTH, DESCRIPTION, DEFAULT_VALUE_TYPE)
values ('BANKS', 'V_ISO_CODE_LOGICAL_FIELD', 'HR code source', null, null, 'STRING', 2, 1, '|SELECT VALUE_CODE,VALUE_DESCR FROM fields_values WHERE FIELD_TYPE= ''HR_CODE_LF''@@@list-columns:VALUE_CODE,VALUE_DESCR', 0, null, '50', null, 15, null, 0);

insert into SD_FIELDSALIAS (TABLE_NAME, FIELD_NAME, ALIAS, COLUMN_ALIAS, FIELD_ID, FIELDTYPE, CONTROL_TYPE, FORMAT_STYLE, CONTENT_SOURCE, FAILURE_ACTION, ACCESS_KEY, MAX_LENGTH, DEFAULT_VALUE, COLUMN_WIDTH, DESCRIPTION, DEFAULT_VALUE_TYPE)
values ('BANKS', 'LANG', 'Language', null, null, 'STRING', 4, 1, 'LANGUAGE', 0, ' ', null, 'ENGLISH', 0, 'Office land system language for processing office. Default: English', 0);

insert into SD_FIELDSALIAS (TABLE_NAME, FIELD_NAME, ALIAS, COLUMN_ALIAS, FIELD_ID, FIELDTYPE, CONTROL_TYPE, FORMAT_STYLE, CONTENT_SOURCE, FAILURE_ACTION, ACCESS_KEY, MAX_LENGTH, DEFAULT_VALUE, COLUMN_WIDTH, DESCRIPTION, DEFAULT_VALUE_TYPE)
values ('BANKS', 'LIMIT_CCY', 'Limit Base currency', null, 27004, 'STRING', 4, 1, 'CURRENCY', 0, ' ', '3', null, 0, 'Code for base currency this office uses derived from Profile>Global>Currencies Info', 0);

insert into SD_FIELDSALIAS (TABLE_NAME, FIELD_NAME, ALIAS, COLUMN_ALIAS, FIELD_ID, FIELDTYPE, CONTROL_TYPE, FORMAT_STYLE, CONTENT_SOURCE, FAILURE_ACTION, ACCESS_KEY, MAX_LENGTH, DEFAULT_VALUE, COLUMN_WIDTH, DESCRIPTION, DEFAULT_VALUE_TYPE)
values ('BANKS', 'LIMIT_CCY', 'Limit Base currency', null, null, 'STRING', 4, 1, 'CURRENCY', 0, ' ', '3', null, 0, 'Code for base currency this office uses derived from Profile>Global>Currencies Info', 0);

insert into SD_FIELDSALIAS (TABLE_NAME, FIELD_NAME, ALIAS, COLUMN_ALIAS, FIELD_ID, FIELDTYPE, CONTROL_TYPE, FORMAT_STYLE, CONTENT_SOURCE, FAILURE_ACTION, ACCESS_KEY, MAX_LENGTH, DEFAULT_VALUE, COLUMN_WIDTH, DESCRIPTION, DEFAULT_VALUE_TYPE)
values ('BANKS', 'NEXT_BSNESSDATE', 'Next business date', null, null, 'DATE', 6, 26, null, 0, 'd', '7', null, 0, 'Next calculated business date for the office', 0);

insert into SD_FIELDSALIAS (TABLE_NAME, FIELD_NAME, ALIAS, COLUMN_ALIAS, FIELD_ID, FIELDTYPE, CONTROL_TYPE, FORMAT_STYLE, CONTENT_SOURCE, FAILURE_ACTION, ACCESS_KEY, MAX_LENGTH, DEFAULT_VALUE, COLUMN_WIDTH, DESCRIPTION, DEFAULT_VALUE_TYPE)
values ('BANKS', 'OFFC_ADDR1', 'Office address', null, 27011, 'STRING', 1, 1, null, 0, 'a', '50', null, 0, 'Addr1, Addr2, city of the selected party are automatically displayed', 0);

insert into SD_FIELDSALIAS (TABLE_NAME, FIELD_NAME, ALIAS, COLUMN_ALIAS, FIELD_ID, FIELDTYPE, CONTROL_TYPE, FORMAT_STYLE, CONTENT_SOURCE, FAILURE_ACTION, ACCESS_KEY, MAX_LENGTH, DEFAULT_VALUE, COLUMN_WIDTH, DESCRIPTION, DEFAULT_VALUE_TYPE)
values ('BANKS', 'OFFC_NAME', 'Office name', null, 27005, 'STRING', 1, 1, null, 0, 'n', '30', null, 0, 'Name of local branch office', 0);

insert into SD_FIELDSALIAS (TABLE_NAME, FIELD_NAME, ALIAS, COLUMN_ALIAS, FIELD_ID, FIELDTYPE, CONTROL_TYPE, FORMAT_STYLE, CONTENT_SOURCE, FAILURE_ACTION, ACCESS_KEY, MAX_LENGTH, DEFAULT_VALUE, COLUMN_WIDTH, DESCRIPTION, DEFAULT_VALUE_TYPE)
values ('BANKS', 'ORDER_TYPE', 'Order type', 'Order type', null, 'STRING', 2, 1, '|SELECT FV.VALUE_CODE FROM FIELDS_VALUES FV WHERE FV.FIELD_TYPE = ''DUP_RFF_ORDER_TYPE''@@@list-columns:FV.VALUE_CODE', 0, ' ', '256', null, 0, 'Order type list for which duplicate check should be applied on', 0);

insert into SD_FIELDSALIAS (TABLE_NAME, FIELD_NAME, ALIAS, COLUMN_ALIAS, FIELD_ID, FIELDTYPE, CONTROL_TYPE, FORMAT_STYLE, CONTENT_SOURCE, FAILURE_ACTION, ACCESS_KEY, MAX_LENGTH, DEFAULT_VALUE, COLUMN_WIDTH, DESCRIPTION, DEFAULT_VALUE_TYPE)
values ('BANKS', 'PREV_BSNESSDATE', 'Previous business date', null, null, 'DATE', 6, 26, null, 0, 'd', '7', null, 0, null, 0);

