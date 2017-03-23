require 'test_helper'

class OtherInfosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @other_info = other_infos(:one)
  end

  test "should get index" do
    get other_infos_url
    assert_response :success
  end

  test "should get new" do
    get new_other_info_url
    assert_response :success
  end

  test "should create other_info" do
    assert_difference('OtherInfo.count') do
      post other_infos_url, params: { other_info: { condition_temp: @other_info.condition_temp, langugage: @other_info.langugage, long_guard: @other_info.long_guard, n_condition: @other_info.n_condition, pform_id: @other_info.pform_id } }
    end

    assert_redirected_to other_info_url(OtherInfo.last)
  end

  test "should show other_info" do
    get other_info_url(@other_info)
    assert_response :success
  end

  test "should get edit" do
    get edit_other_info_url(@other_info)
    assert_response :success
  end

  test "should update other_info" do
    patch other_info_url(@other_info), params: { other_info: { condition_temp: @other_info.condition_temp, langugage: @other_info.langugage, long_guard: @other_info.long_guard, n_condition: @other_info.n_condition, pform_id: @other_info.pform_id } }
    assert_redirected_to other_info_url(@other_info)
  end

  test "should destroy other_info" do
    assert_difference('OtherInfo.count', -1) do
      delete other_info_url(@other_info)
    end

    assert_redirected_to other_infos_url
  end
end
