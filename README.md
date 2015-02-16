# JS Boilerplate

This is a boilerplate to be used for JS-assignments in the course. 

## Install
Make sure you have the following installed on your system:
* Virtual Box [https://www.virtualbox.org/](https://www.virtualbox.org/)
* Vagrant [https://www.vagrantup.com/](https://www.vagrantup.com/)

Now, do:
* Clone (`git clone https://github.com/1dv022/js-boilerplate.git`) this repro to the location you want the project to live. Note that git clone will create the directory `js-boilerplate` for you if you do not specify otherwise. 

* Change directory to `cd js-boilerplate`. 

* Start the virtual machine using `vagrant up` (Will take a couple of minutes)

* SSH into the machine using  `vagrant ssh`

* Change directory to `cd /vagrant`

* Install all dependencies (incl. bower dependencies) `npm install` (Note: will take 5-10 minutes)

## Running tasks
You find all prepered tasks in package.json under "scripts".

The most relevant are:
* `npm run gulp` Builds the system clean into the "dist"-folder
* `npm run gulo:build` Builds the system into the "dist"-folder
* `npm run gulp:watch` Watches for changes to .html, .scss and .js


## Daily workflow
Start out by `vagrant up` your machine and ssh into it (`vagrant ssh`). Change directory to `cd /vagrant`.

Start watching for changes in the app-directory by `npm run gulp:watch`. Now you have a small webserver serving your application on the adress: `http://localhost:9090`, try it out in the browser of your choise.

If you make a change in an html-, css- or js-file the tasks for that file will run and the web page in your browser will autoreload.

When you are done simply `ctrl+c` to abort the watch, `exit` to  exit the ssh-session and do a `vagrant halt` to stop the machine or `vagrant suspend` to only suspend it.