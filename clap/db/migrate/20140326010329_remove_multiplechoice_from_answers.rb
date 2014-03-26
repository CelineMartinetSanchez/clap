class RemoveMultiplechoiceFromAnswers < ActiveRecord::Migration
  def change
    remove_column :answers, :multiplechoice, :text
  end
end
