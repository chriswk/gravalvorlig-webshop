
<%@ page import="no.gravalvorlig.domain.User" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}">Home</a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.edit.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${userInstance}">
            <div class="errors">
                <g:renderErrors bean="${userInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <g:hiddenField name="id" value="${userInstance?.id}" />
                <g:hiddenField name="version" value="${userInstance?.version}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="firstName"><g:message code="user.firstName.label" default="First Name" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: userInstance, field: 'firstName', 'errors')}">
                                    <g:textField name="firstName" maxlength="32" value="${userInstance?.firstName}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="lastName"><g:message code="user.lastName.label" default="Last Name" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: userInstance, field: 'lastName', 'errors')}">
                                    <g:textField name="lastName" maxlength="32" value="${userInstance?.lastName}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="address"><g:message code="user.address.label" default="Address" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: userInstance, field: 'address', 'errors')}">
                                    <g:textField name="address" value="${userInstance?.address}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="brRegNr"><g:message code="user.brRegNr.label" default="Br Reg Nr" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: userInstance, field: 'brRegNr', 'errors')}">
                                    <g:textField name="brRegNr" value="${fieldValue(bean: userInstance, field: 'brRegNr')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="email"><g:message code="user.email.label" default="Email" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: userInstance, field: 'email', 'errors')}">
                                    <g:textField name="email" value="${userInstance?.email}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="password"><g:message code="user.password.label" default="Password" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: userInstance, field: 'password', 'errors')}">
                                    <g:textField name="password" value="${userInstance?.password}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="url"><g:message code="user.url.label" default="Url" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: userInstance, field: 'url', 'errors')}">
                                    <g:textField name="url" value="${userInstance?.url}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="isPartner"><g:message code="user.isPartner.label" default="Is Partner" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: userInstance, field: 'isPartner', 'errors')}">
                                    <g:checkBox name="isPartner" value="${userInstance?.isPartner}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="postcode"><g:message code="user.postcode.label" default="Postcode" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: userInstance, field: 'postcode', 'errors')}">
                                    <g:textField name="postcode" value="${fieldValue(bean: userInstance, field: 'postcode')}" />
                                </td>
                            </tr>
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:actionSubmit class="save" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
