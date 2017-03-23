json.extract! student, :id, :fname, :mi, :lname, :staff_type, :created_at, :updated_at
json.url student_url(student, format: :json)
