<h3 class="default-child--header">
	<span class="default-layout--date">
		$PublishDate.FormatI18N("%d.%m.%Y")
	</span>
	<a href="$Link" class="default-layout--title" title="<%t Blog.ReadMoreAbout "Read more about '{title}'..." title=$Title %>">
		<% if $MenuTitle %>$MenuTitle<% else %>$Title<% end_if %>
	</a>
</h3>
<p class="default-child--image">
	<a href="$Link" title="<%t Blog.ReadMoreAbout "Read more about '{title}'..." title=$Title %>">
		$FeaturedImage.CroppedImage(138,138)
	</a>
</p>
<div class="default-child--description">
	<% if $Summary %>
		$Summary
	<% else %>
		<p>$Excerpt</p>
	<% end_if %>
</div>