require 'sinatra/base'

module AdderBot
  class Web < Sinatra::Base
    get '/' do
      'Math is really awesome to know.'
    end
  end
end
