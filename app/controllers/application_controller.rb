require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get "/" do
      erb :index
    end

    post "/teams" do
      @team = Team.new(params[:team])

      params[:team][:members].each do |member|
        hero = Hero.new(member)
        hero.team = @team
        hero.save
      end

      erb :team
    end

end
