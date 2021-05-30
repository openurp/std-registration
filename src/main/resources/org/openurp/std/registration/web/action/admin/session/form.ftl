[#ftl]
[@b.head/]
[@b.toolbar title="注册设置"/]
	[@b.form name="registerSessionEditForm" action=b.rest.save(registerSession) theme="list"]
	  [@b.field label="学年学期"]${registerSession.semester.schoolYear}学年度${registerSession.semester.name}学期[/@]
    [@b.textfield label="年级" name="registerSession.grades" value=registerSession.grades maxlength="100" comment="多个使用半角逗号隔开"/]
    [@b.select name="registerSession.level.id" label="培养层次" items=levels empty="..." value=registerSession.level! required="true"/]
    [@b.startend label="起始截至时间" name="registerSession.beginAt,registerSession.endAt" format="yyyy-MM-dd HH:mm:ss" start=registerSession.beginAt! end=registerSession.endAt! required="true"/]
    [@b.formfoot]
      [@b.submit value="保存"/]
    [/@]
  [/@]
[@b.foot/]
