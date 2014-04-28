class CreateRoutes < ActiveRecord::Migration
  def change
    create_table :routes do |t|
    	t.integer :location_id
    	t.string :name
    	t.string :grade
    	t.string :beta

      t.timestamps
    end
  end
end
