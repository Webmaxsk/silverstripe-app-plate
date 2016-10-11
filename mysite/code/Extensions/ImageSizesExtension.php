<?php


/**
 * Class ImageSizesExtension
 *
 * @property Image $owner
 */
class ImageSizesExtension extends DataExtension {
		
	function generateThumbSize( $gd ) { return $gd->croppedResize( 290, 160 ); }

	function generateFullSize( $gd ) {
		$width = ($this->owner->Width >= 1024 ) ? 1024 : $this->owner->Width;
		$height = ($this->owner->Height >= 768 ) ? 768 : $this->owner->Height;
		 return $gd->resizeRatio( $width, $height ); 
	}
	
	function Thumb() {
		return $this->owner->getFormattedImage('ThumbSize');
	}	
	
	function Full() {
		 return $this->owner->getFormattedImage('FullSize'); 
	}
	
}

// EOF