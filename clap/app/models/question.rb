class Question < ActiveRecord::Base

	has_one :answer
	accepts_nested_attributes_for :answer
	belongs_to :section, autosave: true
	accepts_nested_attributes_for	:section

end