<?php

global $project;
$project = 'mysite';

require_once('conf/ConfigureFromEnv.php');

MySQLDatabase::set_connection_charset('utf8');

i18n::set_locale('sk_SK');
setlocale(LC_TIME, i18n::get_locale() . ".utf8");

FulltextSearchable::enable();

URLSegmentFilter::config()->default_replacements = array(
	'/ň/u' => 'n',
	'/ě/u' => 'e',
	'/ř/u' => 'r',
	'/ď/u' => 'd',
	'/ĺ/u' => 'l',

	'/&amp;/u' => '-a-',
	'/&/u' => '-a-',
	'/\s|\+/u' => '-', // remove whitespace/plus
	'/[_.]+/u' => '-', // underscores and dots to dashes
	'/[^A-Za-z0-9\-]+/u' => '', // remove non-ASCII chars, only allow alphanumeric and dashes
	'/[\-]{2,}/u' => '-', // remove duplicate dashes
	'/^[\-]+/u' => '', // Remove all leading dashes
	'/[\-]+$/u' => '' // Remove all trailing dashes
);

$tinyMCE = HtmlEditorConfig::get('cms');

$tinyMCE->setButtonsForLine(1, '
	newdocument,separator,
	bold,italic,underline,strikethrough,separator,
	sup,sub,separator,
	justifyleft,justifycenter,justifyright,justifyfull,separator,
	styleselect,formatselect,separator,
	bullist,numlist,separator,
	outdent,indent,separator,
	blockquote,hr,charmap,separator,
	cleanup,removeformat
');

$tinyMCE->setButtonsForLine(2, '
	undo,redo,separator,
	cut,copy,paste,pastetext,pasteword,separator,
	selectall,visualaid,separator,
	image,media,link,unlink,anchor,separator,
	code,fullscreen
');

$tinyMCE->setOptions(array(
	'theme_advanced_blockformats' => 'p,pre,address,h2,h3,h4,h5,h6',
	'theme_advanced_styles' => '
		bez orámovania=no-border;
		horizontally centering=center
	',

	'extended_valid_elements' => 'img[class|src|alt|title|hspace|vspace|width|height|align|onmouseover|onmouseout|name|usemap],iframe[src|name|width|height|title|align|allowfullscreen|frameborder|marginwidth|marginheight|scrolling],object[width|height|data|type],param[name|value],map[class|name|id],area[shape|coords|href|target|alt],ol[start|type]',
	'valid_elements' => "@[id|class],a[id|rel|rev|dir|tabindex|accesskey|type|name|href|target|title"
. "|class],-strong/-b[class],-em/-i[class],-strike[class],-u[class],#p[id|dir|class|style],-ol[class],"
. "-ul[class],-li[class],br,img[id|dir|longdesc|usemap|class|src|border|alt=|title|width|height],"
. "-sub[class],-sup[class],-blockquote[dir|class],-cite[dir|class|id|title],"
. "-table[cellspacing|cellpadding|class|summary|dir|id],"
. "-tr[id|dir|class|rowspan|height|align|valign],"
. "tbody[id|class],thead[id|class],tfoot[id|class],"
. "#td[id|dir|class|colspan|rowspan|width|height|align|valign|scope],"
. "-th[id|dir|class|colspan|rowspan|width|height|align|valign|scope],caption[id|dir|class],"
. "-div[id|dir|class],-span[class],-pre[class],address[class],"
. "-h1[id|dir|class],-h2[id|dir|class],-h3[id|dir|class],"
. "-h4[id|dir|class],-h5[id|dir|class|align|style],-h6[id|dir|class],hr[class],"
. "dd[id|class|title|dir],dl[id|class|title|dir],dt[id|class|title|dir],@[id,class],"
. "b[id|class|title|dir|style]",

	'formats' => array(
		'alignleft' => array("selector"=>"p,h1,h2,h3,h4,h5,h6,td,th,div,ul,ol,li,table,img","classes"=>"left-align"),
		'aligncenter' => array("selector"=>"p,h1,h2,h3,h4,h5,h6,td,th,div,ul,ol,li,table,img","classes"=>"center-align"),
		'alignright' => array("selector"=>"p,h1,h2,h3,h4,h5,h6,td,th,div,ul,ol,li,table,img","classes"=>"right-align")
	),

	'entity_encoding' => 'raw',
	'convert_urls' => 'false',

	//'paste_strip_class_attributes' => 'all',
	'paste_auto_cleanup_on_paste' => 'true',
	'paste_remove_styles' => 'true',
	'paste_remove_spans' => 'true'
));

BlogTagsWidget::config()->only_available_in = array('none');
PollWidget::config()->only_available_in = array('SideBar');

Blog::config()->allow_images = false;
Calendar::config()->allow_images = false;
CalendarEvent::config()->allow_images = false;
ErrorPage::config()->allow_images = false;
RedirectorPage::config()->allow_images = false;
UserDefinedForm::config()->allow_images = false;
VirtualPage::config()->allow_images = false;

Blog::config()->allow_documents = false;
Calendar::config()->allow_documents = false;
CalendarEvent::config()->allow_documents = false;
ErrorPage::config()->allow_documents = false;
RedirectorPage::config()->allow_documents = false;
UserDefinedForm::config()->allow_documents = false;
VirtualPage::config()->allow_documents = false;


//Force enviroment to Dev ** REMOVE FOR LIVE SITES **
//Director::set_environment_type("live");

//Email::setAdminEmail('intranet@webmax.sk');

//EOF
