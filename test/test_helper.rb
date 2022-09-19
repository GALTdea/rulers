$LOAD_PATH.unshift File.expand_path("../lib", __FILE__)
# above line will make sure that rulers is required first, and it requires the local version of rulers
require "rulers"
require 'rack/test'

require 'minitest/autorun'