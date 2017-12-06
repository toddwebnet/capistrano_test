set :deploy_to, "/sites/capistrano_example"

server '192.168.200.10', user: 'vagrant',  password:'vagrant', roles: %w(web app db)
