# Define roles, user and IP address of deployment server
# role :name, %{[user]@[IP adde.]}
role :app, %w{deployer@jcfausto.com}
role :web, %w{deployer@jcfausto.com}
role :db,  %w{deployer@jcfausto.com}

# Define server(s)
server 'jcfausto.com', user: 'deployer', roles: %w{web}

# SSH Options
# See the example commented out section in the file
# for more options.
set :ssh_options, {
    forward_agent: true,
    auth_methods: ["publickey"],
    keys: ["~/.ssh/do_jcfrails_deploy"]
}
