<% if SortedImages %>
	<div class="Gallery g-row g-block u-padd-vert-half g-clear-2 g-md-clear-3<% if Top.PaginatedChildren.MoreThanOnePage %> l-border-btm<% else %> u-pull-btm-half<% end_if %>">
		<% loop SortedImages %>
			<% if Up.Quantity %>
				<% if Pos<=Up.Quantity %>
					<div class="Gallery_Item g g-6 g-md-4 u-padd-btm-half">
						<a href="$Full.Link" title="$Title" class="mfp-image open-popup">
							<% if Pos=Up.Quantity && $Top.SortedImagesExtraNumber($Up.Quantity) %>
								<span class="SortedImagesExtraNumber">+$Top.SortedImagesExtraNumber($Up.Quantity)</span>
							<% end_if %>
							<img src="$CroppedImage(180,180).Url" alt="$Title" class="u-img-max">
						</a>
					</div>
				<% else %>
					<a class="mfp-image open-popup" href="$Full.Link" title="$Title"></a>
				<% end_if %>
			<% else %>
				<div class="Gallery_Item g g-6 g-md-4 u-padd-btm-half">
					<a href="$Full.Link" title="$Title" class="mfp-image open-popup">
						<img src="$CroppedImage(180,180).Url" alt="$Title" class="u-img-max">
					</a>
				</div>
			<% end_if %>
		<% end_loop %>
	</div>
<% end_if %>