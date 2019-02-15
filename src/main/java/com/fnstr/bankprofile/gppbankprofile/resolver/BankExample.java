package com.fnstr.bankprofile.gppbankprofile.resolver;

import com.fnstr.bankprofile.gppbankprofile.model.Bank;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.ExampleMatcher;


@Data
@NoArgsConstructor
@AllArgsConstructor
public class BankExample {
    private String office;

    private String officeName;

    private String countryCode;

    private String accountNo;

    Example<Bank>  convert() {
        return convert(this);
    }

    public static Example<Bank> convert(BankExample bankExample) {
        Bank bank = bankExample != null ? new Bank(bankExample.office, bankExample.officeName, bankExample.countryCode, bankExample.accountNo) : null;
//        return Example.of(bank, ExampleMatcher.matchingAll().withIgnoreCase());
        return Example.of(bank);
    }
}
