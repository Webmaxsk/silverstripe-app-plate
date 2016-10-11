<?php

class ArchivedBlog extends Blog {

	private static $db = array(
        "activeTitle" => "Varchar(255)",
        "archivedTitle" => "Varchar(255)"
    );

	public function getCMSFields() {
		$fields = parent::getCMSFields();

		$fields->insertAfter(new TextField('activeTitle','Titulok aktívne'),'MenuTitle');
		$fields->insertAfter(new TextField('archivedTitle','Titulok archivované'),'activeTitle');

		return $fields; 
	}
}

class ArchivedBlog_Controller extends Blog_Controller {

	private static $allowed_actions = array(
		'active',
		'archived'
	);

	public function active() {
		$this->blogPosts = $this->getBlogPosts()->filter('Archived',0);

		$this->MetaTitle = $this->activeTitle;
		$this->MenuTitle = $this->activeTitle;
		$this->Title = $this->activeTitle;

		return $this;
	}

	public function archived() {
		$this->blogPosts = $this->getBlogPosts()->filter('Archived',1);

		$this->MetaTitle = $this->archivedTitle;
		$this->MenuTitle = $this->archivedTitle;
		$this->Title = $this->archivedTitle;

		return $this;
	}

}