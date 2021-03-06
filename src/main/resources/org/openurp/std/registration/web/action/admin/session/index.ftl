[#ftl]
[@b.head/]
[#macro panel title]
<div class="card card-primary card-info card-outline">
  <div class="card-header">
    <h3 class="card-title">${title}</h3>
  </div>
  [#nested/]
</div>
[/#macro]

<div class="container" style="width:95%">

<nav class="navbar navbar-default" role="navigation">
  <div class="container-fluid">
    <div class="navbar-header">
        <a class="navbar-brand" href="#"><span class="glyphicon glyphicon-book"></span>注册设置</a>
    </div>
    <ul class="nav navbar-nav navbar-right">
        <li>
        [@b.form class="navbar-form navbar-left" role="search" action="!editNew"]
            [@b.a class="btn btn-sm btn-info" href="!editNew"]<span class='glyphicon glyphicon-plus'></span>添加[/@]
        [/@]
        </li>
    </ul>
    </div>
</nav>

  [#list sessions as session]
  [@b.form name="removeSchemeForm_"+session.id action="!remove?id="+session.id+"&_method=delete"][/@]
  [#assign title]
     <span class="glyphicon glyphicon-bookmark"></span>${session.grades}<span style="font-size:0.8em">(${session.beginAt?string("yyyy-MM-dd HH:mm")}~${session.endAt?string("yyyy-MM-dd HH:mm")})</span>
     <div class="btn-group">
     [@b.a href="!edit?id="+session.id class="btn btn-sm btn-info"]<span class="glyphicon glyphicon-edit"></span>修改[/@]
     </div>
     [@b.a href="!remove?id="+session.id onclick="return removeScheme(${session.id});" class="btn btn-sm btn-warning"]<span class="glyphicon glyphicon-remove"></span>删除[/@]
  [/#assign]
  [@panel title=title]
    [@b.div id="session_info"][#include "info.ftl"/][/@]
  [/@]
  [/#list]
</div>
<script>
   function removeScheme(id){
       if(confirm("确定删除?")){
         return bg.form.submit(document.getElementById("removeSchemeForm_"+id));
       }else{
         return false;
       }
   }
</script>
[@b.foot/]
