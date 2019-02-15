package com.fnstr.bankprofile.gppbankprofile.resolver;

import com.fnstr.bankprofile.gppbankprofile.model.Bank;
import lombok.Data;
import org.springframework.data.domain.Page;

import java.util.List;

@Data
public class BankPageableResponse extends AbstractPageableResponse {

    private List<Bank> content;

    public BankPageableResponse(Page<Bank> page) {
        super(page);
        this.content = page.getContent();
    }
}
