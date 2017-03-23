require 'test_helper'

class SiblingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sibling = siblings(:one)
  end

  test "should get index" do
    get siblings_url
    assert_response :success
  end

  test "should get new" do
    get new_sibling_url
    assert_response :success
  end

  test "should create sibling" do
    assert_difference('Sibling.count') do
      post siblings_url, params: { sibling: { age: @sibling.age, civil_stat: @sibling.civil_stat, name: @sibling.name, pform_id: @sibling.pform_id, schooloremp: @sibling.schooloremp, yrlvloroccp: @sibling.yrlvloroccp } }
    end

    assert_redirected_to sibling_url(Sibling.last)
  end

  test "should show sibling" do
    get sibling_url(@sibling)
    assert_response :success
  end

  test "should get edit" do
    get edit_sibling_url(@sibling)
    assert_response :success
  end

  test "should update sibling" do
    patch sibling_url(@sibling), params: { sibling: { age: @sibling.age, civil_stat: @sibling.civil_stat, name: @sibling.name, pform_id: @sibling.pform_id, schooloremp: @sibling.schooloremp, yrlvloroccp: @sibling.yrlvloroccp } }
    assert_redirected_to sibling_url(@sibling)
  end

  test "should destroy sibling" do
    assert_difference('Sibling.count', -1) do
      delete sibling_url(@sibling)
    end

    assert_redirected_to siblings_url
  end
end
