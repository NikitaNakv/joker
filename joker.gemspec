# frozen_string_literal: true

require_relative "lib/joker/version"

Gem::Specification.new do |spec|
  spec.name          = "jokerino"
  spec.version       = Joker::VERSION
  spec.authors       = ["NikitaNakv"]
  spec.email         = ["nak-nikita@yandex.ru"]

  spec.summary       = "tells a joke"
  spec.description   = "cli for https://v2.jokeapi.dev/"
  spec.homepage      = "https://github.com/NikitaNakv/joker"
  spec.license       = "MIT"
  spec.required_ruby_version = ">= 2.4.0"

  spec.metadata["allowed_push_host"] = "https://rubygems.org/"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/NikitaNakv/joker"
  spec.metadata["changelog_uri"] = "https://github.com/NikitaNakv/joker/blob/main/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.add_development_dependency "cucumber"
  spec.add_development_dependency "aruba"
  spec.add_dependency "thor"

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
