# frozen_string_literal: true

# typed: true

require_relative "../../config/environment"
require "test_helper"
require "rack/test"

class TestAuth < Test::Unit::TestCase
  include Rack::Test::Methods
  include Committee::Test::Methods

  def app
    Kawara::Web::Application
  end

  def committee_options
    @committee_options ||= Kawara::Web::Application::COMMITTEE_OPTIONS
  end

  def request_object
    last_request
  end

  def response_data
    [last_response.status, last_response.headers, last_response.body]
  end

  def test_get_google_authorize_url
    get "/auth/google/authorize_url"
    assert_schema_conform(200)
    url = URI(JSON.parse(last_response.body)["authorize_url"])
    redirect_uri = URI.encode_www_form(
      redirect_uri: "#{ENV.fetch('CLIENT_BASE_URL', nil)}/auth/google",
      state: last_request.session[:state]
    )
    expected = URI("https://accounts.google.com/o/oauth2/auth?#{redirect_uri}")
    assert_equal expected, url
  end
end
