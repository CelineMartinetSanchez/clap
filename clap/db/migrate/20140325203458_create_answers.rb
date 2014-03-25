class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.boolean :truefalse
      t.string :single
      t.integer :number
      t.text :multiplechoice
      t.references :question

      t.timestamps
    end
  end
end
