# frozen_string_literal: true

require "faraday"
require "json"
require "faraday_middleware"
require_relative "joker/version"

module Joker
  class Error < StandardError; end

  # requests jokes from service
  class Teller
    def self.tell(category = "Programming")
      conn = Faraday.new do |f|
        f.response :json # decode response bodies as JSON
      end

      url = "https://v2.jokeapi.dev/joke/#{category}"

      response = conn.get(url, { type: "single", blacklistFlags: "nsfw,racist,sexist,explicit" })

      response.body["joke"]
    end
  end
end
