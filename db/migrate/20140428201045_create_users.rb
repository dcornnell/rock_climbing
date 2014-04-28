class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	t.string :name
    	t.string :about
    	t.string :contact
    	t.integer :total_score


      t.timestamps
    end
  end
end
