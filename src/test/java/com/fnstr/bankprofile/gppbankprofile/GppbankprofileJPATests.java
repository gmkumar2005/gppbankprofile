package com.fnstr.bankprofile.gppbankprofile;

import com.fnstr.bankprofile.gppbankprofile.model.Bank;
import com.fnstr.bankprofile.gppbankprofile.repository.BanksRepository;
import com.fnstr.bankprofile.gppbankprofile.resolver.BankExample;
import com.fnstr.bankprofile.gppbankprofile.resolver.BankPageableResponse;
import com.fnstr.bankprofile.gppbankprofile.resolver.BankQueryResolver;
import com.oembedler.moon.graphiql.boot.GraphiQLController;
import lombok.extern.slf4j.Slf4j;
import lombok.val;
import org.json.JSONObject;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.boot.test.autoconfigure.web.servlet.WebMvcTest;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.http.MediaType;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.ResultActions;

import java.util.Collections;
import java.util.List;
import java.util.Map;

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
        Page<Bank> banksfound  = banksRepository.findAll(filter,PageRequest.of(0, 5));
        banksfound.stream().forEach((content1)-> log.info(" FOUND : " + content1));
        assertThat(banksfound.getContent().size()).isGreaterThan(0);
    }
}


