<% if $Posts %>
	<ol>
		<% loop $Posts %>
			<li>
				<span class="post-date">$PublishDate.FormatI18N("%d.%m.%Y")</span>
				<a href="$Link" title="$Title">
					<span class="text">$Title</span>
				</a>
			</li>
		<% end_loop %>
	</ol>
	<div class="widget-footer">
		<a href="$Blog.Link">všetky články&nbsp;&nbsp;▸</a>
	</div>
<% end_if %>