<% if CurrentMember %>
	<div class="add-widget">
		<a id="addMemberWidgetLink" href="$addMemberWidgetLink<% if $ID > 0 %>?PageID=$ID<% end_if %>" class="addMemberWidget ajax-popup-link">
			<i class="i"></i>
			<span class="u-push-top-half">Pridať widget</span>
		</a>
	</div>
<% end_if %>