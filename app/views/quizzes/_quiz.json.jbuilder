json.extract! quiz, :id, :content, :answer, :level_id, :order, :created_at, :updated_at
json.url quiz_url(quiz, format: :json)
