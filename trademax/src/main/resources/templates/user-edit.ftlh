<#import "blocks/template.ftlh" as t>
<@t.template userPrincipal>
    <h1 style="text-align: center">Editing the user: ${user.name}</h1><hr>
<form action="/admin/user/edit" method="post">
    <#list roles as role>
        <div>
            <label><input type="checkbox" name="${role}" ${user.roles?seq_contains(role)?string("checked", "")}>${role}</label>
        </div>
    </#list>
    <input type="hidden" value="${user.id}" name="userId">
    <input type="hidden" value="${_csrf.token}" name="_csrf">
    <button type="submit">Save</button>
</form>

</@t.template>