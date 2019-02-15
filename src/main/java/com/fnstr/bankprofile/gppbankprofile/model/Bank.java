package com.fnstr.bankprofile.gppbankprofile.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.hibernate.annotations.Immutable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Immutable
@Table(name = "Banks")
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Bank {
    @Id
    @Column(name = "OFFICE", nullable = false)
    private String office;

    @Column(name = "OFFC_NAME", nullable = false)
    private String officeName;

    @Column(name = "COUNTRYCODE")
    private String countryCode;

    @Column(name = "ACCOUNTNO")
    private String accountNo;

}
