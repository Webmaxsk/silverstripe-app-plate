<div class="Location">
	<span id="menu-button"><span></span></span>
	<div class="breadcrumbs">
		<% if $Pages %>
			<% if $get_homepage.ID!=$ID %><a href="$get_homepage.Link">$get_homepage.MenuTitle</a><i></i><% end_if %><% loop $Pages %><% if $Last %><% if $ID!=$Top.get_homepage.ID %>$MenuTitle.XML<% else %>$SiteConfig.Tagline<% end_if %><% else_if $ID!=$Top.get_homepage.ID %><a href="<% if ClassName=ArchivedBlog %><% if $Top.Archived %>$Link(archived)<% else %>$Link(active)<% end_if %><% else %>$Link<% end_if %>" class="breadcrumb-$Pos">$MenuTitle.XML</a><i></i><% end_if %><% end_loop %>
		<% end_if %>
	</div>
</div>