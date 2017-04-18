require 'test_helper'

class VehicleTest < ActiveSupport::TestCase
  test "valid with all attributes" do
    vehicle = vehicles(:one)
    #check Manufacturer is being validated
    assert vehicle.valid?, "Vehicle was not valid"
  end

  test "invalid manufacturer gives error message" do
    vehicle = vehicles(:one)
    # set manufacturer to nil
    vehicle.manufacturer = nil
    #check that the error /can't be blank/ is triggered when the manufacturer attribute is nil
    vehicle.valid?
    assert_match /can't be blank/, vehicle.errors[:manufacturer].join, "Presence errors not found on vehicle"
  end
end
