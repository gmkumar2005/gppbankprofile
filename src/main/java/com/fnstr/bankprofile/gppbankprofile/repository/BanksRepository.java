package com.fnstr.bankprofile.gppbankprofile.repository;

import com.fnstr.bankprofile.gppbankprofile.model.Bank;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Component;

@Component
public interface BanksRepository extends JpaRepository<Bank, String> {

}
