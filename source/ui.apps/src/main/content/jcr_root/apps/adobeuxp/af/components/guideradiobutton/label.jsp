<%------------------------------------------------------------------------
 ~
 ~ ADOBE CONFIDENTIAL
 ~ __________________
 ~
 ~  Copyright 2014 Adobe Systems Incorporated
 ~  All Rights Reserved.
 ~
 ~ NOTICE:  All information contained herein is, and remains
 ~ the property of Adobe Systems Incorporated and its suppliers,
 ~ if any.  The intellectual and technical concepts contained
 ~ herein are proprietary to Adobe Systems Incorporated and its
 ~ suppliers and may be covered by U.S. and Foreign Patents,
 ~ patents in process, and are protected by trade secret or copyright law.
 ~ Dissemination of this information or reproduction of this material
 ~ is strictly forbidden unless prior written permission is obtained
 ~ from Adobe Systems Incorporated.
 --------------------------------------------------------------------------%>
<%@include file="/libs/fd/af/components/guidesglobal.jsp" %>
<%@page session="false"%>
<%@page import="com.day.cq.i18n.I18n" %>
<%
    I18n i18n = new I18n(slingRequest);
%>
<c:choose>
    <c:when test="${isEditMode}">
        <c:if test="${componentContext!=null}">
            <% componentContext.setDefaultDecorationTagName("div"); %>
        </c:if>
    </c:when>
    <c:otherwise>
        <c:if test="${componentContext!=null}">
            <% componentContext.setDefaultDecorationTagName(""); %>
        </c:if>
    </c:otherwise>
</c:choose>
<c:if test="${guideField.hideTitle eq false}">
    <legend <c:if test="${guideField.mandatory}">class="required"</c:if> id="${guideid}_label"><span class="field-name">${guide:encodeForHtml(guideField.title,xssAPI)} </span><c:if test="${guideField.mandatory}">&nbsp;<strong class="required">(<%= i18n.get("required") %>)</strong></c:if></legend>
         <%-- above code has been written in one-line intentionally. Don't indent it as it breaks inline editing of title --%>
</c:if>


