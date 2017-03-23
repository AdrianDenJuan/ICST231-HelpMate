class CreateReplies < ActiveRecord::Migration[5.0]
  def change
    create_table :replies do |t|
      t.text :reply_message
      t.integer :conv_id
      t.integer :councilor_id

      t.timestamps
    end
  end
end
