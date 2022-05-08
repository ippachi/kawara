# typed: strict

class Sinatra::Base
  extend Sinatra::JSON
  include Sinatra::JSON

  extend Sinatra::Helpers
  include Sinatra::Helpers
end
