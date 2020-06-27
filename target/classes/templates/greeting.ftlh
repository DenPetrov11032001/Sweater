<#import "parts/common.ftlh" as c>
<#include "parts/security.ftlh">

<@c.page>
    <h5>Hello, <#if user??>${user.username}<#else>Guest</#if></h5>
    <div>This is a simple clone of Twitter</div>
</@c.page>