class FixColumnName < ActiveRecord::Migration
  def change
  	rename_column :answers, :truefalse, :goodanswer
  	rename_column :answers, :single, :answertwo
  	rename_column :answers, :number, :answerthree
  end
end
