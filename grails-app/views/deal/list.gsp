
<%@ page import="ds.Deal" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'deal.label', default: 'Deal')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-deal" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-deal" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="title" title="${message(code: 'deal.title.label', default: 'Title')}" />
					
						<g:sortableColumn property="description" title="${message(code: 'deal.description.label', default: 'Description')}" />
					
						<g:sortableColumn property="originalPrice" title="${message(code: 'deal.originalPrice.label', default: 'Original Price')}" />
					
						<g:sortableColumn property="currentPrice" title="${message(code: 'deal.currentPrice.label', default: 'Current Price')}" />
					
						<g:sortableColumn property="expireDate" title="${message(code: 'deal.expireDate.label', default: 'Expire Date')}" />
					
						<g:sortableColumn property="iconUri" title="${message(code: 'deal.iconUri.label', default: 'Icon Uri')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${dealInstanceList}" status="i" var="dealInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${dealInstance.id}">${fieldValue(bean: dealInstance, field: "title")}</g:link></td>
					
						<td>${fieldValue(bean: dealInstance, field: "description")}</td>
					
						<td>${fieldValue(bean: dealInstance, field: "originalPrice")}</td>
					
						<td>${fieldValue(bean: dealInstance, field: "currentPrice")}</td>
					
						<td><g:formatDate date="${dealInstance.expireDate}" /></td>
					
						<td>${fieldValue(bean: dealInstance, field: "iconUri")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${dealInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
