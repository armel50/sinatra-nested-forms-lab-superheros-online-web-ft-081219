require 'sinatra/base'
require_relative '../models/team.rb'
require 'pry'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }
  get '/' do 
    erb :super_hero
  end 
  
  post '/teams' do
    p params
    @team = Team.new(team_name: params["team"]["name"], motto:  params["team"]["motto"], hereos:  params["team"]["heroes"])
    P @team.team_name
    erb :team
  end

end
