<div style="display: none;">
    <nav id="mmenu">
        <ul class="listview-icons">
            <% loop $Menu(1) %>
                <li class="$LinkOrSection<% if LinkOrSection=section && LinkOrCurrent!=current || ClassName=ArchivedBlog && Top.Action==active && $Top.ID=$ID || ClassName=ArchivedBlog && Top.Action==archived && $Top.ID=$ID %> mm-selected<% end_if %>">
                    <a href="$Link"<% if LinkOrSection=section %> class="active"<% end_if %><% if OpenInNewTab %> target="_blank"<% end_if %>><i class="$IconClass"></i>$MenuTitle</a>
                    <% if $ClassName=ArchivedBlog %>
                        <% include ArchivedBlogActions CurrentPage=$Top %>
                    <% else %>
                        <% include Submenu CurrentPage=$Top %>
                    <% end_if %>
                </li>
            <% end_loop %>
        </ul>
        $SearchForm
    </nav>
</div>