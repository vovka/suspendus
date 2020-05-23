require 'test_helper'

class DonatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @donate = donates(:one)
  end

  test "should get index" do
    get donates_url
    assert_response :success
  end

  test "should get new" do
    get new_donate_url
    assert_response :success
  end

  test "should create donate" do
    assert_difference('Donate.count') do
      post donates_url, params: { donate: {  } }
    end

    assert_redirected_to donate_url(Donate.last)
  end

  test "should show donate" do
    get donate_url(@donate)
    assert_response :success
  end

  test "should get edit" do
    get edit_donate_url(@donate)
    assert_response :success
  end

  test "should update donate" do
    patch donate_url(@donate), params: { donate: {  } }
    assert_redirected_to donate_url(@donate)
  end

  test "should destroy donate" do
    assert_difference('Donate.count', -1) do
      delete donate_url(@donate)
    end

    assert_redirected_to donates_url
  end
end
