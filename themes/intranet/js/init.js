function init_mmenu(homeUrl,logo) {
	if (logo) {
		$('#mmenu').mmenu({
			iconPanels: true,
			extensions: ['effect-menu-slide', 'pagedim-black', 'theme-white', 'widescreen'],
			counters: true,
			setSelected: {
				hover: true,
				parent: true
			},
			searchfield: {
				noResults: 'Neboli nájdené žiadne výsledky.',
				placeholder: 'Hľadať v menu',
				resultsPanel: {
					add: true,
					title: 'Výsledky vyhľadávania'
				},
				showSubPanels: false
			},
			navbars: [
				{
					position: 'top',
					'content': [
						'<div id=\'site-logo\'><a href=\''+homeUrl+'\'><img src=\''+logo+'\' alt=\'Webmax intranet\'></a></div><h1 id=\'site-title\'><a href=\''+homeUrl+'\'>Webmax<br><span>intranet</span></a></h1>',
						'searchfield'
					]
				},
				{
					position: 'top'
				}
			]
		},
		{
			'searchfield': {
				'clear': true
			}
		});
	}
	else {
		$('#mmenu').mmenu({
			iconPanels: true,
			extensions: ['effect-menu-slide', 'pagedim-black', 'theme-white', 'widescreen'],
			counters: true,
			setSelected: {
				hover: true,
				parent: true
			},
			searchfield: {
				noResults: 'Neboli nájdené žiadne výsledky.',
				placeholder: 'Hľadať v menu',
				resultsPanel: {
					add: true,
					title: 'Výsledky vyhľadávania'
				},
				showSubPanels: false
			},
			navbars: [
				{
					position: 'top',
					'content': [
						'searchfield'
					]
				},
				{
					position: 'top'
				}
			]
		},
		{
			'searchfield': {
				'clear': true
			}
		});
	}


	mmenuApi = $('#mmenu').data('mmenu');
	$('#menu-button').click(function() {
		mmenuApi.open();
	});

	$('.mm-listview').addClass('mm-fullopen');
	$('#mmenu a.mm-next').addClass('mm-fullsubopen');
}