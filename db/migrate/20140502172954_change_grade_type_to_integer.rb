class ChangeGradeTypeToInteger < ActiveRecord::Migration
  def change
  	change_column :routes, :grade, :integer
  end
end
