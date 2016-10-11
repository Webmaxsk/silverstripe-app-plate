<ul class="event-calendar-quick-nav">
  <li><a href="$Link(today)"<% if CurrentAction(today) %> class="current"<% end_if %>><% _t('Calendar.QUICKNAVTODAY','Today') %></a></li>
  <li><a href="$Link(week)"<% if CurrentAction(week) %> class="current"<% end_if %>><% _t('Calendar.QUICKNAVWEEK','This week') %></a></li>
  <li><a href="$Link(month)"<% if CurrentAction(month) %> class="current"<% end_if %>><% _t('Calendar.QUICKNAVMONTH','This month') %></a></li>
  <li><a href="$Link(weekend)"<% if CurrentAction(weekend) %> class="current"<% end_if %>><% _t('Calendar.QUICKNAVWEEKEND','This weekend') %></a></li>
  <% if IsSegment(today) %>
    <li><a href="$PreviousDayLink"><% _t('Calendar.PREVIOUSDAY','Previous day') %></a></li>
    <li><a href="$NextDayLink"><% _t('Calendar.NEXTDAY','Next day') %></a></li>
  <% else_if IsSegment(week) %>
    <li><a href="$PreviousWeekLink"><% _t('Calendar.PREVIOUSWEEK','Previous week') %></a></li>
    <li><a href="$NextWeekLink"><% _t('Calendar.NEXTWEEK','Next week') %></a></li>
  <% else_if IsSegment(month) %>
    <li><a href="$PreviousMonthLink"><% _t('Calendar.PREVIOUSMONTH','Previous month') %></a></li>
    <li><a href="$NextMonthLink"><% _t('Calendar.NEXTMONTH','Next month') %></a></li>
  <% else_if IsSegment(weekend) %>
    <li><a href="$PreviousWeekendLink"><% _t('Calendar.PREVIOUSWEEKEND','Previous weekend') %></a></li>
    <li><a href="$NextWeekendLink"><% _t('Calendar.NEXTWEEKEND','Next weekend') %></a></li>
  <% end_if %>
</li>
</ul>