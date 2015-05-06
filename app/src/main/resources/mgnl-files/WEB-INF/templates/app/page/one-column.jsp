<!DOCTYPE html>

<%@taglib prefix="cms" uri="http://magnolia-cms.com/taglib/templating-components/cms" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>

<head>
    <cms:init/>

    <title>${content.title}</title>

    <link rel="stylesheet" media="screen" href="/static/default.css"/>

    <style type="text/css" media="screen, print, projection">
        #main {
            float: left;
            width: 980px;
            background: white;;
        }
    </style>
</head>

<body>

<div id="wrap">
    <cms:area name="header"/>

    <div id="main" class="column">
        <c:if test="${not empty content.breadcrumbs}">
            <div id="breadcrumbs">
                <c:forEach items="${content.breadcrumbs}" var="breadcrumb">
                    &gt; <a href="${content.breadcrumb.key}">${content.breadcrumb.value}</a>
                </c:forEach>
            </div>
        </c:if>

        <h1>${content.title}</h1>

        <cms:area name="main-column"/>
    </div>

    <div id="footer"></div>
</div>

</body>
</html>