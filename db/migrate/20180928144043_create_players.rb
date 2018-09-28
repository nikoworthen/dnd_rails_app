class CreatePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|
    	t.string :pname
    	t.string :pclass

      t.timestamps
    end
  end
end
