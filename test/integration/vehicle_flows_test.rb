require 'test_helper'

class VehicleFlowsTest < ActionDispatch::IntegrationTest

  test "returns list of all vehicles" do
    # malke a request to the /vehicles URI
    get '/vehicles'
    # the 200 status code means the request has succesed
    assert_equal 200, response.status, "The request should return status code 200"
    # 200 response should include the resource in the response body
    refute_empty response.body, "response.body should not be emplty"
  end

  # test "returns one vehicle" do
  #   # malke a request to the /vehicles/:id URI
  #   get '/vehicles/1'
  #   # the 200 status code means the request has succesed
  #   assert_equal 200, response.status, "The request should return status code 200"
  # end
end
