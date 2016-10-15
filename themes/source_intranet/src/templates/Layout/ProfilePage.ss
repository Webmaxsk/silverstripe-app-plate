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
			$ProfileForm
		</section>
	</div>
	<div class="g g-sm-12 g-md-4 u-push-vert">
		<% include MemberWidgetsMenu %>
	</div>
</div>