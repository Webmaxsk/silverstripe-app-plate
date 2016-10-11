<ul>
	<% loop Events %>
		<li class="vevent clearfix">
			<h3 class="summary"><% if Announcement %>$Title<% else %><a class="url" href="$Link">$Event.Title</a><% end_if %></h3>
			<p class="dates">$DateRange <% if AllDay %><% _t('Calendar.ALLDAY','All Day') %><% else %><% if StartTime %>$TimeRange<% end_if %><% end_if %></p>
			<%-- <p><a href="$ICSLink"><% _t('Calendar.ADD','Add this to Calendar') %></a></p> --%>
			<div class="u-push-top-half">
				<% if Announcement %>
					$Content
				<% else %>
					<% with Event %>$Content.Summary(30)<% end_with %>
				<% end_if %>
			</div>
			<% if OtherDates %>
				<div class="event-calendar-other-dates">
					<h4><% _t('Calendar.ADDITIONALDATES','Additional dates for this Event') %>:</h4>
					<ul>
						<% loop OtherDates %>
							<li><a href="$Link" title="$Event.Title">$DateRange <% if StartTime %> $TimeRange<% end_if %></a></li>
						<% end_loop %>
					</ul>
				</div>
			<% end_if %>
		</li>
	<% end_loop %>
</ul>
<% if MoreEvents %>
	<a href="$MoreLink" class="calendar-view-more"><% _t('Calendar.VIEWMOREEVENTS','View more events...') %></a>
<% end_if %>