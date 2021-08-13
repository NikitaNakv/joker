# frozen_string_literal: true
require 'faraday'
require 'json'
require 'faraday_middleware'
require_relative "joker/version"

module Joker

  class Error < StandardError; end
  # Your code goes here...

  class Teller

    def self.tell
      conn = Faraday.new do |f|
        f.response :json # decode response bodies as JSON
      end
      
      response = conn.get('https://v2.jokeapi.dev/joke/Any', {type: 'single', blacklistFlags: 'nsfw,racist,sexist,explicit'})

      response.body["joke"]
    end
  end
end
