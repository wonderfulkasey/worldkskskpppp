class CreateWorlds < ActiveRecord::Migration[6.0]
  def change
     create_table :worlds do |t|
    
      t.string :name
      t.text :description
      t.text :aesthetic
      
      t.integer :user_uid
      
      t.timestamps
    end
  end
end
