require_relative "test_helper"

class TestApp < Rulers::Application
  # creates a new Class Test App, which inherits from Rulers::Application. on lib/rulers/rule.rb rulers module class Application
end 

class RulersAppTest < Minitest::Test
  # cretes a new class that inherits from the Minitest::Test
  include Rack::Test::Methods

  def app
    TestApp.new
  end

  def test_request
    get "/"

    assert last_response.ok?
    body = last_response.body
    assert body["Hello"]
  end

  def test_deepl_empty
    assert([].deeply_empty?)
    assert(['','',''].deeply_empty?)
    refute(['','','', ['',['']]].deeply_empty?)
  end

end