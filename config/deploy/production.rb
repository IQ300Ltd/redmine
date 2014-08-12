set :domain,        'redmine.iq300.ru'
set :rails_env,     'production'
set :user,          'redmine'

server '144.76.81.182', user: fetch(:user), roles: %w{web app db}, primary: true

set :scm_username, fetch(:user)
set :runner, fetch(:user)
set :deploy_to,     "/home/#{fetch(:user)}/www/apps/redmine"

set :rvm_type, :system
set :rvm_ruby_version, '2.0.0@redmine'