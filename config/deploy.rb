# config valid only for current version of Capistrano
lock '3.7.2'

# Define the name of the application
set :application, 'jcfausto-com'

# Define where can Capistrano access the source repository
# set :repo_url, 'https://github.com/[user name]/[application name].git'
set :scm, :git
set :repo_url, 'https://github.com/jcfausto/jcfausto-rails-website.git'

# Define where to put your application code
set :deploy_to, "/home/rails/www/jcfausto-rails-website"

set :pty, true

set :format, :pretty

# Set the post-deployment instructions here.
# Once the deployment is complete, Capistrano
# will begin performing them as described.
# To learn more about creating tasks,
# check out:
# http://capistranorb.com/

  namespace :deploy do

   desc 'Restart application'
   task :restart do
     on roles(:app), in: :sequence, wait: 5 do
       # Your restart mechanism here, for example:
       # execute :touch, release_path.join('tmp/restart.txt')
       # execute ". /home/rails/jcfausto-rails-website/post-deploy.sh"
     end
   end

   after :publishing, :restart

   after :restart, :clear_cache do
     on roles(:web), in: :groups, limit: 3, wait: 10 do
       # Here we can do anything such as:
        within release_path do
          #execute :rake, 'cache:clear'
          execute 'sudo systemctl stop nginx.service'
          execute 'sudo systemctl stop unicorn.service'

          execute 'cp /home/rails/www/.unicorn.sh cd /home/rails/www/jcfausto-rails-website/current'

          #Will install the gems inside vendor/bundle
          #http://bundler.io/v1.5/man/bundle-config.1.html
          execute 'cd /home/rails/www/jcfausto-rails-website/current && RAILS_ENV=production bundle install --deployment'
          execute 'cd /home/rails/www/jcfausto-rails-website/current && RAILS_ENV=production bundle exec rake db:migrate'
          execute 'cd /home/rails/www/jcfausto-rails-website/current && RAILS_ENV=production bundle exec rake assets:precompile'
          
          execute 'sudo systemctl restart nginx.service'
          execute 'sudo systemctl restart unicorn.service'
        end
     end
   end

 end

