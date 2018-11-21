require 'sinatra/base'
require './lib/sounds.rb'

class SoundAttic < Sinatra::Base

  get '/' do
    erb(:index)
  end

  get '/sounds' do
    @sounds = Sounds.all
    erb(:sounds)
  end

  get '/sounds/create' do
    erb :'sounds/create'
  end

  post '/create' do
    Sounds.create({title: params[:title], genre: params[:genre], artist: params[:artist], release_year: params[:release_date]})
    redirect '/sounds'
  end

end
