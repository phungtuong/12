<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>

<t:genericpage>
	<html>
<head>
<meta charset="utf-8">
<title>A Simple Page with CKEditor</title>
<!-- Make sure the path to CKEditor is correct. -->
<script src="//cdn.ckeditor.com/4.6.2/standard/ckeditor.js"></script>
</head>
<body>
	<form:form method="POST" modelAttribute="webInfo"
		class="form-horizontal">
			<form:input type="hidden" path="page_id" id="id"/>
		<label class="col-md-3 control-lable" for="description">description</label>
		<form:input type="text" path="description" id="description"
			class="form-control input-sm" />
</br>
		<label class="col-md-3 control-lable" for="content">Content</label>
	<%-- 	<form:input type="text" path="content" id="content"
			class="form-control input-sm" /> --%>
			
		<form:textarea path="content" id="txtnoidung"/>

		<input type="submit" value="Register" class="btn btn-primary btn-sm" /> or <a
			href="<c:url value='/' />">Cancel</a>
	</form:form>
</body>
<script>
			// Replace the <textarea id="editor1"> with a CKEditor
			// instance, using default configuration.
			CKEDITOR.replace('editor1');
		</script>
	</html>
</t:genericpage>