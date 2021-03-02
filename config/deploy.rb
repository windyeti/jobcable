# config valid for current version and patch releases of Capistrano
lock "~> 3.16.0"

set :application, "jobcable"
set :repo_url, "git@github.com:windyeti/jobcable.git"

# Default branch is :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

# Default deploy_to directory is /var/www/my_app_name
set :deploy_to, "/var/www/jobcable"

set :linked_files, fetch(:linked_files, []).push('config/database.yml', 'config/secrets.yml')
set :linked_dirs, fetch(:linked_dirs, []).push('log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'vendor/bundle', 'public')
set :format, :pretty
set :log_level, :info
set :whenever_identifier, ->{ "#{fetch(:application)}_#{fetch(:stage)}" }
set :delayed_job_workers, 1
set :delayed_job_roles, [:app]
set :delayed_job_pid_dir, '/tmp'
set :unicorn_rack_env, -> { production }

after 'deploy:publishing', 'unicorn:restart'

