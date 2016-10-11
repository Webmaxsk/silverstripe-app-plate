<?php

class GalleryHolder extends Page {

	private static $allow_images = false;
	private static $allow_documents = false;

	private static $allowed_children = array('GalleryPage');

	public function showChildren() {
		return false;
	}
}

class GalleryHolder_Controller extends Page_Controller {
}