set :public_folder, proc { File.join(root) }

class Database < Sinatra::Base
  use Rack::MethodOverride
  enable :sessions
  set :session_secret, 'super secret'
  register Sinatra::Partial
  set :partial_template_engine, :erb
  enable :partial_underscores
  set :port, 4000

end
