require 'active_record'
require_relative '../lib/card'
require_relative 'spec_helper'
require_relative '../db/connection'


describe Card do
it "has a name" do
  card = Card.new()
  expect(card).to_not be_nil
 end
end
