[![Build Status](https://travis-ci.org/m38io/todomvc.svg?branch=master)](https://travis-ci.org/m38io/todomvc)

# Take home assignment

Your mission should you choose to accept it:

1.  Set up your [Development Environment](#development-environment)
2.  [Fork](https://help.github.com/articles/fork-a-repo/) this repository
3.  [Run the application locally](#running-locally)
4.  [Set Up Travis CI] (#travis-ci)
5.  [Set up a GitHub Page](https://help.github.com/categories/github-pages-basics/) for your repository
6.  Add a link to your passing Travis CI page and your GitHub Page from step (5) to the [Working Apps!](#working-apps) section of this `readme.md`
7.  [Submit a Pull Request](https://help.github.com/articles/creating-a-pull-request/) to [m38io/todomvc](https://github.com/m38io/todomvc)


## Running Locally

1. Fork this Repository

2. Open a Terminal:

        git clone git@github.com:<your-github-username>/todomvc.git
        cd todomvc
        vagrant up
        vagrant ssh
        cd /vagrant
        docker build -t todomvc .
        docker run -ti --rm -p 8080:8080 todomvc

3. Open your browser to [http://localhost:8888](http://localhost:8888) or [http://192.168.70.4:8080](http://192.168.70.4:8080)

# Travis CI

    1.  Log in to [Travis CI](https://travis-ci.org)
    2.  Flick on Build for the repo you created in step (2)
    3.  Create `.travis.yml` and push it to your fork (follow [Node instructions](https://docs.travis-ci.com/user/languages/javascript-with-nodejs/) for your `.travis.yml`)
    
# Development Environment

TODO: Evgeny to finish

* [Vagrant](https://www.vagrantup.com/downloads.html) or other Docker/Docker compose runtime environment.

    Note: The Vagrant box provided has a pre-configured
    Docker/Docker compose environment and is the supported model. This is to ensure a consistent development
    environment by keeping the host OS and docker versions identical across all contributors machines. The
    application should be able to be run natively on docker/docker-compose but be aware that you are on your
    own if you experience problems!`


# Working Apps!

- [![Build Status](https://travis-ci.org/m38io/todomvc.svg?branch=master)](https://travis-ci.org/m38io/todomvc) by [m38io](https://m38io.github.io)
