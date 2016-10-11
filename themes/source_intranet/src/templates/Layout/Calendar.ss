<div class="g-row main-layout">
	<div class="g g-sm-12 g-md-8 u-push-vert">
		<section class="u-padd l-bg-white default-layout">
			<h2 class="h-underlined u-push-btm u-cf main-title">
				<span>$Title</span>
				<% include HTools %>
			</h2>
			<% if Content %>
				<div class="typography u-padd-btm">$Content</div>
			<% end_if %>
			<% if DateHeader %>
				<h3 class="u-push-btm-half">$DateHeader</h3>
			<% end_if %>
			<% if Events %>
				<div id="event-calendar-events">
					<% include EventList %>
				</div>
			<% else %>
				<p><% _t('NOEVENTS','There are no events') %>.</p>
			<% end_if %>
			<%-- <p class="feed"><a href="$Link(rss)"><% _t('SUBSCRIBE','Calendar RSS Feed') %></a></p> --%>
		</section>
	</div>
	<div class="g g-sm-12 g-md-4 u-push-vert">
		<div id="member_memberwidgets">
			<div class="WidgetHolder EventCalendarWidget u-pull-top-half">
				<div class="WidgetHolder_inner">
					<h4 class="widget-title"><i class="icon-"></i>Kalendár</h4>
					<div class="widget-content">
						<% include QuickNav %>
						$CalendarWidget
						$MonthJumper
					</div>
				</div>
			</div>
			<div id="memberwidgets-sortable" class="u-padd-top-half">
				$currentMemberWidgetArea
			</div>
			<% include AddWidget %>
		</div>
	</div>
</div>