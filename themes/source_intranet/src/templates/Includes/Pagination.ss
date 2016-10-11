<%-- NOTE: Before including this, you will need to wrap the include in a with block  --%>
<% if $MoreThanOnePage %>
	<div class="pagination u-push-top u-cf">
		<p class="u-float-lft">
			<% if $NotFirstPage %>
				<a class="pagination-prev" href="{$PrevLink}"><i class="icon-chevron-sign-left"></i></a>
			<% end_if %>
			<span class="pagination-status"><strong>strana $CurrentPage</strong> / $TotalPages</span>
		</p>
		<p class="u-float-rgt">
			<span class="pagination-pages">
				<% loop $PaginationSummary(2) %>
					<% if $CurrentBool %>
						<span>$PageNum</span>
					<% else %>
						<% if $Link %>
							<a href="$Link">$PageNum</a>
						<% else %>
							<span>...</span>
						<% end_if %>
					<% end_if %>
				<% end_loop %>
			</span>
			<% if $NotLastPage %>
				<a class="pagination-next" href="{$NextLink}"><i class="icon-chevron-sign-right"></i></a>
			<% end_if %>
		</p>
	</div>
<% end_if %>