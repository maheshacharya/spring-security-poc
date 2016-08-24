<!doctype html>
<#include "../include/imports.ftl">
<#assign  security=JspTaglibs["http://www.springframework.org/security/tags"] />
<html lang="en">
<head>
    <meta charset="utf-8"/>
    <link rel="stylesheet" href="<@hst.webfile  path="/css/bootstrap.css"/>" type="text/css"/>
    <@hst.defineObjects/>
    <#if hstRequest.requestContext.cmsRequest>
      <link rel="stylesheet" href="<@hst.webfile  path="/css/cms-request.css"/>" type="text/css"/>
    </#if>
<@hst.headContributions categoryExcludes="htmlBodyEnd, scripts" xhtml=true/>
</head>
<body>
<#if Session.SPRING_SECURITY_CONTEXT??>
    <#assign user=Session.SPRING_SECURITY_CONTEXT.authentication.name/>
</#if>
<#if user??>
<a href="<@hst.link path="/logout"/>" style="padding:10px">Logout ${user} </a>
</#if>
<div class="container">
    <div class="row">
        <div class="col-md-6 col-md-offset-3">
        <@hst.include ref="top"/>
        <@hst.include ref="menu"/>
        </div>
    </div>
    <div class="row">
        <@hst.include ref="main"/>
    </div>
    <div class="row">
        <@hst.include ref="footer"/>
    </div>
</div>
<@hst.headContributions categoryIncludes="htmlBodyEnd, scripts" xhtml=true/>
</body>
</html>