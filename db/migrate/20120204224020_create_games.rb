class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.integer :home_team_id
      t.integer :visiting_team_id
      t.integer :winning_team_id

      t.timestamps
    end
  end
end
