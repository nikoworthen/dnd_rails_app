class CreatePlayerCharacters < ActiveRecord::Migration[5.2]
  def change
    create_table :player_characters do |t|
    	t.string :name
    	t.string :class

      t.timestamps
    end
  end
end
