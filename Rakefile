require 'sinatra/activerecord/rake'
require_relative './config/environment'


desc "Runs a pry console"
task :console do
    #This turns on logging of SQL generated by Active Record 
    ActiveRecord::Base.logger = Logger.new(STDOUT)
    #This starts a pry session
    Pry.start
end

desc "Start the server"
task :server do
    #This turns on logging of SQL generated by Active Record 
    if ActiveRecord::Base.connection.migration_context.needs_migration? 
        puts "Pending migrations. You will need to run `rake db:migrate` first"
        return
    end
    # rerun here will allow auto-reloading of server when files are updated
   exec "bundle exec rerun -b 'rackup config.ru'"
end