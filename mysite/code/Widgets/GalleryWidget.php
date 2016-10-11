<?php

if (class_exists('Widget')) {

	class GalleryWidget extends Widget {

		private static $title = 'Widget for gallery page';
		private static $cmsTitle = "Widget for gallery page";
		private static $description = "Displays a image from gallery.";

		public function getWidgetData() {
			if (($galleries = GalleryPage::get()->sort('RAND()')) && $galleries->exists()) {
				$gallery = $galleries->limit(1)->first();

				return new ArrayData(array(
					'Image' => $gallery->MainImage(),
					'Gallery' => $gallery
				));
			}
		}
	}
}