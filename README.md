# README

Windows:

1. Remove puma file under config folder.
2. Change postgres details. Should be either blank (No spaces) or "password"



Updated:

Git clone…
 mv /home/rails/---Rails---Blogsite/ /home/rails/Blog
Put puma.rb BACK under the config directory
Make SURE that there’s a “sockets” directory under the shared folder
Bundle exec puma

Killing server Rails:
Ps aux | grep rails
Kill -9 (whatever the process ID is, second from the left, eg 18901)
Windows/linux switch:
Remove puma file under config folder (if required, see last section).
Change postgres details. Should be either blank (No spaces) for windows or "password" for linux.
The development/production.rb files under the environment folder require the following lines: “Paperclip.options[:command_path] = 'C:\Program Files (x86)\GnuWin32\bin; C:\ImageMagick-6.9.9-Q16'” and “Paperclip.options[:swallow_stderr] = false”
environment/production for linux, environment/development for windows













Loading an update from github to linux:

Kill rails instance, remove Blog, clone github repo, ensure that sockets exists, puma.rb is under config folder in rails project and

If you’re in development mode, create the puma.rb file and copy the below.

Weird css?  Rails assets:clean then rails assets:precompile
 And restart with puma
Running on Linux server:

Service nginx stop
Service nginx restart
Service puma restart
Puma (by itself, has to be in blog folder. Use when restarting Digital Ocean instance.)

Postgres:
pg_dump -Ft blogsite_production > blogdb.tar
Su -postgres
Psql






General Rails stuff:

When doing a bundle install, bcrypt will reinstall with an extra version that completely screws up the server. Use “gem uninstall bcrypt” (Possibly keep the minGW version? Must confirm this. Or just remove all of them), then “gem install bcrypt --platform=ruby” to solve this after a bundle install.

gem install bcrypt --platform=ruby --version= 4.2.4

Front end issues may be solved using “rake assets: clean”, then “rake assets:precompile”

CKEDITOR:

RED X Problem:
Check C:/ckeditor_assets/pictures and see if the file is actually uploading, but not being read from the correct location. Check the Picture Model for CK Editor, it is likely pointing to the wrong location


/usr/bin directory


Make a Puma.rb file under the config folder and write the following:

# Change to match your CPU core count
#workers 2
#workers 2 unless Gem.win_platform?

# Min and Max threads per worker
threads 1, 6

app_dir = File.expand_path("../..", __FILE__)
shared_dir = "#{app_dir}/shared"

# Default to production
rails_env = ENV['RAILS_ENV'] || "production" #Change to production for server
environment rails_env

# Set up socket location
bind "unix://#{shared_dir}/sockets/puma.sock"

# Logging
stdout_redirect "#{shared_dir}/log/puma.stdout.log", "#{shared_dir}/log/puma.stderr.log", true

# Set master PID and state locations
pidfile "#{shared_dir}/pids/puma.pid"
state_path "#{shared_dir}/pids/puma.state"
activate_control_app

on_worker_boot do
  require "active_record"
  ActiveRecord::Base.connection.disconnect! rescue ActiveRecord::ConnectionNotEstablished
  ActiveRecord::Base.establish_connection(YAML.load_file("#{app_dir}/config/database.yml")[rails_env])
end


