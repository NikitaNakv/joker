# frozen_string_literal: true

require "thor"
require "joker"

module Joker
  # defines command line interface
  class CLI < Thor
    desc "tell -c (CATEGORY)",
         "tells something really dumb, availible categories: Any, Programming, Misc, Dark, Pun, Spooky, Christmas"
    method_option :category, aliases: "-c"
    def tell
      puts Joker::Teller.tell(options[:category])
    end

    # TODO: make default category
    # TODO exception handling
  end
end
