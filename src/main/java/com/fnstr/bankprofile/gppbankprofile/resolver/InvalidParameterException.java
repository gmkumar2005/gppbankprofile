package com.fnstr.bankprofile.gppbankprofile.resolver;

import graphql.ErrorType;
import graphql.GraphQLError;
import graphql.language.SourceLocation;

import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class InvalidParameterException extends RuntimeException implements GraphQLError {
    private static final long serialVersionUID = 2905122041950251207L;

    private final transient Map<String, Object> extensions = new HashMap<>();

    public InvalidParameterException(String message, String parameter) {
        super(message);
        extensions.put("invalid parameter value", parameter);
    }

    @Override
    public List<SourceLocation> getLocations() {
        return Collections.emptyList();
    }

    @Override
    public Map<String, Object> getExtensions() {
        return extensions;
    }

    @Override
    public ErrorType getErrorType() {
        return ErrorType.DataFetchingException;
    }
}
