package com.sharecare.sample.util.jcr.impl;

import javax.jcr.Node;
import javax.jcr.RepositoryException;

class IsDescendantOfCriterion implements NodeCriterion {

    private final String parentPath;

    public IsDescendantOfCriterion(String parentPath) {
        this.parentPath = parentPath;
    }

    public IsDescendantOfCriterion(Node parentNode) throws RepositoryException {
        this.parentPath = parentNode.getPath();
    }

    @Override
    public String getQuery() {
        return "ISDESCENDANTNODE([" + parentPath + "])";
    }
}
