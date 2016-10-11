<?php

class SiteConfigExtension extends DataExtension {     
	
	private static $db = array(
		"UseFixedHeader" => "Boolean"
	);

	public function updateCMSFields(FieldList $fields) {
		$fields->addFieldToTab("Root.Main",CheckboxField::create("UseFixedHeader", "Použiť fixnú hlavičku"));
	}
}