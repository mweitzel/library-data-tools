# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)

LibraryDataTools::Application.load_tasks

desc "seed database"
namespace :db do
  task :seed do
    require './db/seed/load_aadl.rb'
  end
end
