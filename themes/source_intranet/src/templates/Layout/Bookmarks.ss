<% if isAjax %>
	<div class="g-row white-popup">
		<div class="g">
			<h2>$Title</h2>
			<% if $Content %>
				<div>$Content</div>
			<% end_if %>
			$Form
			<% include BookmarksMenu %>
		</div>
	</div>
<% else %>
	<a href="$bookmarksLink?CurrentTitle=$Title&CurrentUrl=$CurrentUrl" class="showBookmarks u-push-lft-half" title="Záložky"><% include BookmarkStar %></a>
<% end_if %>