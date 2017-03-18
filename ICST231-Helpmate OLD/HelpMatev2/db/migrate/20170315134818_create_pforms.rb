class CreatePforms < ActiveRecord::Migration[5.0]
  def change
    create_table :pforms do |t|
      t.string :fname
      t.string :mi
      t.string :lname
      t.string :coursemajor
      t.integer :student_id
      t.string :year_level
      t.string :photoloc
      t.string :perm_address
      t.string :pres_address
      t.string :contact_no
      t.string :email
      t.date :birth_date
      t.integer :age
      t.string :sex
      t.string :p_of_birth
      t.string :nationality
      t.string :civil_stat
      t.string :admis_type
      t.string :emp_name
      t.string :emp_addr
      t.string :emp_cont_no
      t.integer :yr_w_emp
      t.string :faveplace
      t.string :curr_work
      t.string :posHeld
      t.string :reason4AdNU
      t.string :whoDecide
      t.string :hobbies
      t.string :dateAcccom

      t.timestamps
    end
  end
end
