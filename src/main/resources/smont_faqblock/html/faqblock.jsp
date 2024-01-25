<%@ taglib prefix="jcr" uri="http://www.jahia.org/tags/jcr" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="utility" uri="http://www.jahia.org/tags/utilityLib" %>
<%@ taglib prefix="template" uri="http://www.jahia.org/tags/templateLib" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<c:set var="title" value="${currentNode.properties['jcr:title'].string}"/>
<c:set var="bannerText" value="${currentNode.properties['bannerText'].string}"/>

<c:set var="faqItems" value="${jcr:getChildrenOfType(currentNode, 'smont:faq')}"/>


<div class="container py-3">
    <div class="row">
        
        <div class="col-10 mx-auto">
            <div class="heading text-center">
                <h2>${title}</h2>
                <p>${bannerText}</p>    
            </div>
            <div class="accordion" id="faqExample">
                <c:forEach items="${faqItems}" var="faqItem" varStatus="faq">
                    <template:module node="${faqItem}" editable="true"/>
              </c:forEach>
            </div>
        </div>
    </div>
    <!--/row-->
</div>
<!--container-->

<c:if test="${renderContext.editMode}">
    <%--
    As only one child type is defined no need to restrict
    if a new child type is added restriction has to be done
    using 'nodeTypes' attribute
    --%>
    <template:module path="*"/>
</c:if>