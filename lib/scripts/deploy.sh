#!/bin/bash
set -x
if [ $TRAVIS_BRANCH == 'master' ] ; then
		eval `ssh-agent -s` #start shh agent 
		ssh-add ~/.ssh/id_rsa
    
    # Initialize a new git repo and push it to our server.
    git init
        
    git remote add deploy "deploye@jcfausto.com:/home/rails/jcfausto-rails-website"
    git config user.name "Travis CI"
    git config user.email "jcfausto@gmail.com"
    
    git add .
    git commit -m "Deploy"
    git push --force deploy master
else
    echo "Not deploying, since this branch isn't master."
fi