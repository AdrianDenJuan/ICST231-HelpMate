class CreateSiblings < ActiveRecord::Migration[5.0]
  def change
    create_table :siblings do |t|
      t.string :name
      t.integer :age
      t.string :civil_stat
      t.string :schooloremp
      t.string :yrlvloroccp
      t.integer :pform_id

      t.timestamps
    end
  end
end
