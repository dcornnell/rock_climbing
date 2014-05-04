class AddScoreColumnToRoutesTable < ActiveRecord::Migration
  def change
  	add_column :routes, :score, :integer
  end
end
