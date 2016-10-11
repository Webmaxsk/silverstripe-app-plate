<?php

class BlogPostExtension extends DataExtension {

	private static $db = array(
		'Archived' => 'Boolean'
	);

	public function updateCMSFields(FieldList $fields) {
		if ($this->owner->parent()->ClassName=="ArchivedBlog")
			$fields->insertBefore(new CheckboxField('Archived','Archivovať?'),"PublishDate");
	}
}

class BlogPost_ControllerExtension extends Extension {

	public function onAfterInit() {
		$parent = $this->owner->parent();

		if ($this->owner->Archived)
			$parent->MenuTitle = $parent->archivedTitle;
		else
			$parent->MenuTitle = $parent->activeTitle;
	}
}