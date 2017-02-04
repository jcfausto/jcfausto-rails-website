# Define roles, user and IP address of deployment server
# role :name, %{[user]@[IP adde.]}
role :app, %w{rails@jcfausto.com}
role :web, %w{rails@jcfausto.com}
role :db,  %w{rails@jcfausto.com}

# Define server(s)
server 'jcfausto.com', user: 'rails', roles: %w{web}

# SSH Options
# See the example commented out section in the file
# for more options.
set :ssh_options, {
    forward_agent: true,
    auth_methods: ["publickey"],
    keys: ["~/.ssh/do_jcfrails_deploy"]
}