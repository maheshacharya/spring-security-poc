<#include "../include/imports.ftl">
<#assign  security=JspTaglibs["http://www.springframework.org/security/tags"] />
<div class="sign-in-dialog gradient-grey">
  <center>
    <table class="sign-in-table">
      <tr>
        <td>
          <style>
            h1, h4 {
              color: #000;
            }
          </style>
          <h1>Sign In</h1>
          <h4>
            <form id="login_form" name="loginForm" action="<@hst.link path='/login'/>"
                  method="post" accept-charset="utf-8">
            <#if Session.SPRING_SECURITY_LAST_EXCEPTION?? && Session.SPRING_SECURITY_LAST_EXCEPTION.message?has_content>
              <div class="bad-credentials">Authentication failed! Wrong username/password. Please try again.</div>
            </#if>
              <input name="username" type="text" class="sign-in-input" placeholder="username"/>
              <input name="password" type="password" class="sign-in-input" placeholder="password"/>
              <br/>
              <br/>
            <#if _csrf??>
              <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
            </#if>

          </h4>
          <input type="submit" class="sign-in-action" value="SIGN IN">
          </form>
        </td>

        <td>

        </td>
      </tr>
    </table>
  </center>

</div>

