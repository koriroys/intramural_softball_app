class CreatePerformances < ActiveRecord::Migration
  def change
    create_table :performances do |t|
      t.integer :team_id
      t.integer :game_id
      t.string :home_or_away
      t.string :result

      t.timestamps
    end
    
    add_index :performances, [:team_id, :game_id]
  end
end
