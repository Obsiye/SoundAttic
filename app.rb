require 'sinatra/base'

class SoundAttic < Sinatra::Base

  get '/' do
    erb(:index)
  end

end
