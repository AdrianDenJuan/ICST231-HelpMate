class CreateEducInfos < ActiveRecord::Migration[5.0]
  def change
    create_table :educ_infos do |t|
      t.integer :level
      t.integer :yr_grad
      t.string :school_addr
      t.text :recogawards
      t.string :educ_type
      t.integer :pform_id

      t.timestamps
    end
  end
end
