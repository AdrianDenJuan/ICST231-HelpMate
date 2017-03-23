class CreateConversations < ActiveRecord::Migration[5.0]
  def change
    create_table :conversations do |t|
      t.text :conv_topic
      t.datetime :post_date
      t.boolean :conv_status
      t.integer :student_id

      t.timestamps
    end
  end
end
