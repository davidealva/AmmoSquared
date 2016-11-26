require 'test_helper'

class ProfilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @profile = profiles(:one)
  end

  test "should get index" do
    get profiles_url
    assert_response :success
  end

  test "should get new" do
    get new_profile_url
    assert_response :success
  end

  test "should create profile" do
    assert_difference('Profile.count') do
      post profiles_url, params: { profile: { account_credit: @profile.account_credit, city: @profile.city, cust_number: @profile.cust_number, firstname: @profile.firstname, interval: @profile.interval, last_shipment: @profile.last_shipment, lastname: @profile.lastname, lifetime_spent: @profile.lifetime_spent, money_spent: @profile.money_spent, phone_number: @profile.phone_number, restricted: @profile.restricted, shipping_zone: @profile.shipping_zone, start_date: @profile.start_date, state: @profile.state, street1: @profile.street1, street2: @profile.street2, zip: @profile.zip } }
    end

    assert_redirected_to profile_url(Profile.last)
  end

  test "should show profile" do
    get profile_url(@profile)
    assert_response :success
  end

  test "should get edit" do
    get edit_profile_url(@profile)
    assert_response :success
  end

  test "should update profile" do
    patch profile_url(@profile), params: { profile: { account_credit: @profile.account_credit, city: @profile.city, cust_number: @profile.cust_number, firstname: @profile.firstname, interval: @profile.interval, last_shipment: @profile.last_shipment, lastname: @profile.lastname, lifetime_spent: @profile.lifetime_spent, money_spent: @profile.money_spent, phone_number: @profile.phone_number, restricted: @profile.restricted, shipping_zone: @profile.shipping_zone, start_date: @profile.start_date, state: @profile.state, street1: @profile.street1, street2: @profile.street2, zip: @profile.zip } }
    assert_redirected_to profile_url(@profile)
  end

  test "should destroy profile" do
    assert_difference('Profile.count', -1) do
      delete profile_url(@profile)
    end

    assert_redirected_to profiles_url
  end
end
