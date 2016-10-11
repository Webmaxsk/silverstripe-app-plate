<div class="g-row main-layout">
	<div class="g g-sm-12 g-md-8 u-push-vert">
		<section class="u-padd l-bg-white default-layout">
			<h2 class="h-underlined u-push-btm u-cf main-title">
				<span>$Title</span>
				<% include HTools %>
			</h2>
			<% with CurrentDate %>
				<p class="dates">$DateRange<% if StartTime %> $TimeRange<% end_if %></p>
				<p><a href="$ICSLink" title="<% _t('CalendarEvent.ADD','Add to Calendar') %>">Add this to Calendar</a></p>
			<% end_with %>
			<% if Content %>
				<div class="u-push-top-half">
					$Content
				</div>
			<% end_if %>
			<% if OtherDates %>
				<div class="event-calendar-other-dates">
					<h4><% _t('CalendarEvent.ADDITIONALDATES','Additional dates for this Event') %>:</h4>
					<ul>
						<% loop OtherDates %>
						<li><a href="$Link" title="$Event.Title">$DateRange<% if StartTime %> $TimeRange<% end_if %></a></li>
						<% end_loop %> 
					</ul>
				</div>
			<% end_if %>
		</section>
	</div>
	<div class="g g-sm-12 g-md-4 u-push-vert">
		<div id="member_memberwidgets">
			<div class="WidgetHolder EventCalendarWidget u-pull-top-half">
				<div class="WidgetHolder_inner">
					<h4 class="widget-title"><i class="icon-"></i>Kalendár</h4>
					<div class="widget-content">
						$CalendarWidget
						$MonthJumper
					</div>
				</div>
			</div>
			<div id="memberwidgets-sortable">
				$currentMemberWidgetArea
			</div>
			<% include AddWidget %>
		</div>
	</div>
</div>