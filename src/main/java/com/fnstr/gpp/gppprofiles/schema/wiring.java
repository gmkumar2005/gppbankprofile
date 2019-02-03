package com.fnstr.gpp.gppprofiles.schema;

import com.fnstr.gpp.gppprofiles.fetch.HouseFetcher;
import com.fnstr.gpp.gppprofiles.fetch.MagicSchoolFetcher;
import com.fnstr.gpp.gppprofiles.fetch.StudentFetcher;
import com.fnstr.gpp.gppprofiles.fetch.WandFetcher;
import graphql.schema.idl.RuntimeWiring;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class wiring {

    @Autowired
    StudentFetcher studentFetcher;
    @Autowired
    WandFetcher wandFetcher;
    @Autowired
    HouseFetcher houseFetcher;
    @Autowired
    MagicSchoolFetcher magicSchoolFetcher;

    public RuntimeWiring buildRuntimeWiring() {
        return RuntimeWiring.newRuntimeWiring()
                .type("Query", typeWiring -> typeWiring
                        .dataFetcher("magicSchool", magicSchoolFetcher.getData())
                )
                .type("MagicSchool", typeWiring -> typeWiring
                        .dataFetcher("student", studentFetcher.getData())
                )
                .type("Student", typeWiring -> typeWiring
                        .dataFetcher("wand", wandFetcher.getData())
                        .dataFetcher("house", houseFetcher.getData())
                )
                .type("Mutation", typeWiring -> typeWiring
                        .dataFetcher("enrollStudent", studentFetcher.putData())
                )
                .build();
    }

}
