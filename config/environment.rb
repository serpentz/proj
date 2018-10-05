require 'bundler/setup'
require "sinatra/activerecord"
require 'require_all'

Bundler.require


ActiveRecord::Base.establish_connection(
  :adapter => "sqlite3",
  :database => "db/test.sqlite"
)
ActiveRecord::Base.logger = nil

# require_all '../app'
require_relative '../app/models/Assignment.rb'
require_relative '../app/models/PullRequest.rb'
require_relative '../app/models/Student.rb'
