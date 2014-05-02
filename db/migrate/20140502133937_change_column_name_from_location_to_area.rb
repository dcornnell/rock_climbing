class ChangeColumnNameFromLocationToArea < ActiveRecord::Migration
  def change
  	rename_column :locations, :location, :area
  end
end
