# JS Boilerplate

This is a boilerplate to be used for Jekyll-assignments in the course. The virtual machine (Ubuntu 32bit) will have the following default installed:
* node.js
* npm
* git 
* ruby (latest stable)

## Install
Make sure you have the following installed on your system:
* Virtual Box [https://www.virtualbox.org/](https://www.virtualbox.org/)
* Vagrant [https://www.vagrantup.com/](https://www.vagrantup.com/)

Now, do:

1. Pull (`git pull https://github.com/1dv022/jekyll-boilerplate.git`) into your existing repo. Make sure you are in the root of your repo.

2. Start the virtual machine using `vagrant up` (Will take 15-30 minutes. Ignore red command line statements and warnings. Lean back and feel like an 1337 haxx0r as the commands scroll by.)

3. SSH into the machine using  `vagrant ssh`

4. Change directory to `cd /vagrant`

5. Install jekyll using `gem install jekyll`

6. Create an scaffolded jekyll project using `jekyll new . --force` (`.` to install in the root directory (`/vagrant`), and `--force` to ignore that the directory is not empty)

## Daily workflow
1. Start out by `vagrant up` your machine and ssh into it (`vagrant ssh`). Change directory to `cd /vagrant`.

2. Start watching for changes in the app-directory by `npm run gulp:watch`. Now you have a small webserver serving your application on the adress: `http://localhost:9090`, try it out in the browser of your choise.

3. Fire up the IDE of your choise (Webstorm, sublime etc.) and open the files in the `js-boilerplate`-folder or `js-boilerplate/app`-folder and start editing your application. If you make a change in an html-, css- or js-file the tasks for that file will run and the web page in your browser will autoreload.

4. When you are done simply `ctrl+c` to abort the watch, `exit` to  exit the ssh-session and do a `vagrant halt` to stop the machine or `vagrant suspend` to only suspend it.
