# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)

LibraryDataTools::Application.load_tasks

desc "seed database"
namespace :db do
  task :seed do
    if ARGV[1]
      require './db/seed/load_aadl.rb'
    else
      puts "please specify csv file ( eg: ./db/seed/aadl_holds_small.csv )"
    end
  end
end
