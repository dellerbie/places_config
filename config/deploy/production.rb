ssh_options[:keys] = [File.join(ENV["HOME"], ".ssh", "ec2", "mykeypair.pem")]

set :user, "ubuntu"
set :deploy_to, "/srv/www/#{application}"

role :web, "ec2-107-22-102-193.compute-1.amazonaws.com"
role :app, "ec2-107-22-102-193.compute-1.amazonaws.com"
role :db,  "ec2-107-22-102-193.compute-1.amazonaws.com", :primary => true