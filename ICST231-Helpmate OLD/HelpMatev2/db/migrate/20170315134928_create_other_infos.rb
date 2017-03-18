class CreateOtherInfos < ActiveRecord::Migration[5.0]
  def change
    create_table :other_infos do |t|
      t.text :n_condition
      t.text :condition_temp
      t.string :langugage
      t.string :long_guard
      t.integer :pform_id

      t.timestamps
    end
  end
end
