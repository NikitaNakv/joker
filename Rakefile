# frozen_string_literal: true

require "bundler/gem_tasks"
require "rspec/core/rake_task"

RSpec::Core::RakeTask.new(:spec)

require "rubocop/rake_task"

RuboCop::RakeTask.new

task default: %i[spec rubocop]

task :setup_log do
  sh "touch /tmp/jokes.txt"
end

task tell_a_joke: ["setup_log"] do
  sh "joker tell -c Any >> /tmp/jokes.txt"
  sh "echo '\n\n**************\n\n' >> /tmp/jokes.txt"
end
