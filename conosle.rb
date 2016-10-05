require 'pry'
require "sinatra"
require "sinatra/reloader"
require "active_record"

require_relative "db/connection"
require_relative "models/pokemon"
require_relative "crud/post.rb"
require_relative "crud/get.rb"
require_relative "crud/edit.rb"
require_relative "crud/delete.rb"
binding.pry

puts "this line fixes binding.pry bug"
