class CreatePlayers < ActiveRecord::Migration[6.0]
  def change
    create_table :players do |t|
      t.string :name
      t.text :worlds
      t.text :characters
      t.text :description

      t.timestamps
    end
  end
end
