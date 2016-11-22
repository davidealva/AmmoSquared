require 'test_helper'

class ProfileControllerTest < ActionDispatch::IntegrationTest
  test "should get step2" do
    get profile_step2_url
    assert_response :success
  end

  test "should get step3" do
    get profile_step3_url
    assert_response :success
  end

end
