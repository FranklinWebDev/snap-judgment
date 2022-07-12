json.extract! submission, :id, :is_correct, :created_at, :updated_at
json.url submission_url(submission, format: :json)
