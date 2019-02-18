package com.fnstr.bankprofile.gppbankprofile;

import com.fnstr.bankprofile.gppbankprofile.model.Bank;
import com.fnstr.bankprofile.gppbankprofile.repository.BanksRepository;
import com.fnstr.bankprofile.gppbankprofile.resolver.BankExample;
import com.fnstr.bankprofile.gppbankprofile.resolver.PageRequestBuilder;
import lombok.extern.slf4j.Slf4j;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.stream.Stream;

import static org.assertj.core.api.Assertions.assertThat;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;

@RunWith(SpringRunner.class)
@DataJpaTest
@Slf4j
public class GppbankprofileJPATests {

    @Autowired
    private BanksRepository banksRepository;


    @Test
    public void testRepositoryCount() {
        assertThat(banksRepository.count()).isGreaterThan(1);
    }

    @Test
    public void testQueryBYExample() {
        BankExample bankExample = new BankExample("dh1", null, null, null);
        Example<Bank> filter = BankExample.convert(bankExample);
        Page<Bank> banksfound = banksRepository.findAll(filter, PageRequest.of(0, 5));
        banksfound.stream().forEach((content1) -> log.info(" FOUND : " + content1));
        assertThat(banksfound.getContent().size()).isGreaterThan(0);
    }

    @Test
    public void testPaging() {
        BankExample bankExample = new BankExample(null, null, null, null);
        Example<Bank> filter = BankExample.convert(bankExample);
        PageRequest p = PageRequestBuilder.getPageRequest(1, 5, null);
        Page<Bank> banksfound = banksRepository.findAll(filter,p);
        banksfound.stream().forEach((content1) -> log.info(" FOUND : " + content1));
        assertThat(banksfound.getContent().size()).isEqualTo(5);
    }

    @Test
    public void testPagingAndSorting() {
        BankExample bankExample = new BankExample(null, null, null, null);
        Example<Bank> filter = BankExample.convert(bankExample);
        PageRequest p = PageRequestBuilder.getPageRequest(1, 5, "-officeName,countryCode");
        Page<Bank> banksfound = banksRepository.findAll(filter,p);
        banksfound.stream().forEach((content1) -> log.info(" FOUND : " + content1));
        assertThat(banksfound.getContent().size()).isEqualTo(5);
    }
    @Test
    public void valiadateSortFields() {
        Long filedCount = Stream.of(Bank.class.getDeclaredFields()).filter(field -> field.getName().equals("officeName")).count();
        assertThat(filedCount).isGreaterThan(0);
        Long fieldCount1 = Stream.of(Bank.class.getDeclaredFields()).filter(field -> field.getName().equals("officeName1")).count();
        assertThat(fieldCount1).isEqualTo(0);
    }
}


