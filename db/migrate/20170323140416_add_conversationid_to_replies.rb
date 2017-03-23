class AddConversationidToReplies < ActiveRecord::Migration[5.0]
  def change
    add_column :replies, :conversation_id, :integer
  end
end
