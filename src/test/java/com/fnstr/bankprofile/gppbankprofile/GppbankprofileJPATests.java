package com.fnstr.bankprofile.gppbankprofile;

import com.fnstr.bankprofile.gppbankprofile.repository.BanksRepository;
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
import org.springframework.http.MediaType;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.ResultActions;

import java.util.Collections;
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


}


