class CreateSpouses < ActiveRecord::Migration[5.0]
  def change
    create_table :spouses do |t|
      t.string :name
      t.string :occp
      t.integer :yrs_married
      t.string :emp_name
      t.string :emp_addr
      t.string :emp_con_no
      t.integer :pform_id

      t.timestamps
    end
  end
end
