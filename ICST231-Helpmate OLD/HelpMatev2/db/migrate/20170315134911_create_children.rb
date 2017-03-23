class CreateChildren < ActiveRecord::Migration[5.0]
  def change
    create_table :children do |t|
      t.string :name
      t.date :birth_date
      t.integer :pform_id

      t.timestamps
    end
  end
end
