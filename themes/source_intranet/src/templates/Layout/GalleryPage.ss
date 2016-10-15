<div class="g-row main-layout">
	<div class="g g-sm-12 g-md-8 u-push-vert">
		<div class="u-padd l-bg-white default-layout">
			<nav class="detail-navigation u-cf">
				<a href="#" class="link first">Detail galérie</a>
				<% include HTools %>
			</nav>
			<article>
				<h2 class="default-layout--header u-push-vert">
					<span class="default-layout--title">$Title</span>
				</h2>
				<% if Content %>
					<div class="typography u-padd-btm">$Content</div>
				<% end_if %>
				<% if not Content %>
					<div class="u-pull-top-half">
				<% end_if %>
				<% include Gallery %>
				<% if notContent %>
					</div>
				<% end_if %>
			</article>
		</div>
	</div>
	<div class="g g-sm-12 g-md-4 u-push-vert">
		<% include MemberWidgetsMenu %>
	</div>
</div>