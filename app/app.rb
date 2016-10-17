require 'sinatra/base'
require 'sinatra/partial'

# require_relative 'server'
# require_relative 'controllers/database'

class DatabaseTech < Sinatra::Base
  set :port, 4000
  use Rack::MethodOverride
  set :sessions, true
  set :session_secret, 'super secret'
  # register Sinatra::Partial

  get '/' do
    'Hello world!'
  end

  get '/set' do
    # /set?somekey=somevalue it should store the passed key and value in memory
    @keys = { somekey: params['somekey'] }
  end

  get '/get' do
    # /get?key=somekey it should return the value stored at somekey
    @keys[params['key']]
    # uses title and author variables; query is optional to the /posts route
  end

  run! if app_file == $0
end
