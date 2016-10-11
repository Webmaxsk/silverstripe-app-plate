<% if $showChildren && $Children %>
    <ul>
        <% loop $Children %>
            <li class="$LinkOrSection<% if LinkOrSection=section && LinkOrCurrent!=current || ClassName=ArchivedBlog && Top.CurrentPage.Action==active && $CurrentPage.ID=$ID || ClassName=ArchivedBlog && Top.CurrentPage.Action==archived && $CurrentPage.ID=$ID %> mm-selected<% end_if %>">
                <a href="$Link"<% if LinkOrSection=section %> class="active"<% end_if %><% if OpenInNewTab %> target="_blank"<% end_if %>>$MenuTitle</a>
                <% if $ClassName=ArchivedBlog %>
                    <% include ArchivedBlogActions CurrentPage=$Top.CurrentPage %>
                <% else %>
                    <% include Submenu CurrentPage=$Top.CurrentPage %>
                <% end_if %>
            </li>
        <% end_loop %>
    </ul>
<% end_if %>