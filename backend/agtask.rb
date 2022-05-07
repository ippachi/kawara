# frozen_string_literal: true

# typed: strict

require "sinatra/base"

module AGTask
  class WebApp < Sinatra::Base
    get "/" do
      "Hello world!"
    end
  end
end
