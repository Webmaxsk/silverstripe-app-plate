<div class="g-row white-popup">
	<div class="g <% if EnableForm %>g-md-6<% end_if %>">
		<h2>$AddTitle</h2>
		<div>$AddContent</div>
		$AddForm
	</div>
	<% if EnableForm %>
		<div class="g g-md-6 u-push-top u-md-push-top-none">
			<h2>$EnableTitle</h2>
			<div>$EnableContent</div>
			$EnableForm
		</div>
	<% end_if %>
</div>