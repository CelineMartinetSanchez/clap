class Answer < ActiveRecord::Base
	
	belongs_to :question
	validates_inclusion_of :truefalse, :in => [true, false]
end
