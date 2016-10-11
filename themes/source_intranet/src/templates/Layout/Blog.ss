<div class="g-row main-layout">
	<div class="g g-sm-12 g-md-8 u-push-vert">
		<section class="u-padd l-bg-white default-layout">
			<h2 class="h-underlined u-push-btm u-cf main-title">
				<span>
					<% if $ArchiveYear %>
						<%t Blog.Archive 'Archive' %>: <% if $ArchiveDay %>$ArchiveDate.Nice<% else_if $ArchiveMonth %>$ArchiveDate.format('F, Y')<% else %>$ArchiveDate.format('Y')<% end_if %>
					<% else_if $CurrentTag %>
						<%t Blog.Tag 'Tag' %>: $CurrentTag.Title
					<% else_if $CurrentCategory %>
						<%t Blog.Category 'Category' %>: $CurrentCategory.Title
					<% else %>
						$Title
					<% end_if %>
				</span>
				<% include HTools %>
			</h2>
			<% if Content %>
                <div class="typography u-padd-btm-half">$Content</div>
            <% end_if %>
			<% if $PaginatedList.Exists %>
				<% loop $PaginatedList %>
					<article class="default-child u-padd-vert-half u-cf<% if not last || Top.PaginatedList.MoreThanOnePage %> l-border-btm<% end_if %><% if FeaturedImage %> image-offset<% end_if %>">
						<% include PostSummary %>
					</article>
				<% end_loop %>
			<% else %>
				<p class="u-padd-vert-half"><%t Blog.NoPosts 'There are no posts' %></p>
			<% end_if %>
			<% with $PaginatedList %>
				<% include Pagination %>
			<% end_with %>
		</section>
	</div>
	<div class="g g-sm-12 g-md-4 u-push-vert">
		<% include MemberWidgetsMenu %>
	</div>
</div>