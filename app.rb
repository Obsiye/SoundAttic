require 'sinatra/base'

class SoundAttic < Sinatra::Base

  get '/' do
    erb(:index)
  end

  get '/sounds' do
    @sounds = ['biglife.mp3', 'havocroad.mp3', 'lilnoway.mp3']
    erb(:sounds)
  end

end
