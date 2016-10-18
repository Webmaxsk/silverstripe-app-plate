# silverstripe-intranet-plate
SilverStripe CMS starter project (aka plate) for web sites like intranet (documentation or app-like looking projects).

## Supported modules
- Userforms
- Event calendar
- Blog & Widgets & Comments
- Maximages & Maxdocuments
- Member widgets & Member bookmarks & Member polls
- Navigation is using CC-BY_NC-4.0 licensed jquery.mmenu plugin! Purchase here: http://mmenu.frebsite.nl/download.html  
- Other JS mplugins in use: magnificPopup, slick carousel, touchswipe, wookmark

## Keep Project structure (if want to use included vagrant setup)
See more here: https://github.com/Webmaxsk/silverstripe-vagrant/

       Project root
       /         \
    config.json    public
               	    \
              	    Here is intranet-plate-module



## Installation && Vagrant setup

clone intranet-plate to public folder (see project structure above)
```bash
cd your-project-root && git clone git@github.com:Webmaxsk/silverstripe-intranet-plate.git public && rm -rf public/.git
```

add config.json to Project root
- you can find sample in public/vagrant/config.json.sample
- set your static IP, theme path (if using gulp), provider (virtualbox or lxc), db

initialize vagrant
```bash
cd public/vagrant && vagrant up 
```

OPTIONAL: if using non-default vagrant provider - add provider to the end
```bash
cd public/vagrant && vagrant up --provider="lxc"
```

Your project will run on your static IP defined in config.json now ;)

Important: See public/vagrant/README.md for additional information and config (node_modules installation and watching files, using sspak, composer and sake)

Optional: you can import data sample (assets and db)
```bash
vrun mysspak load-2-local public/sample.sspak
```
