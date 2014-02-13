<%@taglib prefix="cms" uri="http://magnolia-cms.com/taglib/templating-components/cms" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:if test="${not empty content.title}"><h1>${content.title}</h1></c:if>
<div id="area">
    <c:forEach items="${components}" var="component">
        <cms:component content="${component}"/>
    </c:forEach>
</div>