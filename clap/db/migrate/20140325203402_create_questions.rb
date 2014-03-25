class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.text :name
      t.text :help
      t.references :section

      t.timestamps
    end
  end
end
