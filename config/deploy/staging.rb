set :user, "rails"
set :deploy_to, "/home/#{user}/#{application}"

role :web, "dellerbie.com"
role :app, "dellerbie.com"
role :db,  "dellerbie.com", :primary => true