require 'test_helper'

class EducInfosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @educ_info = educ_infos(:one)
  end

  test "should get index" do
    get educ_infos_url
    assert_response :success
  end

  test "should get new" do
    get new_educ_info_url
    assert_response :success
  end

  test "should create educ_info" do
    assert_difference('EducInfo.count') do
      post educ_infos_url, params: { educ_info: { educ_type: @educ_info.educ_type, level: @educ_info.level, pform_id: @educ_info.pform_id, recogawards: @educ_info.recogawards, school_addr: @educ_info.school_addr, yr_grad: @educ_info.yr_grad } }
    end

    assert_redirected_to educ_info_url(EducInfo.last)
  end

  test "should show educ_info" do
    get educ_info_url(@educ_info)
    assert_response :success
  end

  test "should get edit" do
    get edit_educ_info_url(@educ_info)
    assert_response :success
  end

  test "should update educ_info" do
    patch educ_info_url(@educ_info), params: { educ_info: { educ_type: @educ_info.educ_type, level: @educ_info.level, pform_id: @educ_info.pform_id, recogawards: @educ_info.recogawards, school_addr: @educ_info.school_addr, yr_grad: @educ_info.yr_grad } }
    assert_redirected_to educ_info_url(@educ_info)
  end

  test "should destroy educ_info" do
    assert_difference('EducInfo.count', -1) do
      delete educ_info_url(@educ_info)
    end

    assert_redirected_to educ_infos_url
  end
end
