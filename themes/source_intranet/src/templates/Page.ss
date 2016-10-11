<!doctype html>
<html class="no-js" lang="<% sprintf(_t('CONTENTLOCALE','%2.2s'),$ContentLocale) %>">
<head>
  <% base_tag %>
  $MetaTags(false)
  <title><% if MetaTitle %>$MetaTitle<% else %>$Title<% end_if %> | $SiteConfig.Title</title>
  <meta name="viewport" content="width=device-width, user-scalable=yes, initial-scale=1">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <link rel="icon" href="favicon.ico" type="image/x-icon">
  <link rel="author" href="/humans.txt">
  <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,400i,500,700&subset=latin-ext" rel="stylesheet">
  <% require themedCSS(main) %>
  <% if fixedHeader %>
    <% require themedCSS(fixedHeader) %>
  <% end_if %>
</head>
<body class="p-$ClassName">
  <% include BrowserWarning %>
  <div class="l-wrap body">
    <% include Header %>
      <main class="l-section">
        <div class="l-container">
          $Layout
        </div>
      </main>
  </div>
  <% include Mmenu %>
</body>
</html>