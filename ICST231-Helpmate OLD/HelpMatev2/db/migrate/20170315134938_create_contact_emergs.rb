class CreateContactEmergs < ActiveRecord::Migration[5.0]
  def change
    create_table :contact_emergs do |t|
      t.string :name
      t.string :relate
      t.string :addr
      t.string :contact_no
      t.string :email_add
      t.integer :pform_id

      t.timestamps
    end
  end
end
