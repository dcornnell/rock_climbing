class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
    	t.string :name
    	t.boolean :camping
    	t.string :rock_type
    	t.string :location

      t.timestamps
    end
  end
end
