<div class="g-row main-layout">
	<div class="g g-sm-12 g-md-8 u-push-vert">
		<div class="u-padd l-bg-white default-layout">
			<nav class="detail-navigation u-cf">
				<a href="#article" class="link first">Článok</a>
				<% if SortedImages %>
					<a href="#gallery" class="link">Galéria</a>
				<% end_if %>
				<% if SortedDocuments %>
					<a href="#downloads" class="link">Na prevzatie</a>
				<% end_if %>
				<% if ProvideComments %>
					<a href="#comments" class="link last">Komentáre</a>
				<% end_if %>
				<% include HTools %>
			</nav>
			<article>
				<h2 id="article" class="default-layout--header u-push-vert">
					<span class="default-layout--date">$PublishDate.FormatI18N("%d.%m.%Y")</span>
					<span class="default-layout--title">$Title</span>
				</h2>
				<% if Content %>
                    <div class="typography u-padd-btm">$Content</div>
                    <hr>
                <% end_if %>
                <% if SortedImages %>
                	<h3 id="gallery" class="default-layout--subheader">Galéria</h3>
                    <div class="u-padd-btm-half">
                        <% include Gallery Quantity=6 %>
                    </div>
					<hr>
                <% end_if %>
				<% include FilesToDownload %>
				<% include Comments %>
			</article>
		</div>
	</div>
	<div class="g g-sm-12 g-md-4 u-push-vert">
		<% include MemberWidgetsMenu %>
	</div>
</div>