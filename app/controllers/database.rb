class Database < Sinatra::Base

  get '/' do
    'Hello world!'
  end
  
  get '/set' do
    # /set?somekey=somevalue it should store the passed key and value in memory
    @somekey = params['somekey']
  end

  get '/get' do
    # /get?key=somekey it should return the value stored at somekey
    @somekey[params['key']]
    # uses title and author variables; query is optional to the /posts route
  end
end
