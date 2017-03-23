json.extract! reply, :id, :reply_message, :conv_id, :created_at, :updated_at
json.url reply_url(reply, format: :json)
