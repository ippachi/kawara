# frozen_string_literal: true

# typed: strict

module Kawara
  module Gateway
    class GoogleOauth2Client
      extend T::Sig

      sig { void }
      def initialize
        @client = T.let(OAuth2::Client.new(ENV.fetch("GOOGLE_OAUTH2_CLIENT_ID", nil),
                                           ENV.fetch("GOOGLE_OAUTH2_CLIENT_SECRET", nil),
                                           authorize_url: "https://accounts.google.com/o/oauth2/auth",
                                           token_url: "https://oauth2.googleapis.com/token"), OAuth2::Client)
      end

      sig { params(state: String).returns(URI::Generic) }
      def authorize_url(state:)
        URI(@client.authorize_url(redirect_uri: "#{ENV.fetch('CLIENT_BASE_URL', nil)}/auth/google", state:))
      end
    end
  end
end
