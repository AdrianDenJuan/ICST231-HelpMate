require 'test_helper'

class SpousesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @spouse = spouses(:one)
  end

  test "should get index" do
    get spouses_url
    assert_response :success
  end

  test "should get new" do
    get new_spouse_url
    assert_response :success
  end

  test "should create spouse" do
    assert_difference('Spouse.count') do
      post spouses_url, params: { spouse: { emp_addr: @spouse.emp_addr, emp_con_no: @spouse.emp_con_no, emp_name: @spouse.emp_name, name: @spouse.name, occp: @spouse.occp, pform_id: @spouse.pform_id, yrs_married: @spouse.yrs_married } }
    end

    assert_redirected_to spouse_url(Spouse.last)
  end

  test "should show spouse" do
    get spouse_url(@spouse)
    assert_response :success
  end

  test "should get edit" do
    get edit_spouse_url(@spouse)
    assert_response :success
  end

  test "should update spouse" do
    patch spouse_url(@spouse), params: { spouse: { emp_addr: @spouse.emp_addr, emp_con_no: @spouse.emp_con_no, emp_name: @spouse.emp_name, name: @spouse.name, occp: @spouse.occp, pform_id: @spouse.pform_id, yrs_married: @spouse.yrs_married } }
    assert_redirected_to spouse_url(@spouse)
  end

  test "should destroy spouse" do
    assert_difference('Spouse.count', -1) do
      delete spouse_url(@spouse)
    end

    assert_redirected_to spouses_url
  end
end
