[#ftl/]
[@b.messages slash="4"/]
<table class="infoTable">
    <tr>
      <td class="title" width="10%">学年学期：</td>
      <td width="23%">${session.semester.schoolYear} 学年度 ${session.semester.name}学期</td>
      <td class="title" width="10%">年级：</td>
      <td >${session.grades}</td>
      <td class="title">起始截至时间：</td>
      <td width="23%">${session.beginAt?string("yyyy-MM-dd HH:mm")}~${session.endAt?string("yyyy-MM-dd HH:mm")}</td>
    </tr>
  </table>
