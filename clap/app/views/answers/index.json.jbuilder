json.array!(@answers) do |answer|
  json.extract! answer, :id, :truefalse, :single, :number, :multiplechoice
  json.url answer_url(answer, format: :json)
end
