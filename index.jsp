<%@taglib uri='WEB-INF/mytags/kltags.tld' prefix='kl' %>
<kl:If condition='${username==null}'>
<jsp:forward page='/LoginForm.jsp' />
</kl:If>
<kl:Module name='HOME' />
<jsp:include page='/MasterPageTopSection.jsp' />
<h2>Welcome</h2>
<jsp:include page='/MasterPageBottomSection.jsp' />
