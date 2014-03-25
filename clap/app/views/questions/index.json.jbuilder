json.array!(@questions) do |question|
  json.extract! question, :id, :name, :help
  json.url question_url(question, format: :json)
end
