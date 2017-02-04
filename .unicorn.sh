#!/bin/bash
# This file is meant to be executed via systemd.
source /usr/local/rvm/scripts/rvm
source /etc/profile.d/rvm.sh
export ruby_ver=$(rvm list default string)

export CONFIGURED=yes
export TIMEOUT=50
export APP_ROOT=/home/rails/www/jcfausto-rails-website/current
export RAILS_ENV="production"
export GEM_HOME="/home/rails/www/jcfausto-rails-website/curent/vendor/bundle"
export GEM_PATH="/home/rails/www/jcfausto-rails-website/curent/vendor/bundle:/usr/local/rvm/gems/${ruby_ver}:/usr/local/rvm/gems/${ruby_ver}@global"
export PATH="/home/rails/www/jcfausto-rails-website/curent/vendor/bundle/bin:/usr/local/rvm/gems/${ruby_ver}/bin:${PATH}"

# Execute the unicorn process
/home/rails/www/jcfausto-rails-website/curent/vendor/bundle/bin/unicorn \
        -c /etc/unicorn.conf -E production --debug