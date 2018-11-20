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

end
