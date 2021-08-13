# frozen_string_literal: true
require 'thor'
require 'joker'

module Joker
  class CLI < Thor
    
    desc "tell (JOKE)", "tells something really dumb"
    def tell
      puts Joker::Teller.tell
    end  

  end
end
