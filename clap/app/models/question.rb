class Question < ActiveRecord::Base

	has_one :answer
	accepts_nested_attributes_for :answer
	belongs_to :section, autosave: true
	accepts_nested_attributes_for	:section

	has_many :challenge_steps

	def self.available_questions(user)
		answered_question_ids = ChallengeStep.where(answerer: user).collect {|p| [ p.question_id ] }.flatten.uniq
	  Question.all.where.not(id: answered_question_ids)
	end
end