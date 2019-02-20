package com.fnstr.bankprofile.gppbankprofile.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.hibernate.annotations.Immutable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.util.Date;

@Entity
@Immutable
@Table(name = "Banks")
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Bank {

    // start
    public Bank(String office, String officeName, String countryCode, String accountNo){
        this.office = office;
        this.officeName= officeName;
        this.countryCode= countryCode;
        this.accountNo=accountNo;
    }
    @Id
    @Column(name = "OFFICE")
    private String office;
    @Column(name = "UPDATE_DATE")
    private Date updateDate;
    @Column(name = "TIME")
    private String time;
    @Column(name = "OPERATOR")
    private String operator;
    @Column(name = "OFFC_NAME")
    private String officeName;
    @Column(name = "OFFC_ADDR1")
    private String offcAddr1;
    @Column(name = "OFFC_ADDR2")
    private String offcAddr2;
    @Column(name = "BSNESSDATE")
    private Date bsnessdate;
    @Column(name = "REL_ORDER")
    private String relOrder;
    @Column(name = "FPRINT")
    private String fprint;
    @Column(name = "TIME_STAMP")
    private String timeStamp;
    @Column(name = "CURRENCY")
    private String currency;
    @Column(name = "COUNTRYCODE")
    private String countryCode;
    @Column(name = "CALNAME")
    private String calname;
    @Column(name = "ACCOUNTNO")
    private String accountNo;
    @Column(name = "MIN_ACC_LENGTH")
    private String minAccLength;
    @Column(name = "MAX_ACC_LENGTH")
    private String maxAccLength;
    @Column(name = "HEDGE_CURRENCY")
    private String hedgeCurrency;
    @Column(name = "CUST_CODE")
    private String custCode;
    @Column(name = "REC_STATUS")
    private String recStatus;
    @Column(name = "LEGAL_ENTITY")
    private String legalEntity;
    @Column(name = "MIN_FEE_TRANS_AMOUNT")
    private Float minFeeTransAmount;
    @Column(name = "FEE_CURRENCY")
    private String feeCurrency;
    @Column(name = "PROFILE_CHANGE_STATUS")
    private String profileChangeStatus;
    @Column(name = "PENDING_ACTION")
    private String pendingAction;
    @Column(name = "PROCESSING_STATUS")
    private String processingStatus;
    @Column(name = "EFFECTIVE_DATE")
    private Date effectiveDate;
    @Column(name = "REFERENCEBRANCH")
    private String referencebranch;
    @Column(name = "FORCE_LEAD_ZERO")
    private Long forceLeadZero;
    @Column(name = "TRUNC_LEAD_ZERO")
    private Long truncLeadZero;
    @Column(name = "OTHER_BASE_CCY")
    private String otherBaseCcy;
    @Column(name = "NEXT_BSNESSDATE")
    private Date nextBsnessdate;
    @Column(name = "PREV_BSNESSDATE")
    private Date prevBsnessdate;
    @Column(name = "UID_BANKS")
    private String uidBanks;
    @Column(name = "CUTOFF_NAME")
    private String cutoffName;
    @Column(name = "HISTORY_PROC_DT")
    private Date historyProcDt;
    @Column(name = "LANG")
    private String lang;
    @Column(name = "DEF_BOOKNG_ENT")
    private String defBookngEnt;
    @Column(name = "DEF_CNSLD_FEE_POST")
    private Long defCnsldFeePost;
    @Column(name = "DEF_CNSLD_PNL_POST")
    private String defCnsldPnlPost;
    @Column(name = "POST_ZERO_FEE")
    private String postZeroFee;
    @Column(name = "BTCH_CTRL_ID")
    private String btchCtrlId;
    @Column(name = "DEF_CNSLD_TAX_POST")
    private String defCnsldTaxPost;
    @Column(name = "DEF_CNSLD_TAX_PNL_POST")
    private String defCnsldTaxPnlPost;
    @Column(name = "ISO_CODE_LOGICAL_FIELD")
    private String isoCodeLogicalField;
    @Column(name = "IN_SCOPE_IND")
    private Long inScopeInd;
    @Column(name = "FILE_DUPLICATE_CHECK_IND")
    private Long fileDuplicateCheckInd;
    @Column(name = "MIN_NUM_OF_AUTHORIZ_SUBSCRIBER")
    private Long minNumOfAuthorizSubscribe;
    @Column(name = "LIMIT_CCY")
    private String limitCcy;
    @Column(name = "RFF_DUPLICATE_CHECK_IND")
    private Long rffDuplicateCheckInd;
    @Column(name = "ESTM_DUPLICATE_CHECK_IND")
    private Long estmDuplicateCheckInd;
    @Column(name = "ORDER_TYPE")
    private String orderType;
    @Column(name = "FORMAT_NAME")
    private String formatName;
    @Column(name = "STATEMENT_DUPLICATE_CHECK_IND")
    private Long statementDuplicateCheckInd;
    @Column(name = "STATEMENT_FORMAT_NAME")
    private String statementFormatName;
    @Column(name = "CLRNG_STTLMT_ON_SNDNG_DT")
    private Long clrngSttlmtOnSndngDt;
    @Column(name = "GPI_MEMBER")
    private Long gpiMember;


    // end 


}
