json.extract! pform, :id, :fname, :mi, :lname, :coursemajor, :student_id, :year_level, :photoloc, :perm_address, :pres_address, :contact_no, :email, :birth_date, :age, :sex, :p_of_birth, :nationality, :civil_stat, :admis_type, :emp_name, :emp_addr, :emp_cont_no, :yr_w_emp, :faveplace, :curr_work, :posHeld, :reason4AdNU, :whoDecide, :hobbies, :dateAcccom, :created_at, :updated_at
json.url pform_url(pform, format: :json)