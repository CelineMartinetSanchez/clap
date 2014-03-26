class ChangeDataTypeForFieldname < ActiveRecord::Migration
  def change
  	change_table :answers do |t|
  	  t.change :goodanswer, :text
  	  t.change :answertwo, :text
  	  t.change :answerthree, :text
  	end
  end
end
