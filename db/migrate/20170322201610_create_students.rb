class CreateStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :students do |t|
      t.string :fname
      t.string :mi
      t.string :lname
      t.integer :user_id

      t.timestamps
    end
  end
end
