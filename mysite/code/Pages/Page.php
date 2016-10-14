<?php

class Page extends SiteTree {

	private static $db = array(
		"IconClass" => "Varchar(30)"
	);

	public function showChildren() {
		return true;
	}

	public function getCMSFields() {
		$fields = parent::getCMSFields();

		if (!$this->Parent()->exists())
			$fields->insertAfter(TextField::create("IconClass", "Názov ikonky")->setDescription('Môžete použiť ľubovoľnú ikonku z <a href="/mysite/icons_demo/icons_demo.html" target="_blank">tohto zoznamu</a>. Ikonka sa zobrazuje len v prvej úrovni menu.'), "Title");

		if ($this->ClassName=='BlogPost')
			$fields->dataFieldByName('FeaturedImage')->setFolderName('Uploads/'.$this->Parent()->ClassName);

		return $fields;
	}

	public static function FirstOfType($class) {
		return class_exists($class) ? $class::get()->limit(1)->First() : null;
	}

	public function SortedImagesExtraNumber($Quantity) {
		if (($count = $this->SortedImages()->Count()) && $count > $Quantity) {
			return $count - $Quantity;
		}
	}

	public function fixedHeader() {
		return ($siteconfig = SiteConfig::current_site_config()) && $siteconfig->UseFixedHeader;
	}

	public function get_homepage() {
		return SiteTree::get_by_link(RootURLController::config()->default_homepage_link);
	}
}

class Page_Controller extends ContentController {

	public function init() {
		parent::init();

		$themeDir = SSViewer::get_theme_folder();

		// Requirements
		Requirements::clear();

		Requirements::set_combined_files_folder(ASSETS_DIR."/_compiled");
		Requirements::set_force_js_to_bottom(true);

		Requirements::block(THIRDPARTY_DIR."/jquery/jquery.js");
		Requirements::block(USERFORMS_DIR.'/css/UserForm.css');
		Requirements::block(BOOKMARKS_DIR."/magnific-popup/dist/jquery.magnific-popup.min.js");
		Requirements::block(MEMBER_WIDGETS_DIR."/magnific-popup/dist/jquery.magnific-popup.min.js");

		Requirements::combine_files(
			'page.js',
			array(
				"$themeDir/js/main.js",
				"jquery.mmenu/dist/js/jquery.mmenu.all.min.js",

				"$themeDir/js/init.js",

				THIRDPARTY_DIR."/jquery-ui/jquery-ui.js",

				BOOKMARKS_DIR."/javascript/bookmarks.js",
				BOOKMARKS_DIR."/javascript/ajax_addBookmark.js",
				BOOKMARKS_DIR."/javascript/ajax_editBookmark.js",

				MEMBER_WIDGETS_DIR."/javascript/widgets.js",
				MEMBER_WIDGETS_DIR."/javascript/ajax_addWidget.js",
				MEMBER_WIDGETS_DIR."/javascript/ajax_enableWidget.js",
				MEMBER_WIDGETS_DIR."/javascript/ajax_editWidget.js",
				MEMBER_WIDGETS_DIR."/javascript/ajax_disableWidget.js",

				POLLS_DIR."/javascript/ajax_poll.js",

				THIRDPARTY_DIR . '/jquery-entwine/dist/jquery.entwine-dist.js',
				THIRDPARTY_DIR . '/jquery-validate/lib/jquery.form.js',
				COMMENTS_THIRDPARTY . '/jquery-validate/jquery.validate.min.js',
				FRAMEWORK_DIR . '/javascript/i18n.js',
				'comments/javascript/CommentsInterface.js',

				"event_calendar/javascript/calendar.js",
				"event_calendar/javascript/calendar_widget.js",
				"event_calendar/javascript/calendar_widget_init.js",

				FRAMEWORK_DIR .'/thirdparty/jquery/jquery.js',
				USERFORMS_DIR . '/thirdparty/jquery-validate/jquery.validate.min.js',
				USERFORMS_DIR . '/javascript/UserForm.js',

				FRAMEWORK_ADMIN_DIR . '/javascript/ssui.core.js'
			)
		);

		$logo = "";
		if (!$this->fixedHeader())
			$logo = $themeDir."/images/logo.png";

		Requirements::customScript("
			init_mmenu('".$this->get_homepage()->Link()."','".$logo."');
		");
	}

	public function PaginatedChildren($length = 6) {
		$paginatedList = new PaginatedList($this->Children(), $this->getRequest());

		$paginatedList->setPageLength($length);

		return $paginatedList;
	}
}