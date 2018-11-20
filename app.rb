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
    redirect '/sounds'
  end

end
