package com.fnstr.bankprofile.gppbankprofile.resolver;

import com.coxautodev.graphql.tools.GraphQLQueryResolver;
import com.fnstr.bankprofile.gppbankprofile.model.Bank;
import com.fnstr.bankprofile.gppbankprofile.model.SDFieldAlias;
import com.fnstr.bankprofile.gppbankprofile.repository.BanksRepository;
import com.fnstr.bankprofile.gppbankprofile.repository.SDFieldAliasesRepository;
import org.apache.commons.lang3.ObjectUtils;
import org.springframework.data.domain.*;
import org.springframework.stereotype.Component;

@Component
public class BankQueryResolver  implements GraphQLQueryResolver {
    public BankQueryResolver(BanksRepository banksRepository, SDFieldAliasesRepository sdFieldAliasesRepository) {
        this.banksRepository = banksRepository;
        this.sdFieldAliasesRepository = sdFieldAliasesRepository;
    }

    private BanksRepository banksRepository;

    private SDFieldAliasesRepository sdFieldAliasesRepository;

    public Iterable<Bank> findAllBanks() {
        return banksRepository.findAll();
    }

    public long countBanks(){
        return banksRepository.count();
    }

    public Iterable<Bank> showBanks(int limit,int offset){
        return banksRepository.findAll( PageRequest.of(offset, limit, Sort.by("officeName")));
    }

    public BankPageableResponse banks(final InputPage inputPage,  final BankExample bankExample, final String sort) {
        Example<Bank>  filter = BankExample.convert(bankExample);
        if(inputPage != null && inputPage.getPage()<=0){
            throw new InvalidParameterException("page parameter has to be greater than 0",String.valueOf(inputPage.getPage()));
        }
        InputPage defaultPage = ObjectUtils.defaultIfNull(inputPage, new InputPage(1,20));
        Page<Bank> banksfound =  banksRepository.findAll(filter,PageRequestBuilder.getPageRequest(defaultPage.getPage(),defaultPage.getSize(),sort));
        return new BankPageableResponse(banksfound);
    }

    public Iterable<SDFieldAlias> showMetaData(String tablename){
        SDFieldAlias sdFieldAliasExample = new SDFieldAlias();
        sdFieldAliasExample.setTableName(tablename);
        return sdFieldAliasesRepository.findAll(Example.of(sdFieldAliasExample));
    }
}
