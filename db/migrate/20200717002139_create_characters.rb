class CreateCharacters < ActiveRecord::Migration[6.0]
  def change
    create_table :characters do |t|

      t.string :name
      t.string :class
      t.string :alignment
      t.string :species
      t.text :description
      
      t.integer :creator_id
      t.integer :world_id

      t.timestamps
    end
  end
end
