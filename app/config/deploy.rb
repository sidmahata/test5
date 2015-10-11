set :application, "test5"
set :domain,      "192.168.33.10"
set :user,       "vagrant"
set :deploy_to,   "/var/www/"
set :app_path,    "app"

set :repository,  "file:///C:/xampp/htdocs/capvagrant"
set :deploy_via,   :copy
set :scm,         :git
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `subversion`, `mercurial`, `perforce`, or `none`

set :model_manager, "doctrine"
# Or: `propel`

role :web,        domain                         # Your HTTP server, Apache/etc
role :app,        domain, :primary => true       # This may be the same as your `Web` server

set  :use_composer,     true

set  :keep_releases,  3

# Be more verbose by uncommenting the following line
# logger.level = Logger::MAX_LEVEL