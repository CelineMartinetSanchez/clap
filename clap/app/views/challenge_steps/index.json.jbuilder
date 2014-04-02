json.array!(@challenge_steps) do |challenge_step|
  json.extract! challenge_step, :id, :challenge_id, :question_id, :answerer_id, :chosen_answer
  json.url challenge_step_url(challenge_step, format: :json)
end
