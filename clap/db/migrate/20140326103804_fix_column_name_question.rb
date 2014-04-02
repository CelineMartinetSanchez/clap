class FixColumnNameQuestion < ActiveRecord::Migration
  def change
  	rename_column :questions, :name, :query
  	rename_column :questions, :help, :explanation
  	add_column :questions, :difficulty, :integer
  	add_column :questions, :source_url, :text
  end
end
