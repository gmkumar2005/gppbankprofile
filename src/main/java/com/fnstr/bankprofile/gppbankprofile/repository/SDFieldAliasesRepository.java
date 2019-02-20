package com.fnstr.bankprofile.gppbankprofile.repository;

import com.fnstr.bankprofile.gppbankprofile.model.SDFieldAlias;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Component;

@Component
public interface SDFieldAliasesRepository extends JpaRepository<SDFieldAlias, String> {
}
