# frozen_string_literal: true

# typed: strict

require "sinatra/base"
require "sinatra/reloader"
require "sinatra/json"
require "oauth2"
require "dotenv"
require "rack"
require "rack/session/redis"

Dotenv.load(".env.development", ".env.development.local")

module Kawara
  module Web
    class Application < Sinatra::Base
      use Rack::Session::Redis

      configure :development do
        register Sinatra::Reloader
      end

      get "/auth/google/authorize_url" do
        session[:state] = SecureRandom.uuid
        url = Gateway::GoogleOauth2Client.new.authorize_url(state: session[:state])
        json(authorize_url: url)
      end
    end
  end
end
