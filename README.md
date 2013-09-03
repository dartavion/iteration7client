AMC-client - Exhibitor's and Events Search (Mobile First)
==========

UI Development
---

* Download & Install VirtualBox https://www.virtualbox.org
* Download & Install Vagrant http://www.vagrantup.com

Step 1. INSTALL VIRTUAL BOX 4.2.12
https://www.virtualbox.org/wiki/Download_Old_Builds_4_2
Click the link OS X hosts -> Intel Macs to download the .dmg installation file for Virtual Box 4.2.12 **
** Last time checked the latest release (4.2.14) of Virtual Box had issues.

Step 2. RUN VIRTUAL BOX
When the installation is complete, go to the Applications folder on your Mac and run Virtual Box.

STEP 3. INSTALL VAGRANT
http://downloads.vagrantup.com/tags/v1.2.7
Click the link Vagrant-1.2.7.dmg to download and install Vagrant.

STEP 4. SETUP VAGRANT BOX
http://www.vagrantbox.es/
Run the command lines below to setup Vagrant:
Fadi already configured and boxed Virtual Machine so you can skip adding box and initialization of it.
Just cd to AMC-client directory and evaluate in terminal:
vagrant up
It will take ~15-20 minutes to download a remote VM and and configure it on your environment.

STEP 5. SSH INTO THE VIRTUAL BOX VIA VAGRANT
vagrant ssh

STEP 6. NOW YOU CAN TRY STEPS FROM README
Open a terminal and navigate to this project.
Type these step by step
	1.	vagrant up (done)
	2.	vagrant ssh (done)
	3.	cd /vagrant
	4.	bower install
	5.	grunt server

	•	Visit http://192.168.33.30:9000 in a browser
If you want to test and use LiveReload enter the following in the terminal
	•	grunt server && karma start


### UI Architecture

We are using

- [Twitter's Bootstrap 3](http://getbootstrap.com/)
- [AngulaJS v1.2.0-rc1](http://angularjs.org/)
- [Yeoman](http://yeoman.io/)
- [Bower Package Manager](http://bower.io/)
- [Grunt JS Task Runner](http://gruntjs.com/)

#### Angular Help

-[Learning](https://github.com/jmcunningham/AngularJS-Learning)
-[Learning Videos from Egghead.io](http://egghead.io/lessons)

If you want to test and use LiveReload enter the following in the terminal

- grunt server && karma start

### Troubleshooting

If you see this in the terminal when you run npm install

> create karma-e2e.conf.js
>
> events.js:130
>
> throw TypeError('listener must be a function');

then take a look at issue [#224](https://github.com/yeoman/generator-angular/issues/224)

Two things to try

- npm cache clean
- npm uninstall -g generator-karma && npm install -g generator-angular


### Testing
[Unit, Midway and E2E Examples](http://www.yearofmoo.com/2013/01/full-spectrum-testing-with-angularjs-and-karma.html)

- Run application - grunt server
- Run End to End tests - grunt test:e2e
- Run Unit tests grunt test:unit

### Pushing to github.io

- run tests first
- Build application - grunt build
- Commit and push to github if tests are passing
- Push to github.io - grunt gh-pages

- To see changes visit - http://digitalscientists.github.io/AMC-client/

