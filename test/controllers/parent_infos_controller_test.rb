require 'test_helper'

class ParentInfosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @parent_info = parent_infos(:one)
  end

  test "should get index" do
    get parent_infos_url
    assert_response :success
  end

  test "should get new" do
    get new_parent_info_url
    assert_response :success
  end

  test "should create parent_info" do
    assert_difference('ParentInfo.count') do
      post parent_infos_url, params: { parent_info: { age: @parent_info.age, birth_date: @parent_info.birth_date, civil_stat: @parent_info.civil_stat, contact_no: @parent_info.contact_no, educ_attain: @parent_info.educ_attain, emp_addr: @parent_info.emp_addr, emp_name: @parent_info.emp_name, freqInteract: @parent_info.freqInteract, name: @parent_info.name, nationality: @parent_info.nationality, occp: @parent_info.occp, pform_id: @parent_info.pform_id, present_add: @parent_info.present_add, relate: @parent_info.relate, religion: @parent_info.religion } }
    end

    assert_redirected_to parent_info_url(ParentInfo.last)
  end

  test "should show parent_info" do
    get parent_info_url(@parent_info)
    assert_response :success
  end

  test "should get edit" do
    get edit_parent_info_url(@parent_info)
    assert_response :success
  end

  test "should update parent_info" do
    patch parent_info_url(@parent_info), params: { parent_info: { age: @parent_info.age, birth_date: @parent_info.birth_date, civil_stat: @parent_info.civil_stat, contact_no: @parent_info.contact_no, educ_attain: @parent_info.educ_attain, emp_addr: @parent_info.emp_addr, emp_name: @parent_info.emp_name, freqInteract: @parent_info.freqInteract, name: @parent_info.name, nationality: @parent_info.nationality, occp: @parent_info.occp, pform_id: @parent_info.pform_id, present_add: @parent_info.present_add, relate: @parent_info.relate, religion: @parent_info.religion } }
    assert_redirected_to parent_info_url(@parent_info)
  end

  test "should destroy parent_info" do
    assert_difference('ParentInfo.count', -1) do
      delete parent_info_url(@parent_info)
    end

    assert_redirected_to parent_infos_url
  end
end
