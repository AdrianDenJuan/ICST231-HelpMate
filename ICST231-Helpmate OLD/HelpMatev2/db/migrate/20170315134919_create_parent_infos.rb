class CreateParentInfos < ActiveRecord::Migration[5.0]
  def change
    create_table :parent_infos do |t|
      t.string :name
      t.string :relate
      t.date :birth_date
      t.integer :age
      t.string :religion
      t.string :nationality
      t.string :present_add
      t.string :contact_no
      t.string :educ_attain
      t.string :occp
      t.string :emp_name
      t.string :emp_addr
      t.string :freqInteract
      t.string :civil_stat
      t.integer :pform_id

      t.timestamps
    end
  end
end
