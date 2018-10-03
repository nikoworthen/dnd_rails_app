class CreateCharacterLogs < ActiveRecord::Migration[5.2]
  def change
    create_table :character_logs do |t|
      t.string :dungeon_master
      t.text :events
      t.references :player, foreign_key: true

      t.timestamps
    end
  end
end
