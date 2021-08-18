# frozen_string_literal: true

# require 'joker'

RSpec.describe Joker do
  it "has a version number" do
    expect(Joker::VERSION).not_to be nil
  end

  it "expecting a joke" do
    joke = Joker::Teller.tell
    expect(joke).to be_kind_of(String)
  end
end
