<%@ taglib prefix="jcr" uri="http://www.jahia.org/tags/jcr" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="utility" uri="http://www.jahia.org/tags/utilityLib" %>
<%@ taglib prefix="template" uri="http://www.jahia.org/tags/templateLib" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<c:set var="uuid" value="${currentNode.properties['jcr:uuid'].string}"/>


<div class="card">
    <div class="card-header p-2" id="heading${uuid}">
        <h5 class="mb-0">
            <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapse${uuid}" aria-expanded="true" aria-controls="collapse${uuid}">
              Q: ${currentNode.properties.question.string}
            </button>
          </h5>
    </div>

    <div id="collapse${uuid}" class="collapse" aria-labelledby="heading${uuid}" data-parent="#faqExample">
        <div class="card-body">
            <b><fmt:message key="smont_faq.answer"/>:</b> ${currentNode.properties.answer.string}
        </div>
    </div>
</div>