<% if SortedDocuments %>
	<h3 id="downloads" class="default-layout--subheader">Súbory na prevzatie</h3>
	<div class="u-padd-btm u-push-top-half">
		<% if DocumentsContent %>
			<div class="typography">
				$DocumentsContent
			</div>
		<% end_if %>
		<table class="u-push-top">
			<% loop SortedDocuments %>
				<tr class="$EvenOdd">
					<td class="icon"><i class="i i-$Extension"></i></td>
					<td class="file"><a href="$Url" download="">$Title</a></td>
					<td class="size">$Size</td>
				</tr>
			<% end_loop %>
		</table>
	</div>
	<hr>
<% end_if %>