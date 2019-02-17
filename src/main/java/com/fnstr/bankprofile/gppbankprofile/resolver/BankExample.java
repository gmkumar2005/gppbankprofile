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
        Bank bank1 = new Bank(bankExample.office, bankExample.officeName, bankExample.countryCode, bankExample.accountNo);
        return Example.of(bank1,ExampleMatcher.matchingAll().withIgnoreCase().withStringMatcher(ExampleMatcher.StringMatcher.CONTAINING));
    }
}
