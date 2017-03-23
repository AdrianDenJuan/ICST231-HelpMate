require 'test_helper'

class ContactEmergsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @contact_emerg = contact_emergs(:one)
  end

  test "should get index" do
    get contact_emergs_url
    assert_response :success
  end

  test "should get new" do
    get new_contact_emerg_url
    assert_response :success
  end

  test "should create contact_emerg" do
    assert_difference('ContactEmerg.count') do
      post contact_emergs_url, params: { contact_emerg: { addr: @contact_emerg.addr, contact_no: @contact_emerg.contact_no, email_add: @contact_emerg.email_add, name: @contact_emerg.name, pform_id: @contact_emerg.pform_id, relate: @contact_emerg.relate } }
    end

    assert_redirected_to contact_emerg_url(ContactEmerg.last)
  end

  test "should show contact_emerg" do
    get contact_emerg_url(@contact_emerg)
    assert_response :success
  end

  test "should get edit" do
    get edit_contact_emerg_url(@contact_emerg)
    assert_response :success
  end

  test "should update contact_emerg" do
    patch contact_emerg_url(@contact_emerg), params: { contact_emerg: { addr: @contact_emerg.addr, contact_no: @contact_emerg.contact_no, email_add: @contact_emerg.email_add, name: @contact_emerg.name, pform_id: @contact_emerg.pform_id, relate: @contact_emerg.relate } }
    assert_redirected_to contact_emerg_url(@contact_emerg)
  end

  test "should destroy contact_emerg" do
    assert_difference('ContactEmerg.count', -1) do
      delete contact_emerg_url(@contact_emerg)
    end

    assert_redirected_to contact_emergs_url
  end
end
