AMC-client - Exhibitor's and Events Search (Mobile First)
==========

UI Development
---

* Download & Install VirtualBox https://www.virtualbox.org
* Download & Install Vagrant http://www.vagrantup.com

Open a terminal and navigate to this project.

Type these step by step

1. vagrant up
2. vagrant ssh
3. cd /vagrant
4. bower install
5. grunt

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



