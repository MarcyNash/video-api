require 'test_helper'

test "should get all videos" do
  get videos/index
  assert_response :success
end

test "should get all videos with city Chicago" do
  get videos/index :parms => {city: => "Chicago"}
  assert_response :success
end

test "should get all videos with city Los Angeles" do
  get videos/index {city: => "Los%20Angeles"}
  assert_response :success
end

test "should get all videos artist Xoe Wise" do
  get videos/index?artist=Xoe%20Wise
  assert_response :success
end

test "should get all videos artist Diane Canoby" do
  get videos/index?artist=Diane%20Canoby
  assert_response :success
end
