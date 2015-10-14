set :application, "test5"
set :domain,      "45.63.52.40"
set :user,       "root"
set :use_sudo,    false
set :deploy_to,   "/var/www/"
set :app_path,    "app"

set :repository,  "https://github.com/sidmahata/test5.git"
set :deploy_via,   :copy
set :scm,         :git
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `subversion`, `mercurial`, `perforce`, or `none`

set :model_manager, "doctrine"
# Or: `propel`

role :web,        domain                         # Your HTTP server, Apache/etc
role :app,        domain, :primary => true       # This may be the same as your `Web` server

set  :shared_files,     ["app/config/parameters.yml"]
set  :shared_children,  [app_path + "/logs", web_path + "/uploads"]

set  :use_composer,     true
set  :update_vendors,   true
set  :keep_releases,  3


after "deploy:setup", "upload_parameters"

# Be more verbose by uncommenting the following line
# logger.level = Logger::MAX_LEVEL