AMC-client - Exhibitor's and Events Search (Mobile First)
==========

UI Development
---

* Download & Install VirtualBox https://www.virtualbox.org
* Download & Install Vagrant http://www.vagrantup.com


1. Download AMC-Client source in to your source folder:
git clone https://github.com/digitalscientists/AMC-client.git

2. CD to your AMC-client source
cd AMC-client

3. Run vagrant
vagrant up

That's it. Check your code in and read the "Pushing to github.io" section you are ready to publish to test.

### Pushing to github.io

- run tests first
- Build application - grunt build
- Commit and push to github if tests are passing
- Push to github.io - grunt gh-pages

- To see changes visit - http://digitalscientists.github.io/AMC-client/



Additional Info: 

 - Visit http://192.168.33.30:9000 in a browser
If you want to test and use LiveReload enter the following in the terminal
 - grunt server && karma start
 - Learn Yeoman to automate scaffolding to testing
	- Yo scaffolds out a new application, writing your Grunt configuration and pulling in relevant Grunt tasks that you might need for your build.
	- Grunt is used to build, preview and test your project, thanks to help from tasks curated by the Yeoman team and grunt-contrib.
	- Bower is used for dependency management, so that you no longer have to manually download and manage your scripts.

	


### UI Architecture

We are using

- [Twitter's Bootstrap 3](http://getbootstrap.com/)
- [AngulaJS v1.2.0-rc1](http://angularjs.org/)
- [Yeoman](http://yeoman.io/)
- [Bower Package Manager](http://bower.io/)
- [Grunt JS Task Runner](http://gruntjs.com/)

#### Angular Help

- [Learning](https://github.com/jmcunningham/AngularJS-Learning)
- [Learning Videos from Egghead.io](http://egghead.io/lessons)

If you want to test and use LiveReload enter the following in the terminal
````
grunt server && karma start
````

### Troubleshooting

If you see this in the terminal when you run npm install

> create karma-e2e.conf.js
>
> events.js:130
>
> throw TypeError('listener must be a function');

then take a look at issue [#224](https://github.com/yeoman/generator-angular/issues/224)

Two things to try
````
npm cache clean
npm uninstall -g generator-karma && npm install -g generator-angular
````

### Testing
[Unit, Midway and E2E Examples](http://www.yearofmoo.com/2013/01/full-spectrum-testing-with-angularjs-and-karma.html)

Run application
````
grunt server
````
Run End to End tests Though this is going to change from Karma to - [Protractor](https://github.com/angular/protractor/blob/master/docs/control-flow.md)
````
grunt test:e2e
````
Run Unit tests
````
 grunt test:unit
````



