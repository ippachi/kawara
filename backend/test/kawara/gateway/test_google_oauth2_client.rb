# frozen_string_literal: true

# typed: true

require "test_helper"

module Kawara
  module Gateway
    class TestGoogleOauth2Client < Test::Unit::TestCase
      def setup
        @google_oauth2_client = GoogleOauth2Client.new
      end

      def test_authorize_url
        state = "hogehoge"
        redirect_uri = URI.encode_www_form(redirect_uri: "#{ENV.fetch('CLIENT_BASE_URL', nil)}/auth/google", state:)
        expected = URI("https://accounts.google.com/o/oauth2/auth?#{redirect_uri}")
        assert_equal expected, @google_oauth2_client.authorize_url(state:)
      end
    end
  end
end
