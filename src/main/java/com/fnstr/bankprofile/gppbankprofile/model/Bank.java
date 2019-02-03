package com.fnstr.bankprofile.gppbankprofile.model;

import org.hibernate.annotations.Immutable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.util.Objects;

@Entity
@Immutable
@Table(name = "Banks")
public class Bank {
    public Bank(String office, String officeName, String countryCode, String accountNo) {
        this.office = office;
        this.officeName = officeName;
        this.countryCode = countryCode;
        this.accountNo = accountNo;
    }

    public Bank() {
    }

    public String getOffice() {
        return office;
    }

    @Override
    public String toString() {
        return "Bank{" +
                "office='" + office + '\'' +
                ", officeName='" + officeName + '\'' +
                ", countryCode='" + countryCode + '\'' +
                ", accountNo='" + accountNo + '\'' +
                '}';
    }

    public void setOffice(String office) {
        this.office = office;
    }

    public String getOfficeName() {
        return officeName;
    }

    public void setOfficeName(String officeName) {
        this.officeName = officeName;
    }

    public String getCountryCode() {
        return countryCode;
    }

    public void setCountryCode(String countryCode) {
        this.countryCode = countryCode;
    }

    public String getAccountNo() {
        return accountNo;
    }

    public void setAccountNo(String accountNo) {
        this.accountNo = accountNo;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Bank bank = (Bank) o;
        return office.equals(bank.office) &&
                officeName.equals(bank.officeName) &&
                Objects.equals(countryCode, bank.countryCode) &&
                Objects.equals(accountNo, bank.accountNo);
    }

    @Override
    public int hashCode() {
        return Objects.hash(office, officeName, countryCode, accountNo);
    }

    @Id
    @Column(name = "OFFICE", nullable = false)
    private String office;

    @Column(name = "OFFC_NAME", nullable = false)
    private String officeName;

    @Column(name = "COUNTRYCODE", nullable = true)
    private String countryCode;

    @Column(name = "ACCOUNTNO", nullable = true)
    private String accountNo;

}
