# frozen_string_literal: true
# module Rulers
#   class Error < StandardError; end
#   # Your code goes here...
# end
require "rulers/version"
require 'rulers/array'

module Rulers
  class Application 
    def call(env)
      `echo debug > debug.txt`;
      # prock values are, number http status, {} set/headers, body
      #the body is an array of strings or
      [200, {'Content-Type' => 'text/html'},
       ["Hello from Ruby on Rulersssss!"] ]
    end
  end
end

