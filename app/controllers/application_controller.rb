require 'sinatra/base'
require_relative '../models/team.rb'
require 'pry'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }
  get '/' do 
    erb :super_hero
  end 
  
  post '/teams' do
    @team = params
  
   
    erb :team
  end

end
