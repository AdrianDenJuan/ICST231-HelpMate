require 'test_helper'

class CouncilorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @councilor = councilors(:one)
  end

  test "should get index" do
    get councilors_url
    assert_response :success
  end

  test "should get new" do
    get new_councilor_url
    assert_response :success
  end

  test "should create councilor" do
    assert_difference('Councilor.count') do
      post councilors_url, params: { councilor: { department: @councilor.department, fname: @councilor.fname, lname: @councilor.lname, mi: @councilor.mi, user_id: @councilor.user_id } }
    end

    assert_redirected_to councilor_url(Councilor.last)
  end

  test "should show councilor" do
    get councilor_url(@councilor)
    assert_response :success
  end

  test "should get edit" do
    get edit_councilor_url(@councilor)
    assert_response :success
  end

  test "should update councilor" do
    patch councilor_url(@councilor), params: { councilor: { department: @councilor.department, fname: @councilor.fname, lname: @councilor.lname, mi: @councilor.mi, user_id: @councilor.user_id } }
    assert_redirected_to councilor_url(@councilor)
  end

  test "should destroy councilor" do
    assert_difference('Councilor.count', -1) do
      delete councilor_url(@councilor)
    end

    assert_redirected_to councilors_url
  end
end
