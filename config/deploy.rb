require 'capistrano/ext/multistage'

set :stages, %w(staging production)
set :default_stage, "staging"
set :application, "places_config"
set :domain, "grub.dellerbie.com"

default_run_options[:pty] = true  # Must be set for the password prompt from git to work
set :repository, "git@github.com:dellerbie/places_config.git"
set :scm, "git"
set :scm_verbose, true
set :use_sudo, false
set :branch, "master"
set :deploy_via, :remote_cache

namespace :deploy do
  task :start do ; end
  task :stop do ; end
  task :restart do ; end
end