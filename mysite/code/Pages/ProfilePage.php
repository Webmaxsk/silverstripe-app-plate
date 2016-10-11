<?php

class ProfilePage extends Page {

	private static $allow_images = false;
	private static $allow_documents = false;

	private static $allowed_children = false;
}

class ProfilePage_Controller extends Page_Controller {

	private static $allowed_actions = array(
		'ProfileForm'
	);

	public function init() {
		if (!Member::currentUserID())
			Security::permissionFailure($this);

		parent::init();
	}

	public function ProfileForm() {
		$currenMember = Member::currentUser();

		$fields = $currenMember->getMemberFormFields();
		$fields->removeByName('Password');
		$fields->removeByName('Locale');
		$fields->removeByName('DateFormat');
		$fields->removeByName('TimeFormat');
		$fields->removeByName('URLSegment');

		$fields->replaceField('FirstName',$fields->dataFieldByName('FirstName')->performReadonlyTransformation());
		$fields->replaceField('Surname',$fields->dataFieldByName('Surname')->performReadonlyTransformation());
		$fields->replaceField('Email',$fields->dataFieldByName('Email')->performReadonlyTransformation());

		$fields->dataFieldByName('BlogProfileSummary')->setTitle('Status');

		$fields->replaceField('BlogProfileImage', UploadField::create('BlogProfileImage','Obrázok')
			->setFolderName('Uploads/Member/')
			->setCanPreviewFolder(false)
			->setOverwriteWarning(false)
			->setCanAttachExisting(false)
			->setAllowedFileCategories('image')
			->setAllowedMaxFileNumber(1)
		);

		$actions = new FieldList(
			FormAction::create('updateProfile', 'Uložiť')
		);

		$validator = null;

		$form = Form::create($this, 'ProfileForm', $fields, $actions, $validator);
		$form->loadDataFrom($currenMember);

		return $form;
	}

	public function updateProfile($data, $form) {
		$currenMember = Member::currentUser();

		$form->saveInto($currenMember);

		$currenMember->write();

		$form->sessionMessage('Profil uloženy','good');

		return $this->redirectBack();
	}
}