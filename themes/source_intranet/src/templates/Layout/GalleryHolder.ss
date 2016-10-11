<div class="g-row main-layout">
	<div class="g g-sm-12 g-md-8 u-push-vert">
		<section class="u-padd l-bg-white default-layout">
			<h2 class="h-underlined u-push-btm u-cf main-title">
				<span>$Title</span>
				<% include HTools %>
			</h2>
			<% if Content %>
                <div class="typography u-padd-btm-half">$Content</div>
            <% end_if %>
			<% if $PaginatedChildren(12).Exists %>
				<div class="g-row g-block u-padd-top-half g-clear-2 g-md-clear-3 <% if Top.PaginatedChildren(12).MoreThanOnePage %> l-border-btm<% else %> u-pull-btm-half<% end_if %>">
					<% loop $PaginatedChildren(12) %>
						<div class="g g-6 g-md-4 u-padd-btm">
							<a href="$Link" class="u-blk"><img src="$MainImage.CroppedImage(180,180).Url" alt="$MainImage.Title" class="u-img-max"></a>
							<h3 class="h5 u-padd-top-half"><a href="$Link">$Title</a></h3>
						</div>
					<% end_loop %>
				</div>
			<% else %>
				<p class="u-padd-vert-half">Žiadne podstránky</p>
			<% end_if %>
			<% with $PaginatedChildren(12) %>
				<% include Pagination %>
			<% end_with %>
		</section>
	</div>
	<div class="g g-sm-12 g-md-4 u-push-vert">
		<% include MemberWidgetsMenu %>
	</div>
</div>