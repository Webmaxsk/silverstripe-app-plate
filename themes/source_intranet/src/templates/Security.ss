<!DOCTYPE html>
  <html lang="$ContentLocale">
  <head>
    <% base_tag %>
    <title>$SiteConfig.Title</title>
    <meta name="viewport" content="width=device-width, user-scalable=yes, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    $MetaTags(false)
    <% require themedCSS("main") %>
  </head>

  <body class="security">
    <% include BrowserWarning %>
    <div class="security_box-outer">
      <div class="security_box">
        <div class="security_box-inner">
          <h1 class="page_title"><a href="$BaseURLForLocale"><% _t('Page.LOGIN','Login') %></a></h1>
          <div class="security_content">
            <% if $Content %>$Content<% end_if %>
            <% if $Form %>$Form<% end_if %>
          </div>
          <a class="security_back" href="$BaseURLForLocale">&laquo; Intranet</a>
        </div>
      </div>
    </div>
  </body>
</html>