package com.fnstr.bankprofile.gppbankprofile.resolver;

import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.data.domain.Page;

@Data
@NoArgsConstructor
abstract class AbstractPageableResponse {

    PageInfo pageInfo;

    AbstractPageableResponse(Page page) {
        this.pageInfo = new PageInfo(page);
    }

}
