# frozen_string_literal: true

# typed: strict

require "sinatra/base"
require "sinatra/reloader"
require "sinatra/json"
require "oauth2"
require "dotenv"
require "rack"
require "rack/session/redis"
require "committee"
require "sorbet-runtime"
require "rack/cors"
require_relative "../lib/kawara/gateway"

Dotenv.load(".env.development", ".env.development.local")

module Kawara
  module Web
    class Application < Sinatra::Base
      open_api = OpenAPIParser.parse(YAML.load_file("openapi.yaml"))
      schema = Committee::Drivers::OpenAPI3::Driver.new.parse(open_api)
      COMMITTEE_OPTIONS = T.let(
        {
          schema:,
          coerce_date_times: true,
          old_assert_behavior: true,
          query_hash_key: "rack.request.query_hash",
          parse_response_by_content_type: false
        }, T::Hash[Symbol, T.untyped]
      )

      use Rack::Session::Redis
      use Committee::Middleware::RequestValidation, COMMITTEE_OPTIONS
      use Rack::Cors do
        T.bind(self, Rack::Cors)
        allow do
          T.bind(self, Rack::Cors::Resources)

          origins ENV["CLIENT_BASE_URL"]
          resource "*", headers: "x-from",
                        methods: [:get, :post, :delete, :put, :patch, :options, :head],
                        credentials: true
        end
      end

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
