<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>

<t:genericpage>
		${callpaper.content}
		<a href="/edit-${callpaper.page_id }"><h4>Edit</h4></a>
</t:genericpage>