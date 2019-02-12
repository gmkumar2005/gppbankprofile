package com.fnstr.bankprofile.gppbankprofile;

import com.graphql.spring.boot.test.GraphQLResponse;
import com.graphql.spring.boot.test.GraphQLTest;
import com.graphql.spring.boot.test.GraphQLTestTemplate;
import lombok.extern.slf4j.Slf4j;
import lombok.val;
import net.minidev.json.JSONArray;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.core.AutoConfigureCache;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase;
import org.springframework.boot.test.autoconfigure.orm.jpa.AutoConfigureDataJpa;
import org.springframework.boot.test.autoconfigure.orm.jpa.AutoConfigureTestEntityManager;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.boot.test.autoconfigure.web.servlet.WebMvcTest;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.transaction.annotation.Transactional;

import static graphql.Assert.assertNotNull;
import static org.assertj.core.api.Assertions.assertThat;
import static org.junit.Assert.*;


@RunWith(SpringRunner.class)
@SpringBootTest(webEnvironment = SpringBootTest.WebEnvironment.RANDOM_PORT)
@Slf4j
public class GppbankprofileApplicationTests {

    @Autowired
    private GraphQLTestTemplate graphQLTestTemplate;


    @Test
    public void getBanks() throws Exception {
        val query = "{    findAllBanks {      officeName       accountNo     countryCode    } } ";

        GraphQLResponse response = graphQLTestTemplate.postForResource("testquery/findallbanks.graphql");
        assertNotNull(response.getRawResponse().toString());
        assertTrue(response.isOk());
        assertNotNull(response);
        JSONArray bankscount =  (JSONArray)response.context().read("$.data.findAllBanks[*]");
        assertThat(bankscount.size()).isGreaterThan(1);
    }


    @Test
    public void getBanksCount() throws Exception {
        val query = "{    findAllBanks {      officeName       accountNo     countryCode    } } ";

        GraphQLResponse response = graphQLTestTemplate.postForResource("testquery/countBanks.graphql");
        assertNotNull(response.getRawResponse().toString());
        assertTrue(response.isOk());
        assertNotNull(response);
        Integer bankscount =  response.context().read("$.data.countBanks");
        assertThat(bankscount).isGreaterThan(1);
    }


}


