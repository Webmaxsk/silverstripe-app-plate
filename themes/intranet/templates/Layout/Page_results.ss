<div class="g-row main-layout">
	<div class="g g-sm-12 g-md-8 u-push-vert">
		<section class="u-padd l-bg-white default-layout">
			<h2 class="h-underlined u-push-btm u-cf main-title">
				<span><% if $Query %>Hľadali ste &quot;{$Query}&quot;<% else %>Ooops, niekde nastala chyba...<% end_if %></span>
				<% include HTools %>
			</h2>
			<% if Results && Query %>
				<ul>
					<% loop $Results %>
						<li><a href="$Link">$Title</a></li>
					<% end_loop %>
				</ul>
				<% if Results.MoreThanOnePage %>
					<hr>
				<% end_if %>
				<% with Results %>
					<% include Pagination %>
				<% end_with %>
			<% else %>
				<p>Hľadaný výraz vrátil prázdny výsledok. Skúste iný výraz ;)</p>		
			<% end_if %>
		</section>
	</div>
	<div class="g g-sm-12 g-md-4 u-push-vert">
		<% include MemberWidgetsMenu %>
	</div>
</div>