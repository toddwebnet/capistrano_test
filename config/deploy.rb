 # config valid for Capistrano 3.1
 # require 'capistrano/ext/multistage'

lock '3.10.0'

set :stages, ["production"]
set :default_stage, "production"
set :ssh_options, {:forward_agent => true}

set :application, 'capistrano'
set :repo_url, 'git@github.com:toddwebnet/capistrano_test.git '
set :user, "toddwebnet"

 set :linked_dirs, %w(my_shared_directory)

 namespace :deploy do
   desc 'Print The Server Name'
   task :print_server_name do
     on roles(:app), in: :groups, limit: 1 do
       execute "hostname"
     end
   end
   after :starting, 'composer:install_executable'
 end

 after "deploy:updated", "deploy:print_server_name"
