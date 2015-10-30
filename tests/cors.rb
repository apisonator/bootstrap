require 'test/unit'

require 'pry'
require 'httparty'

class CorsTest < Test::Unit::TestCase

  def setup
    @endpoint = ENV["ENDPOINT"]
  end

  test "wildcard for cors" do
    response = HTTParty.get("#{@endpoint}/hello")
    assert_equal "*", response.headers["access-control-allow-origin"]
  end
end
