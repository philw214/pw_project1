require 'active_record'
require_relative 'connection'
require_relative '../lib/answer'
require_relative '../lib/card'
require_relative '../lib/category'


Card.destroy_all
Answer.destroy_all
Category.destroy_all
