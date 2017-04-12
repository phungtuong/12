<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>

<t:genericpage>
		${registration.content}
		<a href="/edit-${registration.page_id }"><h4>Edit</h4></a>
</t:genericpage>