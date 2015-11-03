# Jekyll Boilerplate

This is a boilerplate to be used for Jekyll-assignments in the course. The virtual machine (hashicorp/precise32) will have the following (relevant) packages installed:

From start:
* node.js (Latest stable)
* npm
* git 
* bundler

From npm install:
* jekyll (via bundler)
* scss (via bundler)


## Install
Make sure you have the following installed on your system:
* Virtual Box [https://www.virtualbox.org/](https://www.virtualbox.org/)
* Vagrant [https://www.vagrantup.com/](https://www.vagrantup.com/)

Now, do:

1. Pull (`git pull https://github.com/1dv022/jekyll-boilerplate.git`) into your existing repo. Make sure you are in the root of your repo.

2. Start the virtual machine using `vagrant up` (May take 10-30 minutes this first time. Ignore red command line statements and warnings.)

3. SSH into the machine using  `vagrant ssh` (Now you are connected to the virtual machine. Every command is now executed in the virtual mashine. If you do `exit` you leave the virtual machine and are back on your local computer.)

4. Change directory to `cd /vagrant`

5. Install depencies and github-pages `npm install`

6. Do a `bundle install`

7. Create an scaffolded jekyll project using `jekyll new src` (`src` to install in the directory (`/vagrant/src`)

## Daily workflow
1. Start out by `vagrant up` your machine and ssh into it (`vagrant ssh`). Change directory to `cd /vagrant`.

2. Start watching for changes in the jekyll files. `npm run watch`

3. Open up a browser and visit the url `http://localhost:4000`

4. Fire up the IDE of your choise (Webstorm, sublime etc.) and open the files in the `src`-folder and start editing your site. When a file is saved the watch-script will auto generate the site. (including sass-files but not true for _config.yml)

5. When you are done simply `ctrl+c` to abort the watch, `exit` to  exit the ssh-session and do a `vagrant halt` to stop the machine or `vagrant suspend` to only suspend it.
