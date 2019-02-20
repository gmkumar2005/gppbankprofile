package com.fnstr.bankprofile.gppbankprofile.resolver;

import org.apache.commons.lang3.ObjectUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.data.domain.Sort.Order;

import java.util.Arrays;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;


public final class PageRequestBuilder {
    private PageRequestBuilder() {
        // Do nothing
    }

    /**
     * Constructs PageRequest
     *
     * @param pageSize
     * @param pageNumber
     * @param sortingCriteria eg1 +officeName eg2 -officeName eg3 officeName,countryCode
     * @return
     */
    public static PageRequest getPageRequest(Integer pageNumber, Integer pageSize, String sortingCriteria) {

        Set<String> sortingFields = new LinkedHashSet<>(
                Arrays.asList(StringUtils.split(StringUtils.defaultIfEmpty(sortingCriteria, ""), ",")));
        List<Order> sortingOrders = sortingFields.stream().map(PageRequestBuilder::getOrder)
                .collect(Collectors.toList());
        Sort sort = sortingOrders.isEmpty() ? null : Sort.by(sortingOrders);
        return sort == null ? PageRequest.of(ObjectUtils.defaultIfNull(pageNumber, 1) - 1, ObjectUtils.defaultIfNull(pageSize, 20))
                : PageRequest.of(ObjectUtils.defaultIfNull(pageNumber, 1) - 1, ObjectUtils.defaultIfNull(pageSize, 20), sort);
    }

    private static Order getOrder(String value) {

        if (StringUtils.startsWith(value, "-")) {
            return new Order(Direction.DESC, StringUtils.substringAfter(value, "-"));
        } else if (StringUtils.startsWith(value, "+")) {
            return new Order(Direction.ASC, StringUtils.substringAfter(value, "+"));
        } else {
            // Sometimes '+' from query param can be replaced as ' '
            return new Order(Direction.ASC, StringUtils.trim(value));
        }

    }


}
