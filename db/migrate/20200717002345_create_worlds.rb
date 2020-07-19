class CreateWorlds < ActiveRecord::Migration[6.0]
  def change
     create_table :worlds do |t|
    
      t.string :name
      t.string :description
      t.string :aesthetic
      
      t.integer :creator_id
      
      t.timestamps
    end
  end
end
