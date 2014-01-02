package com.sharecare.jcr.search;

public class PropertyLikeCriterion implements NodeCriterion {
    private final String name;
    private final String value;

    public PropertyLikeCriterion(String name, String value) {
        this.name = name;
        this.value = value;
    }

    @Override
    public String getQuery() {
        return name + " LIKE '" + value + "'";
    }
}