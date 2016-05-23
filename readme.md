[![Build Status](https://travis-ci.org/m38io/todomvc.svg?branch=master)](https://travis-ci.org/m38io/todomvc)

# Take home assignment

Completing this project will introduce you to several skills and concepts that are relevant to the new role. You will use [Continuous Integration](http://www.martinfowler.com/articles/continuousIntegration.html), [Docker](https://www.docker.com/), [git](https://git-scm.com/), [NodeJS](nodejs.org), [Vagrant](https://www.vagrantup.com/) and even [Markdown](https://help.github.com/articles/basic-writing-and-formatting-syntax/).

Your mission should you choose to accept it:

1.  Set up your [Development Environment](#development-environment)

2.  [Fork](https://help.github.com/articles/fork-a-repo/) this repository

3.  [Run the application locally](#running-locally)

4.  [Set Up a Build Using Travis CI] (#travis-ci)

5.  [Set up a GitHub Page for your project](https://help.github.com/categories/github-pages-basics/) for your repository

6.  Add a badge and a link to your passing Travis CI page from step (4) and your GitHub Page from step (5) to the [Working Apps!](#working-apps) section of this `readme.md`
    - [How to Add Travis CI Badges to a README](https://docs.travis-ci.com/user/status-images/)
    - [How to format images and links using Markdown](https://guides.github.com/features/mastering-markdown/#examples)

7.  [Submit a Pull Request](https://help.github.com/articles/creating-a-pull-request/) to the master branch of [m38io/todomvc](https://github.com/m38io/todomvc)

# Development Environment

If you don't want to install tools like git and docker locally, and you don't want to worry about everything working consistently on your local machine and out on GitHub and Travis CI, you should work on this project using [Vagrant](https://www.vagrantup.com/downloads.html) or other Docker/Docker compose runtime environment.

Here is how to download and set up Vagrant 

Note: The Vagrant box provided has a pre-configured
Docker/Docker compose environment and is the supported model. This is to ensure a consistent development
environment by keeping the host OS and docker versions identical across all contributors machines. The
application should be able to be run natively on docker/docker-compose but be aware that you are on your
own if you experience problems!`

# Running Locally

1. [Setup a GitHub account (choose the free one!)](https://github.com/join) _(skip this step if you alread have an account)_

2. [Fork](https://help.github.com/articles/fork-a-repo/) this repository

3. [Add your ssh key for your development environment to GitHub](https://help.github.com/articles/adding-a-new-ssh-key-to-your-github-account/)

4. Open a Terminal (OSX or Linux) or a Command Prompt (Windows) and go to the path where you usually place your code projects. 

Then, perform this series of commands _(if you are not using Vagrant, replace the vagrant commands with the ones that you need to use your alternative tool, if any)_

        git clone git@github.com:<your-github-username>/todomvc.git
        cd todomvc
        vagrant up
        vagrant ssh
        cd /vagrant
        docker build -t todomvc .
        docker run -ti --rm -p 8080:8080 todomvc

5. Open your browser to [http://localhost:8888](http://localhost:8888) or [http://192.168.70.4:8080](http://192.168.70.4:8080)

# Travis CI
1.  [Setup a Travis CI account](https://docs.travis-ci.com/user/getting-started/) _(skip this step if you already have one)_
1.  Log in to [Travis CI](https://travis-ci.org)
2.  [Flick] (https://travis-ci.org/getting_started) on Build for the repo you created in step (2)
3.  Create `.travis.yml` and push it to your fork (follow [Node instructions](https://docs.travis-ci.com/user/languages/javascript-with-nodejs/) for your `.travis.yml`)
    - *IMPORTANT* You don't need to add all the Node versions shown in the example for your build. Just add a few of the latest ones.
    - For extra credit, you can change the build to use Docker [Ruby Example](https://docs.travis-ci.com/user/docker/). This is fairly advanced, but the hint is that this will be the `before_install` entry
        ```yaml
        before_install:
            - docker build -t m38io/todomvc .
        ```
    and that the `script` entry will be a `docker run` command 
    

# Working Apps!

-  [https://github.com/m38io/todomvc](https://github.com/m38io/todomvc) by [m38io](https://m38io.github.io) [![Build Status](https://travis-ci.org/m38io/todomvc.svg?branch=master)](https://travis-ci.org/m38io/todomvc)
