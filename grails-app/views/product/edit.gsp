
<%@ page import="no.gravalvorlig.domain.Product" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'product.label', default: 'Product')}" />
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
            <g:hasErrors bean="${productInstance}">
            <div class="errors">
                <g:renderErrors bean="${productInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post"  enctype="multipart/form-data">
                <g:hiddenField name="id" value="${productInstance?.id}" />
                <g:hiddenField name="version" value="${productInstance?.version}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="productCode"><g:message code="product.productCode.label" default="Product Code" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: productInstance, field: 'productCode', 'errors')}">
                                    <g:textField name="productCode" value="${productInstance?.productCode}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="name"><g:message code="product.name.label" default="Name" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: productInstance, field: 'name', 'errors')}">
                                    <g:textField name="name" value="${productInstance?.name}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="price"><g:message code="product.price.label" default="Price" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: productInstance, field: 'price', 'errors')}">
                                    <g:textField name="price" value="${fieldValue(bean: productInstance, field: 'price')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="details"><g:message code="product.details.label" default="Details" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: productInstance, field: 'details', 'errors')}">
                                    <g:textField name="details" value="${productInstance?.details}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="bigImage"><g:message code="product.bigImage.label" default="Big Image" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: productInstance, field: 'bigImage', 'errors')}">
                                    <input type="file" id="bigImage" name="bigImage" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="thumbnail"><g:message code="product.thumbnail.label" default="Thumbnail" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: productInstance, field: 'thumbnail', 'errors')}">
                                    <input type="file" id="thumbnail" name="thumbnail" />
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
