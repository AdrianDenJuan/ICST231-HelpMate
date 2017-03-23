class CreateCouncilors < ActiveRecord::Migration[5.0]
  def change
    create_table :councilors do |t|
      t.string :fname
      t.string :mi
      t.string :lname
      t.string :department
      t.integer :user_id

      t.timestamps
    end
  end
end
