<header class="Header">
	<% if fixedHeader %>
		<div id="fixed-header">
			<div id="site-logo"><a href="$get_homepage.Link"><img src="$themeDir/images/logo-mini.png" alt="Webmax intranet"></a></div>
			<h1 id="site-title"><a href="$get_homepage.Link">Webmax <span>intranet</span></a></h1>
		</div>
	<% end_if %>
	<div class="l-container">
		<div class="l-container_inner">
			$Breadcrumbs
			<nav class="secondary">
				<% if not $CurrentMember %>
					<a href="/Security/login?BackURL=<% if $Action!='index' %>$Link($Action)<% else %>$Link<% end_if %>" class="u-push-lft-half" title="Prihlásiť sa"><i class="icon-lock"></i></a>
				<% else %>
					<% with CurrentUser %>
						<a id="user-photo" href="$Top.FirstOfType(ProfilePage).Link" title="$Name">
							<img src="<% if BlogProfileImage %>$BlogProfileImage.CroppedImage(30,30).Url<% else %>$themeDir/images/user.png<% end_if %>" alt="$Name">
						</a>
					<% end_with %>
					<a href="/Security/logout" class="u-push-lft-half" title="Odhlásiť sa"><i class="icon-off"></i></a>
					<a href="$bookmarksLink?CurrentTitle=$Title&CurrentUrl=$CurrentUrl" class="showBookmarks u-push-lft-half" title="Záložky"><% include BookmarkStar %></a>
				<% end_if %>
				<% with $Level(1) %>
					<% if $ClassName=Blog || $ClassName=ArchivedBlog %>
						<a href="$Link(rss)" target="_blank" class="u-push-lft-half" title="RSS"><i class="icon-rss"></i></a>
					<% end_if %>
				<% end_with %>
			</nav>
		</div>
	</div>
</header>