package com.fnstr.bankprofile.gppbankprofile.resolver;

import graphql.ErrorType;
import graphql.GraphQLError;
import graphql.language.SourceLocation;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class InvalidParameterException extends RuntimeException implements GraphQLError {
    private Map<String, Object> extensions = new HashMap<>();

    public InvalidParameterException(String message,String parameter){
        super(message);
        extensions.put("invalid parameter value", parameter);
    }
    @Override
    public List<SourceLocation> getLocations() {
        return null;
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
