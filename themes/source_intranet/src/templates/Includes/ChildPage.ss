<h3 class="default-child--header">
	<a href="$Link" class="default-layout--title" title="<%t Blog.ReadMoreAbout "Read more about '{title}'..." title=$Title %>">
		<% if $MenuTitle %>$MenuTitle<% else %>$Title<% end_if %>
	</a>
</h3>
<% if MainImage %>
	<p class="default-child--image">
		<a href="$Link" title="<%t Blog.ReadMoreAbout "Read more about '{title}'..." title=$Title %>">
			$MainImage.CroppedImage(138,138)
		</a>
	</p>
<% end_if %>
<div class="default-child--description">
	$Content
</div>