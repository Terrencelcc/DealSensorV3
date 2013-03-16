<%@ page import="ds.Supplier" %>



<div class="fieldcontain ${hasErrors(bean: supplierInstance, field: 'username', 'error')} required">
	<label for="username">
		<g:message code="supplier.username.label" default="Username" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="username" required="" value="${supplierInstance?.username}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: supplierInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="supplier.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="password" maxlength="25" required="" value="${supplierInstance?.password}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: supplierInstance, field: 'address', 'error')} required">
	<label for="address">
		<g:message code="supplier.address.label" default="Address" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="address" required="" value="${supplierInstance?.address}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: supplierInstance, field: 'longitude', 'error')} required">
	<label for="longitude">
		<g:message code="supplier.longitude.label" default="Longitude" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="longitude" value="${fieldValue(bean: supplierInstance, field: 'longitude')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: supplierInstance, field: 'latitude', 'error')} required">
	<label for="latitude">
		<g:message code="supplier.latitude.label" default="Latitude" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="latitude" value="${fieldValue(bean: supplierInstance, field: 'latitude')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: supplierInstance, field: 'email', 'error')} ">
	<label for="email">
		<g:message code="supplier.email.label" default="Email" />
		
	</label>
	<g:field type="email" name="email" value="${supplierInstance?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: supplierInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="supplier.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${supplierInstance?.description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: supplierInstance, field: 'iconUri', 'error')} ">
	<label for="iconUri">
		<g:message code="supplier.iconUri.label" default="Icon Uri" />
		
	</label>
	<g:textField name="iconUri" value="${supplierInstance?.iconUri}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: supplierInstance, field: 'accountExpired', 'error')} ">
	<label for="accountExpired">
		<g:message code="supplier.accountExpired.label" default="Account Expired" />
		
	</label>
	<g:checkBox name="accountExpired" value="${supplierInstance?.accountExpired}" />
</div>

<div class="fieldcontain ${hasErrors(bean: supplierInstance, field: 'accountLocked', 'error')} ">
	<label for="accountLocked">
		<g:message code="supplier.accountLocked.label" default="Account Locked" />
		
	</label>
	<g:checkBox name="accountLocked" value="${supplierInstance?.accountLocked}" />
</div>

<div class="fieldcontain ${hasErrors(bean: supplierInstance, field: 'categories', 'error')} ">
	<label for="categories">
		<g:message code="supplier.categories.label" default="Categories" />
		
	</label>
	<g:select name="categories" from="${ds.Category.list()}" multiple="multiple" optionKey="id" size="5" value="${supplierInstance?.categories*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: supplierInstance, field: 'deals', 'error')} ">
	<label for="deals">
		<g:message code="supplier.deals.label" default="Deals" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${supplierInstance?.deals?}" var="d">
    <li><g:link controller="deal" action="show" id="${d.id}">${d?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="deal" action="create" params="['supplier.id': supplierInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'deal.label', default: 'Deal')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: supplierInstance, field: 'enabled', 'error')} ">
	<label for="enabled">
		<g:message code="supplier.enabled.label" default="Enabled" />
		
	</label>
	<g:checkBox name="enabled" value="${supplierInstance?.enabled}" />
</div>

<div class="fieldcontain ${hasErrors(bean: supplierInstance, field: 'passwordExpired', 'error')} ">
	<label for="passwordExpired">
		<g:message code="supplier.passwordExpired.label" default="Password Expired" />
		
	</label>
	<g:checkBox name="passwordExpired" value="${supplierInstance?.passwordExpired}" />
</div>

<div class="fieldcontain ${hasErrors(bean: supplierInstance, field: 'phone', 'error')} ">
	<label for="phone">
		<g:message code="supplier.phone.label" default="Phone" />
		
	</label>
	<g:textField name="phone" value="${supplierInstance?.phone}"/>
</div>

