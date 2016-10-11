<ul>
    <li<% if CurrentPage.Action=active && $CurrentPage.ID=$ID || not $CurrentPage.Archived && $CurrentPage.ParentID=$ID %> class="section"<% end_if %>>
        <a href="$Link(active)"<% if CurrentPage.Action=active && $CurrentPage.ID=$ID || CurrentPage.Action=active && $CurrentPage.ParentID=$ID %> class="active"<% end_if %>>$activeTitle</a>
    </li>
    <li<% if CurrentPage.Action=archived && $CurrentPage.ID=$ID || $CurrentPage.Archived && $CurrentPage.ParentID=$ID %> class="section"<% end_if %>>
        <a href="$Link(archived)"<% if CurrentPage.Action=archived && $CurrentPage.ID=$ID || CurrentPage.Action=archived && $CurrentPage.ParentID=$ID %> class="active"<% end_if %>>$archivedTitle</a>
    </li>
</ul>