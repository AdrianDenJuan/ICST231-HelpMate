json.extract! conversation, :id, :conv_topic, :post_date, :conv_status, :student_id, :created_at, :updated_at
json.url conversation_url(conversation, format: :json)
