require File.dirname(__FILE__) + '/lib/source_bit.rb'
require "rubygems"
require "yaml"

puts "Best banner is \n #{Source_bit::Calc.new("file_inputs.yml").max_price}"



