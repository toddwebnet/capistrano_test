set :deploy_to, "/sites/capistrano_example"

server 'carve.io', user: 'toddwebnet', roles: %w(web app db)
