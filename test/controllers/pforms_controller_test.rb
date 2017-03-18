require 'test_helper'

class PformsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pform = pforms(:one)
  end

  test "should get index" do
    get pforms_url
    assert_response :success
  end

  test "should get new" do
    get new_pform_url
    assert_response :success
  end

  test "should create pform" do
    assert_difference('Pform.count') do
      post pforms_url, params: { pform: { admis_type: @pform.admis_type, age: @pform.age, birth_date: @pform.birth_date, civil_stat: @pform.civil_stat, contact_no: @pform.contact_no, coursemajor: @pform.coursemajor, curr_work: @pform.curr_work, dateAcccom: @pform.dateAcccom, email: @pform.email, emp_addr: @pform.emp_addr, emp_cont_no: @pform.emp_cont_no, emp_name: @pform.emp_name, faveplace: @pform.faveplace, fname: @pform.fname, hobbies: @pform.hobbies, lname: @pform.lname, mi: @pform.mi, nationality: @pform.nationality, p_of_birth: @pform.p_of_birth, perm_address: @pform.perm_address, photoloc: @pform.photoloc, posHeld: @pform.posHeld, pres_address: @pform.pres_address, reason4AdNU: @pform.reason4AdNU, sex: @pform.sex, student_id: @pform.student_id, whoDecide: @pform.whoDecide, year_level: @pform.year_level, yr_w_emp: @pform.yr_w_emp } }
    end

    assert_redirected_to pform_url(Pform.last)
  end

  test "should show pform" do
    get pform_url(@pform)
    assert_response :success
  end

  test "should get edit" do
    get edit_pform_url(@pform)
    assert_response :success
  end

  test "should update pform" do
    patch pform_url(@pform), params: { pform: { admis_type: @pform.admis_type, age: @pform.age, birth_date: @pform.birth_date, civil_stat: @pform.civil_stat, contact_no: @pform.contact_no, coursemajor: @pform.coursemajor, curr_work: @pform.curr_work, dateAcccom: @pform.dateAcccom, email: @pform.email, emp_addr: @pform.emp_addr, emp_cont_no: @pform.emp_cont_no, emp_name: @pform.emp_name, faveplace: @pform.faveplace, fname: @pform.fname, hobbies: @pform.hobbies, lname: @pform.lname, mi: @pform.mi, nationality: @pform.nationality, p_of_birth: @pform.p_of_birth, perm_address: @pform.perm_address, photoloc: @pform.photoloc, posHeld: @pform.posHeld, pres_address: @pform.pres_address, reason4AdNU: @pform.reason4AdNU, sex: @pform.sex, student_id: @pform.student_id, whoDecide: @pform.whoDecide, year_level: @pform.year_level, yr_w_emp: @pform.yr_w_emp } }
    assert_redirected_to pform_url(@pform)
  end

  test "should destroy pform" do
    assert_difference('Pform.count', -1) do
      delete pform_url(@pform)
    end

    assert_redirected_to pforms_url
  end
end
