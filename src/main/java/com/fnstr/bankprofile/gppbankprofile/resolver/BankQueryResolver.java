package com.fnstr.bankprofile.gppbankprofile.resolver;

import com.coxautodev.graphql.tools.GraphQLQueryResolver;
import com.fnstr.bankprofile.gppbankprofile.model.Bank;
import com.fnstr.bankprofile.gppbankprofile.repository.BanksRepository;
import org.springframework.data.domain.*;
import org.springframework.stereotype.Component;

@Component
public class BankQueryResolver  implements GraphQLQueryResolver {
    public BankQueryResolver(BanksRepository banksRepository) {
        this.banksRepository = banksRepository;
    }

    private BanksRepository banksRepository;

    public Iterable<Bank> findAllBanks() {
        return banksRepository.findAll();
    }

    public long countBanks(){
        return banksRepository.count();
    }

    public Iterable<Bank> showBanks(int limit,int offset){
        Page<Bank> banksfound = banksRepository.findAll( PageRequest.of(offset, limit, Sort.by("officeName")));
        return banksfound;
    }

    public BankPageableResponse banks(final InputPage inputPage,  final BankExample bankExample) {
        Example<Bank>  filter = BankExample.convert(bankExample);
        Page<Bank> banksfound  = banksRepository.findAll(filter,PageRequest.of(0, 5));
        return new BankPageableResponse(banksfound);
    }
}
