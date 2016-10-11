<div class="g-row main-layout">
    <div class="g g-sm-12 g-md-8 u-push-vert">
        <% if $PaginatedChildren.Exists %>
            <section class="u-padd l-bg-white default-layout">
                <h2 class="h-underlined u-push-btm u-cf main-title">
                    <span>$Title</span>
                    <% include HTools %>
                </h2>
                <% if Content %>
                    <div class="typography u-padd-btm-half">$Content</div>
                <% end_if %>
                <% loop $PaginatedChildren %>
                    <article class="default-child u-padd-vert-half u-cf<% if not last || Top.PaginatedChildren.MoreThanOnePage %> l-border-btm<% end_if %><% if MainImage %> image-offset<% end_if %>">
                        <% include ChildPage %>
                    </article>
                <% end_loop %>
                <% with $PaginatedChildren %>
                    <% include Pagination %>
                <% end_with %>
            </section>
        <% else %>
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
                        <span class="default-layout--title">$Title</span>
                    </h2>
                    <% if Content %>
                        <div class="typography u-padd-btm">$Content</div>
                    <% end_if %>
                    <% if Form %>
                        <div class="typography u-padd-btm">$Form</div>
                    <% end_if %>
                    <% if Content || Form %>
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
        <% end_if %>
    </div>
    <div class="g g-sm-12 g-md-4 u-push-vert">
        <% include MemberWidgetsMenu %>
    </div>
</div>