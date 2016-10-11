<div id="widget-$ID" class="WidgetHolder_outer">
	<div class="WidgetHolder $ClassName">
		<div class="WidgetHolder_inner">
			<% if Title %><h4 class="widget-title"><i class="icon-"></i>$Title<% if $Parent.ClassName=MemberWidgetArea %><a href="$editMemberWidgetLink" class="editMemberWidget ajax-popup-link" title="Upraviť" style="display:none;"><i class="icon-pencil"></i></a><% else_if currentPageID %><a href="$disableMemberWidgetLink?PageID=$currentPageID" class="disableMemberWidget" title="Zakázať" style="display:none;"><i class="icon-minus"></i></a><% end_if %></h4><% end_if %>
			<div class="widget-content">
				$Content
			</div>
		</div>
	</div>
</div>