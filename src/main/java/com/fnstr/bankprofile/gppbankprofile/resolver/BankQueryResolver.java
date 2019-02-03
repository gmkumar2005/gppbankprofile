package com.fnstr.bankprofile.gppbankprofile.resolver;

import com.coxautodev.graphql.tools.GraphQLQueryResolver;
import com.fnstr.bankprofile.gppbankprofile.model.Bank;
import com.fnstr.bankprofile.gppbankprofile.repository.BanksRepository;

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

}
