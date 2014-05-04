class AddModifierColumnToTheRoutesTable < ActiveRecord::Migration
  def change
  	add_column :routes, :modifier, :integer
  end
end
